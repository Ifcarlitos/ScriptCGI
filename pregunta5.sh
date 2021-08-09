#!/bin/bash
#Creamos variables para leer informacion del archivo indicado en $1, 
#cada letra con % indica una de las informaciones a mostrar
acceso=$(stat --format=%x "$1")
modi=$(stat --format=%y "$1")
propi=$(stat --format=%U "$1")
tam=$(stat --format=%S "$1")
fichero=$(stat --format=%f "$1")
#Mostramos la infromación por la terminal
echo "***********************************"
echo "Archivo enviado: $1"
echo "***********************************"
echo "Ultimo acceso: " 
echo $acceso
echo "***********************************"
echo "Ultima modificación: " 
echo $modi
echo "***********************************"
echo "Tamaño en bytes: "
echo $tam
echo "***********************************"
echo "Creador: "
echo $propi
echo "***********************************"
echo "Tipo de fichero: "
echo $fichero
echo "***********************************"
