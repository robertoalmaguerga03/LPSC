#!/bin/bash
#Practica 3 script con función, estructura de control y pipe

#Función:
dar_bienvenida(){
	read -p "Dime cual es tu nombre: " nombre
	echo "Hola $nombre bienvenido al script de mi practica 3"
}
dar_bienvenida

#Estructura de control:
read -p "Dime un numero del 1 al 3: " opcion
case $opcion in
	1) echo "Ingresaste el número 1"
		;;
	2) echo "Ingresaste el número 2"
		;;
	3) echo "Ingresaste el número 3"
		;;
	*) echo "Ingresaste un número diferente"
		;;
	esac

#Pipe
read -p "Escribe lo que quieras y contaremos cuantas palabras esribiste en total " texto
echo $texto > texto.txt
cat texto.txt | wc -w 

