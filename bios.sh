#!/bin/bash
###########################################################################
# Repositorio: RetroPieBios
# Por: Raspberry Pi Buenos Aires (https://sites.google.com/view/raspberrypibuenosaires/)
# License: http://creativecommons.org/licenses/by-sa/4.0/
###########################################################################
echo "Obteniendo Bios"
git clone https://github.com/PIBSAS/RetroPieBios.git

echo "Moviendo las Bios al lugar adecuado"
cp -r $HOME/RetroPieBios/BIOS/* $HOME/RetroPie/BIOS/
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
sudo cp -r $HOME/RetroPieBios/opt/retropie/configs/nds/drastic/system/* /opt/retropie/configs/nds/drastic/system/
echo "Bios Drastic copiadas"
sudo cp -r $HOME/RetroPieBios/opt/retropie/emulators/retroarch/bin/* /opt/retropie/emulators/retroarch/bin/
echo "Bios Macintosh copiada"
echo "Moviendo BIOS que deben estar en la carpeta roms"
echo "Creando carpeta macintosh"
mkdir $HOME/RetroPie/roms/macintosh/
echo "Carpeta macintosh creada"
cp -r $HOME/RetroPieBios/roms/macintosh/* $HOME/RetroPie/roms/macintosh/
echo "Bios macintosh en roms copiada"
echo "Creando carpeta ports"
mkdir $HOME/RetroPie/roms/ports/
echo "Creando carpeta Cannonball"
mkdir $HOME/RetroPie/roms/ports/cannonball/
echo "Carpeta cannonbal creada"
echo
echo "Copiando Cannonball"
cp -r $HOME/RetroPieBios/roms/ports/cannonball/* $HOME/RetroPie/roms/ports/cannonball/
echo "Moviendonos a la carpeta cannonball"
cd $HOME/RetroPie/roms/ports/cannonball/
echo "Descomprimiendo outrun.zip"
find ./ -iname "*.zip" -execdir unzip -o '{}' ';'
echo
cd
echo "Cannonball copiado"
echo
echo "Creando carpeta CaveStory"
mkdir $HOME/RetroPie/roms/ports/CaveStory/
echo "Carpeta CaveStory creada"
echo "Copiando CaveStory Doukutsu"
cp -r $HOME/RetroPieBios/roms/ports/CaveStory/* $HOME/RetroPie/roms/ports/CaveStory/
echo "CaveStory copiado"
echo
echo "Creando carpeta xrick"
mkdir $HOME/RetroPie/roms/ports/xrick/
echo "Carpeta xrick creada"
echo "Copiando xrick data"
cp -r $HOME/RetroPieBios/roms/ports/xrick/* $HOME/RetroPie/roms/ports/xrick/
echo "xrick copiado"
echo
echo "Copiando Bios neogeo a las carpetas correspondientes" 
echo
cp -r $HOME/RetroPieBios/roms/neogeo/* $HOME/RetroPie/roms/neogeo/
echo "Bios copiada en directorio neogeo"
cp -r $HOME/RetroPieBios/roms/neogeo/* $HOME/RetroPie/roms/arcade/
echo "Bios copiada en directorio arcade"
cp -r $HOME/RetroPieBios/roms/neogeo/* $HOME/RetroPie/roms/fba/
echo "Bios copiada en directorio fba"
cp -r $HOME/RetroPieBios/roms/mame-libretro/* $HOME/RetroPie/roms/mame-libretro/
echo "Bios lr-mame2003plus copiadas en directorio mame-libretro"
echo
echo "Creando directorio mame"
mkdir $HOME/RetroPie/roms/mame
echo "Creado"
cp -r $HOME/RetroPieBios/roms/mame/* $HOME/RetroPie/roms/mame/
echo "Descargando Bios aristmk6"
wget -c https://archive.org/download/mame0235bios/aristmk6.zip -P $HOME/RetroPie/roms/mame/
echo "Bios MAME Current copiadas en directorio mame"
echo
echo "Creando directorio mame-mame4all"
mkdir $HOME/RetroPie/roms/mame-mame4all
echo "Creado"
cp -r $HOME/RetroPieBios/roms/neogeo/* $HOME/RetroPie/roms/mame-mame4all/
echo "Bios copiada en directorio mame-mame4all"
echo
echo "Creando directorio mame-advmame"
mkdir $HOME/RetroPie/roms/mame-advmame
echo "Creado"
cp -r $HOME/RetroPieBios/roms/neogeo/* $HOME/RetroPie/roms/mame-advmame/
echo "Bios copiada en directorio mame-advmame"
echo
echo "Al fin, Copiadas todas las BIOS"
echo
echo "Regresando a casa para pasar la escoba"
cd ..
sudo rm -rf $HOME/RetroPieBios/
echo "Listo, todo limpio"
echo "Reinicia tu Raspberry Pi con <sudo reboot> y Disfruta"
echo "Saludos desde Raspberry Pi Buenos Aires"
echo
echo "Esta ventana se destruira en.."
echo "3.."
sleep 3
echo "2.."
sleep 2
echo "1.."
sleep 4
echo 
echo "Que esperas, reinicia de una vez"
sleep 7
#sudo reboot
exit 0
