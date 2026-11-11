import socket

#Dominio
dominio = input("Introduce un dominio: ")

try:
    direccion_ip = socket.gethostbyname(dominio)
    print("Dominio:", dominio)
    print("Direccion IP:", direccion_ip)

except socket.gaierror:
    print("Hubo un problema o no se pudo comprobar el dominio.")
