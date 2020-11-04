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
echo "------Version de Windows 8 y posteriores-------"
pause
:: Crea el archivo AutoClean.cmd en el directorio de autoejecucion
type nul > "%programdata%\Microsoft\Windows\Start Menu\Programs\Startup\AutoClean.cmd"
:: introduce el texto "del %temp%\"." && del c:\windows\temp\"."" en el archivo creado anteriormente
echo "del %temp%\"." && del c:\windows\temp\"."" > "%programdata%\Microsoft\Windows\Start Menu\Programs\Startup\AutoClean.cmd" 
pause
:: Elimina los archivos temporales
del %temp%\"."
del c:\windows\temp\"."
echo "Instalacion finalizada"
pause
exit 