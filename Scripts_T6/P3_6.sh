#!/bin/bash
#Creamos la funcion error que contiene un case con el cual vemos que mensaje mostrar
muestra_error()
{
	case $1 in
		1)
			echo "usage: mi_script.sh [[-f file] [-b b_args | -c c_arg] [-h] [-l]]"
			;;
		2)	
			echo "usage: mi_script [[-b parametro obligatorio | -c parametro opcional]]"
			;;
		*)	
			exit
			;;
	esac
}	
#Creamos la funcion help para dar ayuda al usuario
help(){
	echo "-h: MUstra ayuda"
	echo "-f: mustra nombre archivo"
	echo "-b: Mustra parametro b"
	echo "-c: mustra parametro c"
	echo "-h: Es ayuda"
}

#Creamos un bucle while con el cual siempre que el segundo elemento el $1, 
#despues del nombre del archivo, sea diferente a nada "", se entra en el.
#Despues creamos un case para analizar el caso, lo que ha indicado el usuario, 
#y despues le mostramos un mensaje o la funcuon y si lo ha puesto correcto. 
while [ "$1" != "" ];do
	case $1 in 
		-f | --file )
				if [ "$2" != "" ];then
					echo "El fihero es: $2"
				else
					muestra_error 1
				fi
				exit
				;;
		-b | --inter)
				if [ "$2" != "" ];then
					echo "El parametro es $2"
				else
					muestra_error 2
				fi
				exit
				;;
		-c | --actual)	
				if [ "$2" != "" ];then
					echo "El parametro es $2"
				else
					echo "Sin parametros"
				fi
				exit
				;;
		-h | --help)	
				help
				exit
				;;
		-l | --largo)	
				echo "Has pulsado -l"
				exit
				;;
		*)	
				muestrar_error 1	
				exit
				;;
	esac
done
