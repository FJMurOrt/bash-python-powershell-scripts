#Pido la ruta del archivo de los logs
ruta = input("Introduce la ruta del archivo de log: ")

errores = 0
advertencias = 0
total_lineas = 0

try:
    with open(ruta, "r", encoding="utf-8", errors="ignore") as archivo:

        for linea in archivo:
            total_lineas += 1

            if "ERROR" in linea.upper():
                errores += 1

            elif "WARNING" in linea.upper():
                advertencias += 1

    print()
    print("Total de lineas:", total_lineas)
    print("Número de errores que se encontraron:", errores)
    print("Número de advertencias que se encontraron:", advertencias)

except FileNotFoundError:
    print("No se encontró el archivo de los logs.")