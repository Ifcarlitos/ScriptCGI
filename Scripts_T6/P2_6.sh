#!/bin/bash
echo "Ejercicio 2 de la tarea 6:"
#Pedimos y leemos la cadena y el caracter que quiere buscar
echo "Cadena (frase): "
read cadena
echo "Caracter a buscar (letra): "
read caracter
#Mostramos el numero de caracteres totales que tiene la cadena
echo "Numero de caracteres:"
echo -n $cadena | wc -m 
#Creamos la variabel numero la cual busca en cadena el caracter y lo cuenta
num=$(echo "${cadena}" | awk -F"${caracter}" '{print NF-1}')
#Mustra la cadena, la letra que ha seleccionado, el numerod e veces que sale y lo ingresa en el archivo lista.
echo "Frase: "$cadena ", Letra seleccionada: " $caracter ",Numero de veces: " $num >> lista
#Mostramos la 5 ultimas lineas escribidas en lista
echo "Ultimas 5 busquedas"
tail -n 5 lista

