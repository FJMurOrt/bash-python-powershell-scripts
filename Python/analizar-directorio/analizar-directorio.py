import os

#Ruta del directorio
directorio = input("Introduce la ruta del directorio: ")

#Comprobar que existe la ruta
if os.path.isdir(directorio):

    archivos = os.listdir(directorio)

    print()
    print("Contenido del directorio:")
    print()

    for archivo in archivos:
        ruta_completa = os.path.join(directorio, archivo)

        if os.path.isfile(ruta_completa):
            print("Archivo:", archivo)
        elif os.path.isdir(ruta_completa):
            print("Directorio:", archivo)

    print()
    print("Total de elementos:", len(archivos))

else:
    print("El directorio no existe.")
