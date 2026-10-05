#!/bin/bash

INPUT_HTML="Jedermannturnier.template.html"
OUTPUT_HTML="Jedermannturnier.html"

# =================== DEFINE IFRAME BLOCKS ===================
# Seite 1, Spalte 1
# Mixed
#A
export IFRAME1='<iframe id="widgetTable" src="https://www.meinturnierplan.de/displayTable.php?id=1736268055&gr=1&bm&sbr&s[size]=14&s[sizeheader]=14&s[color]=000000&s[maincolor]=173f75&s[padding]=2&s[innerpadding]=5&s[bgcolor]=00000000&s[logosize]=20&s[bcolor]=bbbbbb&s[bsizeh]=1&s[bsizev]=1&s[bsizeoh]=1&s[bsizeov]=1&s[bbcolor]=bbbbbb&s[bbsize]=2&s[bgeven]=f0f8ffb0&s[bgodd]=ffffffb0&s[bgover]=eeeeffb0&s[bghead]=eeeeffff&s[wrap]=false" style="overflow:hidden;" allowtransparency="true" frameborder="0" width="375" height="189" ><p>Dein Browser kann das Turnierwidget leider nicht darstellen. <a href="https://www.meinturnierplan.de/showit.php?id=1736268055">Hier geht es zum Turnier.</a></p></iframe>'
export IFRAME2='<iframe id="widgetMatches" src="https://www.meinturnierplan.de/displayMatches.php?id=1736268055&gr=1&bm&se&sg&sp&sbr&s[size]=14&s[sizeheader]=14&s[color]=000000&s[maincolor]=173f75&s[padding]=2&s[innerpadding]=5&s[bgcolor]=00000000&s[bcolor]=bbbbbb&s[bsizeh]=1&s[bsizev]=1&s[bsizeoh]=1&s[bsizeov]=1&s[bbcolor]=bbbbbb&s[bbsize]=2&s[bgeven]=f0f8ffb0&s[bgodd]=ffffffb0&s[bgover]=eeeeffb0&s[bghead]=eeeeffff&s[ehrsize]=10&s[ehrtop]=9&s[ehrbottom]=3&s[wrap]=false" style="overflow:hidden;" allowtransparency="true" frameborder="0" width="502" height="414" ><p>Dein Browser kann das Turnierwidget leider nicht darstellen. <a href="https://www.meinturnierplan.de/showit.php?id=1736268055">Hier geht es zum Turnier.</a></p></iframe>'

#B

export IFRAME3='<iframe id="widgetTable" src="https://www.meinturnierplan.de/displayTable.php?id=1736268055&gr=2&bm&sbr&s[size]=14&s[sizeheader]=14&s[color]=000000&s[maincolor]=173f75&s[padding]=2&s[innerpadding]=5&s[bgcolor]=00000000&s[logosize]=20&s[bcolor]=bbbbbb&s[bsizeh]=1&s[bsizev]=1&s[bsizeoh]=1&s[bsizeov]=1&s[bbcolor]=bbbbbb&s[bbsize]=2&s[bgeven]=f0f8ffb0&s[bgodd]=ffffffb0&s[bgover]=eeeeffb0&s[bghead]=eeeeffff&s[wrap]=false" style="overflow:hidden;" allowtransparency="true" frameborder="0" width="355" height="189" ><p>Dein Browser kann das Turnierwidget leider nicht darstellen. <a href="https://www.meinturnierplan.de/showit.php?id=1736268055">Hier geht es zum Turnier.</a></p></iframe>'
export IFRAME4='<iframe id="widgetMatches" src="https://www.meinturnierplan.de/displayMatches.php?id=1736268055&gr=2&bm&se&sg&sp&sbr&s[size]=14&s[sizeheader]=14&s[color]=000000&s[maincolor]=173f75&s[padding]=2&s[innerpadding]=5&s[bgcolor]=00000000&s[bcolor]=bbbbbb&s[bsizeh]=1&s[bsizev]=1&s[bsizeoh]=1&s[bsizeov]=1&s[bbcolor]=bbbbbb&s[bbsize]=2&s[bgeven]=f0f8ffb0&s[bgodd]=ffffffb0&s[bgover]=eeeeffb0&s[bghead]=eeeeffff&s[ehrsize]=10&s[ehrtop]=9&s[ehrbottom]=3&s[wrap]=false" style="overflow:hidden;" allowtransparency="true" frameborder="0" width="461" height="414" ><p>Dein Browser kann das Turnierwidget leider nicht darstellen. <a href="https://www.meinturnierplan.de/showit.php?id=1736268055">Hier geht es zum Turnier.</a></p></iframe>'

