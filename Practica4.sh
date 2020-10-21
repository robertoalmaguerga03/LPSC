#!/bin/bash
#Practica 4: Codificar y decodificar

#Cheksums
echo "A continuación demostraran los cheksums de los 4 archivos con los que trabajaremos"
md5sum mystery_img1.txt mystery_img2.txt msg.txt fcfm.png 

#Codificación
echo "Ahora pasamos a codificar"
base64 < fcfm.png > fcfm_png_codificado.txt
echo "fcfm.png codificado"
base64 < msg.txt > msg_txt_codificado.txt
echo "msg.txt codificado"

#Decodificación
echo "Ahora pasamos a decodificar"
base64 --decode < mystery_img1.txt > mystery_img1_decodificado.jpg
echo "mystery_img1 decodificado"
base64 --decode < mystery_img2.txt > mystery_img2_decodificado.jpg
echo "mystery_img2 decodificado"

