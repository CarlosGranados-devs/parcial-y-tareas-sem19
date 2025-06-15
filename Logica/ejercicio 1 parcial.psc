Algoritmo FacturacionMinimarket
    Definir nombre_producto, continuar Como Cadena
    Definir cantidad Como Entero
    Definir precio_unitario, subtotal, total_sin_descuento, descuento, total_final Como Real
	
    total_sin_descuento <- 0
	
    Repetir
        Escribir "Ingrese nombre del producto:"
        Leer nombre_producto
		
        Escribir "Ingrese cantidad comprada:"
        Leer cantidad
		
        Escribir "Ingrese precio unitario:"
        Leer precio_unitario
		
        subtotal <- cantidad * precio_unitario
        total_sin_descuento <- total_sin_descuento + subtotal
		
        Escribir "Producto: ", nombre_producto, " | Cantidad: ", cantidad, " | Precio: $", precio_unitario, " | Subtotal: $", subtotal
		
        Repetir
            Escribir "¿Desea ingresar otro producto? (S/N):"
            Leer continuar
            continuar <- Mayusculas(continuar)
        Hasta Que continuar = "S" O continuar = "N"
		
    Hasta Que continuar = "N"
	
    // Aplicar descuento si corresponde
    Si total_sin_descuento > 100 Entonces
        descuento <- total_sin_descuento * 0.10
    Sino
        descuento <- 0
    FinSi
	
    total_final <- total_sin_descuento - descuento
	
    Escribir "--------------------------------------------"
    Escribir "Total sin descuento: $", total_sin_descuento
    Escribir "Descuento aplicado: $", descuento
    Escribir "Total a pagar: $", total_final
    Escribir "--------------------------------------------"
	
FinAlgoritmo