#C

#export IFRAME5='<iframe id="widgetTable" src="https://www.meinturnierplan.de/displayTable.php?id=1736268055&gr=3&bm&sbr&s[size]=14&s[sizeheader]=14&s[color]=000000&s[maincolor]=173f75&s[padding]=2&s[innerpadding]=5&s[bgcolor]=00000000&s[logosize]=20&s[bcolor]=bbbbbb&s[bsizeh]=1&s[bsizev]=1&s[bsizeoh]=1&s[bsizeov]=1&s[bbcolor]=bbbbbb&s[bbsize]=2&s[bgeven]=f0f8ffb0&s[bgodd]=ffffffb0&s[bgover]=eeeeffb0&s[bghead]=eeeeffff&s[wrap]=false" style="overflow:hidden;" allowtransparency="true" frameborder="0" width="343" height="164" ><p>Dein Browser kann das Turnierwidget leider nicht darstellen. <a href="https://www.meinturnierplan.de/showit.php?id=1736268055">Hier geht es zum Turnier.</a></p></iframe>'
#export IFRAME6='<iframe id="widgetMatches" src="https://www.meinturnierplan.de/displayMatches.php?id=1736268055&gr=3&bm&se&sg&sp&sbr&s[size]=14&s[sizeheader]=14&s[color]=000000&s[maincolor]=173f75&s[padding]=2&s[innerpadding]=5&s[bgcolor]=00000000&s[bcolor]=bbbbbb&s[bsizeh]=1&s[bsizev]=1&s[bsizeoh]=1&s[bsizeov]=1&s[bbcolor]=bbbbbb&s[bbsize]=2&s[bgeven]=f0f8ffb0&s[bgodd]=ffffffb0&s[bgover]=eeeeffb0&s[bghead]=eeeeffff&s[ehrsize]=10&s[ehrtop]=9&s[ehrbottom]=3&s[wrap]=false" style="overflow:hidden;" allowtransparency="true" frameborder="0" width="438" height="289" ><p>Dein Browser kann das Turnierwidget leider nicht darstellen. <a href="https://www.meinturnierplan.de/showit.php?id=1736268055">Hier geht es zum Turnier.</a></p></iframe>'

#Final
export IFRAME7='<iframe id="widgetTable" src="https://www.meinturnierplan.de/displayTable.php?id=1736268055&gr=90&bm&sbr&s[size]=14&s[sizeheader]=14&s[color]=000000&s[maincolor]=173f75&s[padding]=2&s[innerpadding]=5&s[bgcolor]=00000000&s[logosize]=20&s[bcolor]=bbbbbb&s[bsizeh]=1&s[bsizev]=1&s[bsizeoh]=1&s[bsizeov]=1&s[bbcolor]=bbbbbb&s[bbsize]=2&s[bgeven]=f0f8ffb0&s[bgodd]=ffffffb0&s[bgover]=eeeeffb0&s[bghead]=eeeeffff&s[wrap]=false" style="overflow:hidden;" allowtransparency="true" frameborder="0" width="146" height="139" ><p>Dein Browser kann das Turnierwidget leider nicht darstellen. <a href="https://www.meinturnierplan.de/showit.php?id=1736268055">Hier geht es zum Turnier.</a></p></iframe>'
export IFRAME8='<iframe id="widgetMatches" src="https://www.meinturnierplan.de/displayMatches.php?id=1736268055&gr=90&bm&se&sg&sp&sbr&s[size]=14&s[sizeheader]=14&s[color]=000000&s[maincolor]=173f75&s[padding]=2&s[innerpadding]=5&s[bgcolor]=00000000&s[bcolor]=bbbbbb&s[bsizeh]=1&s[bsizev]=1&s[bsizeoh]=1&s[bsizeov]=1&s[bbcolor]=bbbbbb&s[bbsize]=2&s[bgeven]=f0f8ffb0&s[bgodd]=ffffffb0&s[bgover]=eeeeffb0&s[bghead]=eeeeffff&s[ehrsize]=10&s[ehrtop]=9&s[ehrbottom]=3&s[wrap]=false" style="overflow:hidden;" allowtransparency="true" frameborder="0" width="386" height="551" ><p>Dein Browser kann das Turnierwidget leider nicht darstellen. <a href="https://www.meinturnierplan.de/showit.php?id=1736268055">Hier geht es zum Turnier.</a></p></iframe>'

