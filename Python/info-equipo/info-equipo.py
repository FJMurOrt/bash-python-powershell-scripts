import platform

#Info del sistema
sistema = platform.system()
version = platform.release()
arquitectura = platform.machine()
procesador = platform.processor()
nombre_equipo = platform.node()

#Muestro la info
print("Sistema operativo:", sistema)
print("Version:", version)
print("Arquitectura:", arquitectura)
print("Procesador:", procesador)
print("Nombre del equipo:", nombre_equipo)