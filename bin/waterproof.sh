#!/bin/bash

# setting the variables
Textabstandvonlinks=10
Textabstandvonunten=10
Schriftgroesse=14
PfadFonts="/usr/share/fonts/truetype/msttcorefonts"
# Pfad ist je nach Distribution unterschiedlich!
Schriftart="andalemo.ttf"
Schriftfarbe="white"
# Moegliche Farben koennen aufgelistet werden mit dem Befehl: convert -list color
Wasserzeichentext="© Matthias Günther (wikimatze.de)"

# 1. take all the images in the actuall order and move them into image_processing and make an backup of them under origin/
cp *.jpg *.jpeg *.JPG *.png  *.PNG ~/image_processing
cp *.jpg *.jpeg *.JPG *.png *.PNG ~/image_processing/origin

# 2. got to the folder where the images are
cd ~/image_processing

# 3. create the  Programmbeginn
ls -1 *.JPG *.jpg *.PNG *.png | while read file;
 do {
horizontal=`identify -verbose $file | grep Geometry: | awk {'print $2'} |cut -d"x" -f 1`
vertikal=`identify -verbose $file | grep Geometry: | awk {'print $2'} |cut -d"x" -f 2`
X=$Textabstandvonlinks
Y=$(($vertikal - $Textabstandvonunten))
convert -font $PfadFonts/$Schriftart -pointsize $Schriftgroesse -fill $Schriftfarbe -draw "text $X, $Y '$Wasserzeichentext'" "$file" "`basename watermark_"$file"`";
echo "Bearbeite Datei $file"
}
done
echo "Wasserzeichen wurden erfolgreich eingearbeitet"

# 4. replace watermark and move them into watermark/
for i in *.jpg *.png; do mv "$i" watermark/"${i##watermark_}"; done