# =================== Seite 2 ===================
# Damen

export IFRAME9='<iframe id="widgetTable" src="https://www.meinturnierplan.de/displayTable.php?id=1736013713&gr=1&bm&sbr&s[size]=14&s[sizeheader]=14&s[color]=000000&s[maincolor]=173f75&s[padding]=2&s[innerpadding]=5&s[bgcolor]=00000000&s[logosize]=20&s[bcolor]=bbbbbb&s[bsizeh]=1&s[bsizev]=1&s[bsizeoh]=1&s[bsizeov]=1&s[bbcolor]=bbbbbb&s[bbsize]=2&s[bgeven]=f0f8ffb0&s[bgodd]=ffffffb0&s[bgover]=eeeeffb0&s[bghead]=eeeeffff&s[wrap]=false" style="overflow:hidden;" allowtransparency="true" frameborder="0" width="387" height="239" ><p>Dein Browser kann das Turnierwidget leider nicht darstellen. <a href="https://www.meinturnierplan.de/showit.php?id=1736013713">Hier geht es zum Turnier.</a></p></iframe>'
export IFRAME10='<iframe id="widgetMatches" src="https://www.meinturnierplan.de/displayMatches.php?id=1736013713&gr=1&bm&se&sp&sbr&s[size]=14&s[sizeheader]=14&s[color]=000000&s[maincolor]=173f75&s[padding]=2&s[innerpadding]=5&s[bgcolor]=00000000&s[bcolor]=bbbbbb&s[bsizeh]=1&s[bsizev]=1&s[bsizeoh]=1&s[bsizeov]=1&s[bbcolor]=bbbbbb&s[bbsize]=2&s[bgeven]=f0f8ffb0&s[bgodd]=ffffffb0&s[bgover]=eeeeffb0&s[bghead]=eeeeffff&s[ehrsize]=10&s[ehrtop]=9&s[ehrbottom]=3&s[wrap]=false" style="overflow:hidden;" allowtransparency="true" frameborder="0" width="518" height="739" ><p>Dein Browser kann das Turnierwidget leider nicht darstellen. <a href="https://www.meinturnierplan.de/showit.php?id=1736013713">Hier geht es zum Turnier.</a></p></iframe>'


export IFRAME11='<iframe id="widgetTable" src="https://www.meinturnierplan.de/displayTable.php?id=1736013713&gr=90&bm&sbr&s[size]=14&s[sizeheader]=14&s[color]=000000&s[maincolor]=173f75&s[padding]=2&s[innerpadding]=5&s[bgcolor]=00000000&s[logosize]=20&s[bcolor]=bbbbbb&s[bsizeh]=1&s[bsizev]=1&s[bsizeoh]=1&s[bsizeov]=1&s[bbcolor]=bbbbbb&s[bbsize]=2&s[bgeven]=f0f8ffb0&s[bgodd]=ffffffb0&s[bgover]=eeeeffb0&s[bghead]=eeeeffff&s[wrap]=false" style="overflow:hidden;" allowtransparency="true" frameborder="0" width="146" height="139" ><p>Dein Browser kann das Turnierwidget leider nicht darstellen. <a href="https://www.meinturnierplan.de/showit.php?id=1736013713">Hier geht es zum Turnier.</a></p></iframe>'
export IFRAME12='<iframe id="widgetMatches" src="https://www.meinturnierplan.de/displayMatches.php?id=1736013713&gr=90&bm&se&sp&sbr&s[size]=14&s[sizeheader]=14&s[color]=000000&s[maincolor]=173f75&s[padding]=2&s[innerpadding]=5&s[bgcolor]=00000000&s[bcolor]=bbbbbb&s[bsizeh]=1&s[bsizev]=1&s[bsizeoh]=1&s[bsizeov]=1&s[bbcolor]=bbbbbb&s[bbsize]=2&s[bgeven]=f0f8ffb0&s[bgodd]=ffffffb0&s[bgover]=eeeeffb0&s[bghead]=eeeeffff&s[ehrsize]=10&s[ehrtop]=9&s[ehrbottom]=3&s[wrap]=false" style="overflow:hidden;" allowtransparency="true" frameborder="0" width="383" height="295" ><p>Dein Browser kann das Turnierwidget leider nicht darstellen. <a href="https://www.meinturnierplan.de/showit.php?id=1736013713">Hier geht es zum Turnier.</a></p></iframe>'


