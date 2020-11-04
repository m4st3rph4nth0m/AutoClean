::----------------------------------------------------------------------------------
::-----------Codigo Por David Morales, Como proyecto de investigacion---------------
::----------------------------------------------------------------------------------
::-Todas las ordenes autoejecutables seran explicadas mediante comentarios de texto-
::----------------------------------------------------------------------------------
:: Desactiva la salida de los comandos, esto sirve para hacer operaciones del tipo de un leguaje de programacion convencional
@echo off 
echo "-------------------------------------------------"
echo "-Script de Desinstalacion del Script optimizador-"
echo "----------------Por David Morales----------------"
echo "-------Version de Windows 7 y anteriores---------"
echo "-------------------------------------------------"
pause 
:: Limpia la pantalla
cls
echo "Estas a punto de desinstalar mi script, es posible que despues de esto, tu pc tenga un rendimiento peor"
echo "Si estas de acuerdo, presiona una letra"
pause
:: Elimina el autoejecutable
del %programdata%\Microsoft\Windows\Start Menu\Programs\Startup\AutoClean.cmd
cls
echo "Desinstalacion completa"
pause
exit