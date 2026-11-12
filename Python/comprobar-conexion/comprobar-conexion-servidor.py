import socket

servidor = input("Introduce el servidor: ")
puerto = int(input("Introduce el puerto: "))

try:
    conexion = socket.create_connection((servidor, puerto), timeout=5)
    print("La conexion se estableció correctamente.")
    conexion.close()

except OSError:
    print("No se pudo conectar con el servidor.")