#  Herren

# A

export IFRAME13='<iframe id="widgetTable" src="https://www.meinturnierplan.de/displayTable.php?id=1736331850&gr=1&bm&sbr&s[size]=14&s[sizeheader]=14&s[color]=000000&s[maincolor]=173f75&s[padding]=2&s[innerpadding]=5&s[bgcolor]=00000000&s[logosize]=20&s[bcolor]=bbbbbb&s[bsizeh]=1&s[bsizev]=1&s[bsizeoh]=1&s[bsizeov]=1&s[bbcolor]=bbbbbb&s[bbsize]=2&s[bgeven]=f0f8ffb0&s[bgodd]=ffffffb0&s[bgover]=eeeeffb0&s[bghead]=eeeeffff&s[wrap]=false" style="overflow:hidden;" allowtransparency="true" frameborder="0" width="412" height="189" ><p>Dein Browser kann das Turnierwidget leider nicht darstellen. <a href="https://www.meinturnierplan.de/showit.php?id=1736331850">Hier geht es zum Turnier.</a></p></iframe>'
export IFRAME14='<iframe id="widgetMatches" src="https://www.meinturnierplan.de/displayMatches.php?id=1736331850&gr=1&bm&se&sg&sp&sbr&s[size]=14&s[sizeheader]=14&s[color]=000000&s[maincolor]=173f75&s[padding]=2&s[innerpadding]=5&s[bgcolor]=00000000&s[bcolor]=bbbbbb&s[bsizeh]=1&s[bsizev]=1&s[bsizeoh]=1&s[bsizeov]=1&s[bbcolor]=bbbbbb&s[bbsize]=2&s[bgeven]=f0f8ffb0&s[bgodd]=ffffffb0&s[bgover]=eeeeffb0&s[bghead]=eeeeffff&s[ehrsize]=10&s[ehrtop]=9&s[ehrbottom]=3&s[wrap]=false" style="overflow:hidden;" allowtransparency="true" frameborder="0" width="575" height="414" ><p>Dein Browser kann das Turnierwidget leider nicht darstellen. <a href="https://www.meinturnierplan.de/showit.php?id=1736331850">Hier geht es zum Turnier.</a></p></iframe>'
#B
export IFRAME15='<iframe id="widgetTable" src="https://www.meinturnierplan.de/displayTable.php?id=1736331850&gr=2&bm&sbr&s[size]=14&s[sizeheader]=14&s[color]=000000&s[maincolor]=173f75&s[padding]=2&s[innerpadding]=5&s[bgcolor]=00000000&s[logosize]=20&s[bcolor]=bbbbbb&s[bsizeh]=1&s[bsizev]=1&s[bsizeoh]=1&s[bsizeov]=1&s[bbcolor]=bbbbbb&s[bbsize]=2&s[bgeven]=f0f8ffb0&s[bgodd]=ffffffb0&s[bgover]=eeeeffb0&s[bghead]=eeeeffff&s[wrap]=false" style="overflow:hidden;" allowtransparency="true" frameborder="0" width="358" height="189" ><p>Dein Browser kann das Turnierwidget leider nicht darstellen. <a href="https://www.meinturnierplan.de/showit.php?id=1736331850">Hier geht es zum Turnier.</a></p></iframe>'
export IFRAME16='<iframe id="widgetMatches" src="https://www.meinturnierplan.de/displayMatches.php?id=1736331850&gr=2&bm&se&sg&sp&sbr&s[size]=14&s[sizeheader]=14&s[color]=000000&s[maincolor]=173f75&s[padding]=2&s[innerpadding]=5&s[bgcolor]=00000000&s[bcolor]=bbbbbb&s[bsizeh]=1&s[bsizev]=1&s[bsizeoh]=1&s[bsizeov]=1&s[bbcolor]=bbbbbb&s[bbsize]=2&s[bgeven]=f0f8ffb0&s[bgodd]=ffffffb0&s[bgover]=eeeeffb0&s[bghead]=eeeeffff&s[ehrsize]=10&s[ehrtop]=9&s[ehrbottom]=3&s[wrap]=false" style="overflow:hidden;" allowtransparency="true" frameborder="0" width="467" height="414" ><p>Dein Browser kann das Turnierwidget leider nicht darstellen. <a href="https://www.meinturnierplan.de/showit.php?id=1736331850">Hier geht es zum Turnier.</a></p></iframe>'

