#!/bin/bash
###########################################################################
# Repositorio: RetroPieBios
# Por: Luciano Rabassa (https://sites.google.com/view/raspberryargentina/)
# License: http://creativecommons.org/licenses/by-sa/4.0/
###########################################################################
echo "Moviendo las Bios al lugar adecuado"
cp /home/pi/RetroPieBios/BIOS/* /home/pi/RetroPie/BIOS
echo
echo "BIOS movidas"
echo "moviendo BIOS especiales"
sudo mkdir /opt/retropie/configs/nds/
sudo mkdir /opt/retropie/configs/nds/drastic/
sudo mkdir /opt/retropie/configs/nds/drastic/system/
sudo cp /home/pi/RetroPie/RetroPieBios/opt/retropie/configs/nds/drastic/system/* /opt/retropie/configs/nds/drastic/system/
sudo cp /home/pi/RetroPie/RetroPieBios/opt/retropie/emulators/retroarch/bin/* /opt/retropie/emulators/retroarch/bin/
echo
echo "Moviendo BIOS que deben estar en la carpeta roms"
mkdir /home/pi/RetroPie/roms/macintosh/
cp /home/pi/RetroPie/RetroPieBios/roms/macintosh/* /home/pi/RetroPie/roms/macintosh/
cp /home/pi/RetroPie/RetroPieBios/roms/neogeo/* /home/pi/RetroPie/roms/neogeo/
cp /home/pi/RetroPie/RetroPieBios/roms/neogeo/* /home/pi/RetroPie/roms/arcade/
cp /home/pi/RetroPie/RetroPieBios/roms/neogeo/* /home/pi/RetroPie/roms/fba/
cp /home/pi/RetroPie/RetroPieBios/roms/neogeo/* /home/pi/RetroPie/roms/mame-libretro/
mkdir /home/pi/RetroPie/roms/mame-mame4all
cp /home/pi/RetroPie/RetroPieBios/roms/neogeo/* /home/pi/RetroPie/roms/mame-mame4all/
mkdir /home/pi/RetroPie/roms/mame-advmame
cp /home/pi/RetroPie/RetroPieBios/roms/neogeo/* /home/pi/RetroPie/roms/mame-advmame/
echo "Copiadas todas las BIOS"
cd
sudo rm -rf /home/pi/RetroPieBios/
echo "Reinicia tu Raspberry Pi con <sudo reboot> y Disfruta"
echo "Raspberry Pi Buenos Aires"