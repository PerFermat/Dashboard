#!/bin/bash
# Erzeugt das Turnier-Dashboard (HTML) aus turnier.json und dashboard.template.html
# Aufruf: ./erstelle-dashboard.sh [turnier.json]

set -euo pipefail
cd "$(dirname "$0")"

CONFIG_JSON="${1:-turnier.json}"
TEMPLATE="dashboard.template.html"

command -v jq >/dev/null   || { echo "❌ jq fehlt (sudo apt install jq)"; exit 1; }
command -v perl >/dev/null || { echo "❌ perl fehlt"; exit 1; }

# =================== FIXE WERTE (gelten für jedes Turnier) ===================
HOST="https://www.meinturnierplan.de"
FINALE_GR=90   # gr-Nummer der Finalrunde bei meinturnierplan.de
IFRAME_BREITE=400  # Fallback-Größe der Iframes; die Seite passt sie selbst an den Platz an
IFRAME_HOEHE=300
STYLE_COMMON='s[size]=14&s[sizeheader]=14&s[color]=000000&s[maincolor]=173f75&s[padding]=2&s[innerpadding]=5&s[bgcolor]=00000000'
STYLE_BORDER='s[bcolor]=bbbbbb&s[bsizeh]=1&s[bsizev]=1&s[bsizeoh]=1&s[bsizeov]=1&s[bbcolor]=bbbbbb&s[bbsize]=2&s[bgeven]=f0f8ffb0&s[bgodd]=ffffffb0&s[bgover]=eeeeffb0&s[bghead]=eeeeffff'
TABLE_PARAMS="bm&sbr&${STYLE_COMMON}&s[logosize]=20&${STYLE_BORDER}&s[wrap]=false"
MATCH_PARAMS="&sbr&${STYLE_COMMON}&${STYLE_BORDER}&s[ehrsize]=10&s[ehrtop]=9&s[ehrbottom]=3&s[wrap]=false"
# =============================================================================

OUTPUT_HTML=$(jq -r '.turnier.ausgabe' "$CONFIG_JSON")

# Eine Zeile pro Iframe: <links|rechts> <tabelle|spiele> <id> <gr> <gruppenanzeige>
# Reihenfolge = Anzeigereihenfolge. Links: Tabellen je Gruppe. Rechts: Spielplan je Gruppe, danach Finale.
ROWS=$(jq -r --argjson fgr "$FINALE_GR" '
  def buchstabe: [64 + .] | implode;
  .kategorien[] as $k
  | $k.gruppen as $g
  | ( $g[] | ["links",  "tabelle", $k.id, .gr, $k.gruppenanzeige] ),
    ( $g[] | ["rechts", "spiele",  $k.id, .gr, $k.gruppenanzeige] ),
    ( if ($k.finale // false) then ["rechts", "spiele", $k.id, $fgr, $k.gruppenanzeige] else empty end )
  | @tsv' "$CONFIG_JSON")

iframe() { # typ id gr gruppenanzeige
  local typ=$1 id=$2 gr=$3 sg=$4 w=$IFRAME_BREITE h=$IFRAME_HOEHE page params widget
  if [ "$typ" = tabelle ]; then
    page=displayTable; widget=widgetTable; params="$TABLE_PARAMS"
  else
    page=displayMatches; widget=widgetMatches
    params="bm&se$([ "$sg" = true ] && echo '&sg')&sp${MATCH_PARAMS}"
  fi
  printf '<iframe id="%s" src="%s/%s.php?id=%s&gr=%s&%s" style="overflow:hidden;" allowtransparency="true" frameborder="0" width="%s" height="%s" ><p>Dein Browser kann das Turnierwidget leider nicht darstellen. <a href="%s/showit.php?id=%s">Hier geht es zum Turnier.</a></p></iframe>\n' \
    "$widget" "$HOST" "$page" "$id" "$gr" "$params" "$w" "$h" "$HOST" "$id"
}

LEFT=""; RIGHT=""
while IFS=$'\t' read -r seite typ id gr sg; do
  html="    $(iframe "$typ" "$id" "$gr" "$sg")"
  if [ "$seite" = links ]; then LEFT+="$html"$'\n'; else RIGHT+="$html"$'\n'; fi
done <<< "$ROWS"

# JS-Konfiguration: Titel, Seitenwechsel, Blöcke (links), Overlay-Zuordnung (rechte Seite -> linke Tabelle)
JS_CONFIG=$(jq -c '
  def buchstabe: [64 + .] | implode;
  (.zeiten.wechsel_sekunden * 1000) as $ms
  | [ .kategorien[] | . as $k | $k.gruppen as $g
      | { name: $k.name, n: ($g | length), finale: ($k.finale // false),
          namen: ($g | map(.name // (.gr | buchstabe))) } ] as $kat
  | { titel: .turnier.titel,
      rightInterval: $ms,
      reloadInterval: (.zeiten.reload_sekunden * 1000),
      leftTitles: [ $kat[] | (if .n > 1 then "Tabellen " else "Tabelle " end) + .name ],
      rightTitles: [ $kat[] | .name as $n | (.namen[] | "Spielplan \($n) – Gruppe \(.)"), (if .finale then "Finalspiele \($n)" else empty end) ],
      rightTableIndex: ( reduce $kat[] as $k ({off: 0, l: []};
          .off as $o
          | .l += [ range(0; $k.n) | . + $o ] + (if $k.finale then [null] else [] end)
          | .off += $k.n ) | .l ),
      blocks: ( reduce $kat[] as $k ({from: 0, l: []};
          .from as $f
          | .l += [{ from: $f, to: ($f + $k.n - 1),
                     duration: (($k.n + (if $k.finale then 1 else 0 end)) * $ms),
                     groups: $k.namen }]
          | .from += $k.n ) | .l ) }
' "$CONFIG_JSON")

export LEFT RIGHT JS_CONFIG
export TITEL; TITEL=$(jq -r '.turnier.titel' "$CONFIG_JSON")
export BG;    BG=$(jq -r '.turnier.hintergrundbild' "$CONFIG_JSON")

perl -0777 -pe '
  s/__LINKE_IFRAMES__\n/$ENV{LEFT}/;
  s/__RECHTE_IFRAMES__\n/$ENV{RIGHT}/;
  s/__CONFIG__/$ENV{JS_CONFIG}/;
  s/__TITEL__/$ENV{TITEL}/;
  s/__HINTERGRUNDBILD__/$ENV{BG}/;
' "$TEMPLATE" > "$OUTPUT_HTML"

echo "✅ Dashboard generiert: $OUTPUT_HTML"
