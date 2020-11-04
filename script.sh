#!/bin/sh
#----------------------------------------------------------------------------------
#-------------Codigo por David Morales, como proyecto de investigacion-------------
#----------------------------------------------------------------------------------
#-Todas las ordenes autoejecutables seran explicadas mediante comentarios de texto-
#----------------------------------------------------------------------------------

#Inicio de la interfaz del programa
echo '-----Programa de optimizacion de Recursos-----'
echo '--------------Por David Morales---------------'
echo '---------------Version de Unix----------------'
sleep 1
echo 'Cargando Recursos'
sleep 2
unzip Files.zip #Descomprime el archivo "Files.zip"
sudo rm -rf Files.zip #Elimina el archivo "Files.zip"
clear 
if [ $1 -eq 1 ] #Chequea que opcion hemos tipeado y ejecuta una funcion en cada caso
then
	#INSTALACION
	sudo mkdir /usr/lib/systemd/scripts/ #Crea el directorio scripts en systemd
	sudo cp tmp.conf /etc/tmpfiles.d/tmp.conf #Copia el archivo tmp.conf modificado al directorio de autoejecución
	sudo touch /usr/lib/systemd/scripts/custom-start.sh #Crea el archivo custom-start.sh
	#Introduce la orden "rm -vfr /tmp/* >/dev/null 2>&1 && rm -vfr /var/tmp/* >/dev/null 2>&1" en el archivo custom-start.sh
	#La orden citada anteriormente, borra los archivos temporales en el sistema
	sudo sed -i 'rm -vfr /tmp/* >/dev/null 2>&1 && rm -vfr /var/tmp/* >/dev/null 2>&1' /usr/lib/systemd/scripts/custom-start.sh
	sudo chmod +x /usr/lib/systemd/scripts/custom-start.sh #Le da permisos de ejecución al archivo custom-start.sh
	#Copia el archivo custom-start.service para su ejecución automatica como un servicio del sistema
	sudo cp custom-start-shutdown.service /lib/systemd/system/
	sudo systemctl enable custom-start-shutdown.service #Crea el servicio
	sudo systemctl start custom-start-shutdown.service #Inicia el servicio
else  
	#Chequea si hemos tipeado el 2
	if [ $1 -eq 2 ]
	then
		#OPTIMIZACION DEL SISTEMA
		sudo rm -vfr /tmp/* >/dev/null 2>&1 && rm -vfr /var/tmp/* >/dev/null 2>&1
		else
			#En caso de no haber tipeado nada/haber tipeado mal, nos muestra las opciones del programa
			echo 'estas son todas las opciones:'
			echo '1) Instalacion'
			echo '2) Optimizacion del ordenador '
	fi
fi
#Si, eso fue todo el codigo.