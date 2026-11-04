#Definición de la función
def sumar(numero1, numero2):
    resultado = numero1 + numero2
    return resultado

#Input de los números que queramos usar en la función
numero1 = float(input("Introduce el primer numero: "))
numero2 = float(input("Introduce el segundo numero: "))

#Llamo a la función
resultado = sumar(numero1, numero2)

#Muestro el resultado
print("El resultado de la suma es:", resultado)