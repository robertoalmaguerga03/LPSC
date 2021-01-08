import requests

url = "https://swapi.dev/api/people/4/"
print("Haciendo request a datos de Darth Vader")
r = requests.get(url)
if r.status_code == 200:
    personaje = r.json()
    for x,y in personaje.items():
        print(x,"-",y)
else:
    print("La pagina no existe, bye!")
    exit()

input()
