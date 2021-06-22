#!/bin/bash
###########################################################################
# Repositorio: RetroPieBios
# Por: Luciano Rabassa (https://sites.google.com/view/raspberryargentina/)
# License: http://creativecommons.org/licenses/by-sa/4.0/
###########################################################################
echo "Moviendo las Bios al lugar adecuado"
cp -r /home/pi/RetroPieBios/BIOS/* /home/pi/RetroPie/BIOS/
echo
echo "BIOS movidas"
echo
echo "moviendo BIOS especiales"
echo
echo "Creando carpetas inexistentes, si ya existe dara mensaje no te preocupes"
sudo mkdir /opt/retropie/configs/nds/
echo "Carpeta nds creada"
sudo mkdir /opt/retropie/configs/nds/drastic/
echo "Carpeta drastic creada"
sudo mkdir /opt/retropie/configs/nds/drastic/system/
echo "Carpeta system creada"
sudo cp -r /home/pi/RetroPieBios/opt/retropie/configs/nds/drastic/system/* /opt/retropie/configs/nds/drastic/system/
echo "Bios Drastic copiadas"
sudo cp -r /home/pi/RetroPieBios/opt/retropie/emulators/retroarch/bin/* /opt/retropie/emulators/retroarch/bin/
echo "Bios Macintosh copiada"
echo "Moviendo BIOS que deben estar en la carpeta roms"
echo "Creando carpeta macintosh"
mkdir /home/pi/RetroPie/roms/macintosh/
echo "Carpeta macintosh creada"
cp -r /home/pi/RetroPieBios/roms/macintosh/* /home/pi/RetroPie/roms/macintosh/
echo "Bios macintosh copiada"
echo "Creando carpeta ports"
mkdir /home/pi/RetroPie/roms/ports/
echo "Creando carpeta Cannonball"
mkdir /home/pi/RetroPie/roms/ports/cannonball/
echo "Carpeta cannonbal creada"
echo
echo "Copiando cannonball"
cp -r /home/pi/RetroPieBios/roms/ports/cannonball/* /home/pi/RetroPie/roms/ports/cannonball/
echo "Moviendonos a la carpeta cannonball"
cd /home/pi/RetroPie/roms/ports/cannonball/
echo "Descomprimiendo outrun.zip"
find ./ -iname "*.zip" -execdir unzip -o '{}' ';'
echo
cd
echo "Cannonball copiado"
echo
echo "Copiando Bios neogeo a las carpetas correspondientes" 
echo
cp -r /home/pi/RetroPieBios/roms/neogeo/* /home/pi/RetroPie/roms/neogeo/
echo "Bios copiada en directorio neogeo"
cp -r /home/pi/RetroPieBios/roms/neogeo/* /home/pi/RetroPie/roms/arcade/
echo "Bios copiada en directorio arcade"
cp -r /home/pi/RetroPieBios/roms/neogeo/* /home/pi/RetroPie/roms/fba/
echo "Bios copiada en directorio fba"
cp -r /home/pi/RetroPieBios/roms/neogeo/* /home/pi/RetroPie/roms/mame-libretro/
echo "Bios copiada en directorio mame-libretro"
echo
echo "Creando directorio mame-mame4all"
mkdir /home/pi/RetroPie/roms/mame-mame4all
echo "Creado"
cp -r /home/pi/RetroPieBios/roms/neogeo/* /home/pi/RetroPie/roms/mame-mame4all/
echo "Bios copiada en directorio mame-mame4all"
echo
echo "Creando directorio mame-advmame"
mkdir /home/pi/RetroPie/roms/mame-advmame
echo "Creado"
cp -r /home/pi/RetroPieBios/roms/neogeo/* /home/pi/RetroPie/roms/mame-advmame/
echo "Bios copiada en directorio mame-advmame"
echo
echo "Al fin, Copiadas todas las BIOS"
echo
echo "Regresando a casa para pasar la escoba"
cd ..
sudo rm -rf /home/pi/RetroPieBios/
echo "Listo, todo limpio"
echo "Reinicia tu Raspberry Pi con <sudo reboot> y Disfruta"
echo "Saludos desde Raspberry Pi Buenos Aires"
echo
echo "Esta ventana se destruira en.."
echo "3.."
echo
echo "2.."
echo
echo "1.."
echo
echo 
exit
