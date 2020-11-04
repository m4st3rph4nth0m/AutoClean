::----------------------------------------------------------------------------------
::-----------Codigo Por David Morales, Como proyecto de investigacion---------------
::----------------------------------------------------------------------------------
::-Todas las ordenes autoejecutables seran explicadas mediante comentarios de texto-
::----------------------------------------------------------------------------------
:: Desactiva la salida de los comandos, esto sirve para hacer operaciones del tipo de un leguaje de programacion convencional
@echo off
:: Muestra en pantalla el titulo del script
echo "-----Programa de optimizacion de Recursos-----"
echo "--------------Por David Morales---------------"
echo "------Version de Windows 7 y anteriores-------"
:: Pausa los comandos, el usuario debera presionar una tecla para que este continue
pause
:: Limpia la pantalla
cls
:: Elimina archivos temporales
del %temp%\"."
del c:\windows\temp\"."
:: Sale de la consola
exit

:: Si, el codigo de optimizacion es el mismo en ambas versiones