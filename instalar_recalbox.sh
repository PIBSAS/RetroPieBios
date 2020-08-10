#!/bin/bash
###########################################################################
# Repositorio: RetroPieBios
# Por: Luciano Rabassa (https://sites.google.com/view/raspberryargentina/)
# License: http://creativecommons.org/licenses/by-sa/4.0/
###########################################################################
echo "Moviendo las Bios al lugar adecuado"
cp -r /recalbox/share/system/RetroPieBios-master/BIOS/* /recalbox/share/bios/
echo
echo "BIOS movidas"
echo
echo "moviendo BIOS especiales"
echo
echo "Creando carpetas inexistentes, si ya existe dara mensaje no te preocupes"
echo
echo "Bios Macintosh copiada"
echo "Moviendo BIOS que deben estar en la carpeta roms"
echo "Creando carpeta macintosh"
mkdir /recalbox/share/roms/macintosh/
echo "Carpeta macintosh creada"
cp -r /recalbox/share/system/RetroPieBios-master/roms/macintosh/* /recalbox/share/roms/macintosh/
echo "Bios macintosh copiada"
echo
echo "Copiando Bios neogeo a las carpetas correspondientes" 
echo
cp -r /recalbox/share/system/RetroPieBios-master/roms/neogeo/* /recalbox/share/roms/neogeo/
echo "Bios copiada en directorio neogeo"
cp -r /recalbox/share/system/RetroPieBios-master/roms/neogeo/* /recalbox/share/roms/fba_libretro/
echo "Bios copiada en directorio fba_libretro"
cp -r /recalbox/share/system/RetroPieBios-master/roms/neogeo/* /recalbox/share/roms/mame/
echo "Bios copiada en directorio mame"
echo
echo "Al fin, Copiadas todas las BIOS"
echo
echo "Regresando a casa para pasar la escoba"
cd ..
rm -rf /recalbox/share/system/RetroPieBios/
echo "Listo, todo limpio"
echo "Reinicia tu Raspberry Pi con <reboot> y Disfruta"
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
