@echo off 
echo "-------------------------------------------------"
echo "-Script de Desinstalacion del Script optimizador-"
echo "----------------Por David Morales----------------"
echo "-------Version de Windows 7 y anteriores---------"
echo "-------------------------------------------------"
pause 
cls
echo "Estas a punto de desinstalar mi script, es posible que despues de esto, tu pc tenga un rendimiento peor"
echo "Si estas de acuerdo, presiona una letra"
pause
del C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\AutoClean.cmd
cls
echo "Desinstalacion completa"
pause
exit