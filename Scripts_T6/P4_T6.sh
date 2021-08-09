#!/bin/bash
#Creamos la funcion help para dar ayuda al usuario
help(){
	echo "-h: MUstra ayuda"
	echo "-f: mustra nombre archivo"
	echo "-b: Mustra parametro b"
	echo "-c: mustra parametro c"
	echo "-h: Es ayuda"
}
#Creamos la funcion error, con la cual vemos el mensaje de error
muestra_error()
{
	echo "usage: mi_script.sh [[-f file] [-b b_args | -c c_arg] [-h] [-l]]"
}	
#Creamos un buble ehile getopts con los diferentes elementos case a indicar
#Despues creamos un case para analizar el caso, lo que ha indicado el usuario, 
#y despues le mostramos un mensaje o la funcuon y si lo ha puesto correcto. 
while getopts :f:b:c::hl o;
do
	case $o in 
		f)
				f=${OPTARG}
				exit
				;;
		b)
				b=${OPTARG}
				echo "El parametro es $2"
				exit
				;;
		c)	
				c=${OPTARG}
				echo "El parametro es $2"
				exit
				;;
		h)	
				help
				exit
				;;
		l)	
				echo "Has pulsado -l"
				exit
				;;
		*)	
				muestrar_error	
				exit
				;;
	esac
done
shift $((OPTIND-1))
if [ -z "${f}" ] || [ -z "${b}" ];then
	muestra_error
fi
