::----------------------------------------------------------------------------------
::-----------Codigo Por David Morales, Como proyecto de investigacion---------------
::----------------------------------------------------------------------------------
::-Todas las ordenes autoejecutables seran explicadas mediante comentarios de texto-
::----------------------------------------------------------------------------------
:: Desactiva la salida de los comandos, esto sirve para hacer operaciones del tipo de un leguaje de programacion convencional
@echo off
:: Muestra en pantalla el titulo del script
echo "------Instalador del script optimizador-------"
echo "--------------Por David Morales---------------"
echo "------Version de Windows 7 y anteriores-------"
pause
:: Crea el archivo autoclean.cmd
type nul > "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\AutoClean.cmd"
:: Introduce el texto "del %temp%\"." && del c:\windows\temp\"."" en el archivo AutoClean.cmd
echo "del %temp%\"." && del c:\windows\temp\"."" > "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\AutoClean.cmd"
:: Elimina los archivos temporales
del %temp%\"."
del c:\windows\temp\"."
echo "Instalacion finalizada"
pause
exit 