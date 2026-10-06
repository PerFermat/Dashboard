# Turnier-Dashboard

Erzeugt aus einer einfachen JSON-Datei eine HTML-Seite für den Bildschirm beim Turnier. Sie zeigt
die Tabellen und Spielpläne von [meinturnierplan.de](https://www.meinturnierplan.de) im Wechsel an:

- **Links** die Tabellen, blockweise pro Kategorie (z. B. Mixed, Damen, Herren). Die aktuelle Gruppe ist mit einem goldenen Streifen markiert, die anderen sind blasser.
- **Rechts** der Spielplan je Gruppe, danach die Finalspiele. Der Wechsel erfolgt automatisch.
- Oben Titel und Uhrzeit mit "Aktualisiert HH:MM". Bleiben die Daten aus oder fehlt die Verbindung, wird der Hinweis rot und unten erscheint ein Banner.
- Unten läuft ein dezenter Fortschrittsbalken bis zum nächsten Wechsel.

## Dateien

| Datei | Zweck |
|---|---|
| `turnier.json` | Die Konfiguration. **Nur diese Datei musst du für ein neues Turnier anpassen.** |
| `erstelle-dashboard.sh` | Erzeugt die HTML-Datei aus `turnier.json` und dem Template. |
| `dashboard.template.html` | Layout, Stil und Ablauf der Seite (Platzhalter für Iframes und Konfiguration). |
| `Jedermannturnier.html` | Die erzeugte Seite (Ausgabe, wird bei jedem Lauf überschrieben). |

## Benutzung

Voraussetzungen: `bash`, `jq` und `perl` (unter Debian/Ubuntu: `sudo apt install jq`).

```bash
./erstelle-dashboard.sh              # nutzt turnier.json
./erstelle-dashboard.sh andere.json  # andere Konfigurationsdatei
```

Danach die erzeugte HTML-Datei im Browser öffnen (am besten im Vollbild, F11).

## turnier.json

```json
{
  "turnier": {
    "titel": "TSGV Hattenhofen - Jedermannturnier",
    "hintergrundbild": "https://…/schlaeger.jpg",
    "ausgabe": "Jedermannturnier.html"
  },
  "zeiten": {
    "wechsel_sekunden": 20,
    "reload_sekunden": 180
  },
  "kategorien": [
    {
      "name": "Mixed",
      "id": 1736268055,
      "finale": true,
      "gruppen": [
        { "gr": 1 },
        { "gr": 2 }
      ]
    }
  ]
}
```

| Feld | Bedeutung |
|---|---|
| `turnier.titel` | Titel oben auf der Seite und im Browser-Tab. |
| `turnier.hintergrundbild` | URL des Hintergrundbilds. |
| `turnier.ausgabe` | Name der erzeugten HTML-Datei. |
| `zeiten.wechsel_sekunden` | Wie lange der Spielplan rechts jeweils sichtbar ist. Die Tabellen links bleiben pro Kategorie so lange, wie rechts alle ihre Seiten durchlaufen. |
| `zeiten.reload_sekunden` | Wie oft alle Widgets neu geladen werden. |
| `kategorien[].name` | Name der Kategorie, erscheint in den Titeln ("Tabellen Mixed", "Spielplan Mixed – Gruppe A"). |
| `kategorien[].id` | Turnier-ID bei meinturnierplan.de (der Wert `id=…` in der Widget-URL). |
| `kategorien[].finale` | `true`, wenn es eine Finalrunde gibt. Dann erscheint nach den Gruppen eine Seite "Finalspiele". Feld weglassen, wenn nicht. |
| `kategorien[].gruppen[].gr` | Gruppennummer (`gr=1` in der Widget-URL). Der Name A, B, C ergibt sich daraus. |
| `kategorien[].gruppen[].name` | Optional: eigener Gruppenname statt A, B, C. |

Die Reihenfolge in der Datei ist die Reihenfolge auf dem Bildschirm. Mehr Gruppen oder Kategorien trägst
du einfach ein, weniger löschst du.

### Was automatisch passiert

- Titel wie "Tabellen Mixed" (mehrere Gruppen) oder "Tabelle Damen" (eine Gruppe).
- Dauer der Tabellen-Blöcke: Anzahl der Spielplan-Seiten der Kategorie (Gruppen plus Finale) mal `wechsel_sekunden`.
- Die Gruppe im Spielplan wird angezeigt, wenn die Kategorie mehrere Gruppen hat.
- Die Größe der Tabellen und Spielpläne passt sich dem Bildschirm an, es gibt keine Breiten- oder Höhenangaben.

## Fixe Werte im Skript

Diese Werte gelten für jedes Turnier und stehen am Anfang von `erstelle-dashboard.sh`:
Widget-Host, Gruppennummer der Finalrunde (`gr=90`) und die Styling-Parameter der Widgets
(Farben, Rahmen, Schriftgrößen). Das Aussehen der Seite selbst (Farben, Abstände, Schrift, Deckkraft der
nicht aktuellen Tabellen) steht in `dashboard.template.html`.

## Hinweis

Die Zeile "Ganzes Turnier anzeigen" unter den Widgets kommt von meinturnierplan.de. Es gibt keinen
Parameter, um sie auszublenden.
