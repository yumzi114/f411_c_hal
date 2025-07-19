# f411_c_hal


STM32 CUBE create template

used Makefile, all lib Copy

template lsp config(create makefile base) 
cmd : bear -- make 


build command(Jlink flash)
make
JLinkExe -device STM32F411CE -if SWD -speed 4000 -autoconnect 1 

Jlink Cmd -
loadbin build/asd.bin, 0x08000000


or this reportrise in build.sh run