#C
export IFRAME17='<iframe id="widgetTable" src="https://www.meinturnierplan.de/displayTable.php?id=1736331850&gr=3&bm&sbr&s[size]=14&s[sizeheader]=14&s[color]=000000&s[maincolor]=173f75&s[padding]=2&s[innerpadding]=5&s[bgcolor]=00000000&s[logosize]=20&s[bcolor]=bbbbbb&s[bsizeh]=1&s[bsizev]=1&s[bsizeoh]=1&s[bsizeov]=1&s[bbcolor]=bbbbbb&s[bbsize]=2&s[bgeven]=f0f8ffb0&s[bgodd]=ffffffb0&s[bgover]=eeeeffb0&s[bghead]=eeeeffff&s[wrap]=false" style="overflow:hidden;" allowtransparency="true" frameborder="0" width="345" height="164" ><p>Dein Browser kann das Turnierwidget leider nicht darstellen. <a href="https://www.meinturnierplan.de/showit.php?id=1736331850">Hier geht es zum Turnier.</a></p></iframe>'
export IFRAME18='<iframe id="widgetMatches" src="https://www.meinturnierplan.de/displayMatches.php?id=1736331850&gr=3&bm&se&sg&sp&sbr&s[size]=14&s[sizeheader]=14&s[color]=000000&s[maincolor]=173f75&s[padding]=2&s[innerpadding]=5&s[bgcolor]=00000000&s[bcolor]=bbbbbb&s[bsizeh]=1&s[bsizev]=1&s[bsizeoh]=1&s[bsizeov]=1&s[bbcolor]=bbbbbb&s[bbsize]=2&s[bgeven]=f0f8ffb0&s[bgodd]=ffffffb0&s[bgover]=eeeeffb0&s[bghead]=eeeeffff&s[ehrsize]=10&s[ehrtop]=9&s[ehrbottom]=3&s[wrap]=false" style="overflow:hidden;" allowtransparency="true" frameborder="0" width="442" height="289" ><p>Dein Browser kann das Turnierwidget leider nicht darstellen. <a href="https://www.meinturnierplan.de/showit.php?id=1736331850">Hier geht es zum Turnier.</a></p></iframe>'

#D
#export IFRAME19='<iframe id="widgetTable" src="https://www.meinturnierplan.de/displayTable.php?id=1736331850&gr=4&bm&sbr&s[size]=14&s[sizeheader]=14&s[color]=000000&s[maincolor]=173f75&s[padding]=2&s[innerpadding]=5&s[bgcolor]=00000000&s[logosize]=20&s[bcolor]=bbbbbb&s[bsizeh]=1&s[bsizev]=1&s[bsizeoh]=1&s[bsizeov]=1&s[bbcolor]=bbbbbb&s[bbsize]=2&s[bgeven]=f0f8ffb0&s[bgodd]=ffffffb0&s[bgover]=eeeeffb0&s[bghead]=eeeeffff&s[wrap]=false" style="overflow:hidden;" allowtransparency="true" frameborder="0" width="335" height="164" ><p>Dein Browser kann das Turnierwidget leider nicht darstellen. <a href="https://www.meinturnierplan.de/showit.php?id=1736331850">Hier geht es zum Turnier.</a></p></iframe>'
#export IFRAME20='<iframe id="widgetMatches" src="https://www.meinturnierplan.de/displayMatches.php?id=1736331850&gr=4&bm&se&sg&sp&sbr&s[size]=14&s[sizeheader]=14&s[color]=000000&s[maincolor]=173f75&s[padding]=2&s[innerpadding]=5&s[bgcolor]=00000000&s[bcolor]=bbbbbb&s[bsizeh]=1&s[bsizev]=1&s[bsizeoh]=1&s[bsizeov]=1&s[bbcolor]=bbbbbb&s[bbsize]=2&s[bgeven]=f0f8ffb0&s[bgodd]=ffffffb0&s[bgover]=eeeeffb0&s[bghead]=eeeeffff&s[ehrsize]=10&s[ehrtop]=9&s[ehrbottom]=3&s[wrap]=false" style="overflow:hidden;" allowtransparency="true" frameborder="0" width="421" height="289" ><p>Dein Browser kann das Turnierwidget leider nicht darstellen. <a href="https://www.meinturnierplan.de/showit.php?id=1736331850">Hier geht es zum Turnier.</a></p></iframe>'


