#ipaddress:

echo "EL hostname es:" 
hn= hostname -I
echo $hn

echo "El ifConfig.me es:"
ci= curl ifconfig.me
echo $ci

#nmap:
echo "Aplicando nmap a direcciones ip"
nmap 10.0.2.15 > resultadoip1.txt

nmap 189.152.133.109 > resultadoip2.txt

base64 < resultadoip1.txt > resultado1cod.txt

base64 < resultadoip2.txt > resultado2cod.txt

