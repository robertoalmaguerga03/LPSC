#Practica 3: Funci�n, estructura de control y pipes
function menu
{
write-Host "Selecciona una opci�n"
Write-Host ""
Write-Host "1: Decir Hola"
Write-Host "2: Decir Adios"
Write-Host "3: Decir Como Estas"
Write-Host "S: Salir"
Write-Host ""
}
do
{
menu
#Creaci�n y uso de funci�n:
$input = Read-Host "Selecciona una opci�n"
#Estructura de control:
switch ($input)
{
'1' {
Write-Host "Hola"
Write-Host ""
} '2' {
Write-Host "Adios"
Write-Host ""
} '3' {
Write-Host "Como Estas"
Write-Host "" 
} 'S' {
return
}
}
Write-Host "Muy bien, puedes probar otra cosa o salir"
pause
Write-Host "" 
}
until ($input -eq 'S')
#Pipe:
Write-Host "A continuaci�n se crear� un archivo de texto con los comandos disponibles para powershell"
Get-Command | Out-File -FilePath C:\archivo.txt