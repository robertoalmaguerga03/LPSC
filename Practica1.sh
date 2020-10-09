#!/bin/bash
read -p  "Presiona Enter para conocer el clima de tu locación actual" xs
curl wttr.in

read -p "Introduce la locación de la que deseas conocer el clima, se guardará una imagen con los datos obtenidos: " variable
wget wttr.in/$variable.png

read -p "Presiona Enter para conocer los estados del clima de 4 ciudades famosas del mundo" equis
curl -s wttr.in/{London,Berlin,Tokio,Nueva-York}?format=v2
