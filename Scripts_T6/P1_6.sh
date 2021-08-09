#!/bin/bash
#Mostramos en pantalla la pregunta que es
echo "Ejercicio 1 de la tarea 6:"
#Cremos dos variables: salir que lo usaremos para salir de while y opcion para el case.
SALIR=0
opcion=0
#Empezamos un bucle while que estara activo hasta siempre que salir sea igual, -eq, a 0.
while [ $SALIR -eq 0 ]; 
do
	#Le mostramos al usuarios las opciones que puede elegir.
	echo "Menu:"
	echo "1) Opcion 1"
	echo "2) Opcion 2"
	echo "3) Opcion 3"
	echo "4) Opcion 4"
	echo "5) Salir"
	echo "Opcion seleccionada: "
	#Leemos el comando que indique el usuario
	read opcion
	#Empezamos un case para que el usuario pueda elegir que opcion quiere 1,2,3,4 o 5, tambine incluimos el default para todos los casos erroneos.
	case $opcion in
		1)
		echo "Opcion 1 seleccionada" 
		;;
		2)
		echo "Opcion 2 seleccionada" 
		;;
		3)
		echo "Opcion 2 seleccionada" 
		;;
		4)
		echo "Opcion 2 seleccionada" 
		;;
		5)
		SALIR=1 
		;;
		*)
		echo "Opción erronea"
		;;
	#cerramos el case
	esac
	#Cerramos bucle, pero no se acabara hasta que tenga opcion diferente a 0.
done
