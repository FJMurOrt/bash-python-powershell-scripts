#Creo la lista vacía
frutas = []

#Solicito 3 frutas
for i in range(3):
    fruta = input("Introduce una fruta: ")
    frutas.append(fruta)

#Muestro la lista
print("Frutas en la lista:")

for fruta in frutas:
    print("-", fruta)

print("Total de frutas en la lista:", len(frutas))
