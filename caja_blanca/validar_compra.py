
def validar_compra(edad, cuenta_activa, saldo, monto):

    if edad < 18:
        return "Compra no permitida: edad"

    if not cuenta_activa:
        return "Compra no permitida: cuenta"

    if saldo >= monto and monto > 0:
        return "Compra aprobada"

    return "Compra rechazada"


print(validar_compra(20, True, 100, 50))
print(validar_compra(16, True, 100, 50))
print(validar_compra(20, False, 100, 50))

print(validar_compra(20, True, 30, 50))

print(validar_compra(20, True, 100, 0))