#Herren Final
export IFRAME21='<iframe id="widgetTable" src="https://www.meinturnierplan.de/displayTable.php?id=1736331850&gr=90&bm&sbr&s[size]=14&s[sizeheader]=14&s[color]=000000&s[maincolor]=173f75&s[padding]=2&s[innerpadding]=5&s[bgcolor]=00000000&s[logosize]=20&s[bcolor]=bbbbbb&s[bsizeh]=1&s[bsizev]=1&s[bsizeoh]=1&s[bsizeov]=1&s[bbcolor]=bbbbbb&s[bbsize]=2&s[bgeven]=f0f8ffb0&s[bgodd]=ffffffb0&s[bgover]=eeeeffb0&s[bghead]=eeeeffff&s[wrap]=false" style="overflow:hidden;" allowtransparency="true" frameborder="0" width="146" height="139" ><p>Dein Browser kann das Turnierwidget leider nicht darstellen. <a href="https://www.meinturnierplan.de/showit.php?id=1736331850">Hier geht es zum Turnier.</a></p></iframe>'
export IFRAME22='<iframe id="widgetMatches" src="https://www.meinturnierplan.de/displayMatches.php?id=1736331850&gr=90&bm&se&sg&sp&sbr&s[size]=14&s[sizeheader]=14&s[color]=000000&s[maincolor]=173f75&s[padding]=2&s[innerpadding]=5&s[bgcolor]=00000000&s[bcolor]=bbbbbb&s[bsizeh]=1&s[bsizev]=1&s[bsizeoh]=1&s[bsizeov]=1&s[bbcolor]=bbbbbb&s[bbsize]=2&s[bgeven]=f0f8ffb0&s[bgodd]=ffffffb0&s[bgover]=eeeeffb0&s[bghead]=eeeeffff&s[ehrsize]=10&s[ehrtop]=9&s[ehrbottom]=3&s[wrap]=false" style="overflow:hidden;" allowtransparency="true" frameborder="0" width="386" height="551" ><p>Dein Browser kann das Turnierwidget leider nicht darstellen. <a href="https://www.meinturnierplan.de/showit.php?id=1736331850">Hier geht es zum Turnier.</a></p></iframe>'


# =================== REPLACE ALL PLACEHOLDERS ===================
perl -0777 -pe '
  my %replacements = (
    "REPLACE_IFRAME_1" => $ENV{"IFRAME1"},
    "REPLACE_IFRAME_2" => $ENV{"IFRAME2"},
    "REPLACE_IFRAME_3" => $ENV{"IFRAME3"},
    "REPLACE_IFRAME_4" => $ENV{"IFRAME4"},
    "REPLACE_IFRAME_7" => $ENV{"IFRAME7"},
    "REPLACE_IFRAME_8" => $ENV{"IFRAME8"},
    "REPLACE_IFRAME_9" => $ENV{"IFRAME9"},
    "REPLACE_IFRAME_10" => $ENV{"IFRAME10"},
    "REPLACE_IFRAME_11" => $ENV{"IFRAME11"},
    "REPLACE_IFRAME_12" => $ENV{"IFRAME12"},
    "REPLACE_IFRAME_13" => $ENV{"IFRAME13"},
    "REPLACE_IFRAME_14" => $ENV{"IFRAME14"},
    "REPLACE_IFRAME_15" => $ENV{"IFRAME15"},
    "REPLACE_IFRAME_16" => $ENV{"IFRAME16"},
    "REPLACE_IFRAME_17" => $ENV{"IFRAME17"},
    "REPLACE_IFRAME_18" => $ENV{"IFRAME18"},
    "REPLACE_IFRAME_21" => $ENV{"IFRAME21"},
    "REPLACE_IFRAME_22" => $ENV{"IFRAME22"}
  );
  foreach my $key (keys %replacements) {
    s/<!-- $key -->/$replacements{$key}/g;
  }
' "$INPUT_HTML" > "$OUTPUT_HTML"

echo "✅ Dashboard generiert: $OUTPUT_HTML"
