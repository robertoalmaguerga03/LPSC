import requests
from tkinter import *
import tkinter
def prog():
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

ventana = tkinter.Tk()
ventana.title('Practica 11')
ventana.geometry("500x500")
lbl = Label(ventana, text="Hello")
lbl.grid(column=0, row=0)
def clicked():
    lbl.configure(text="Iniciando programa")
    prog()
boton1 = Button(ventana,text="Presiona el botón",command=clicked)
boton1.grid(row=1,column=1)
ventana.mainloop()

