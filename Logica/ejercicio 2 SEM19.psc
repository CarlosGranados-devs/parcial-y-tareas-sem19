Algoritmo SistemaVentasConDescuentos
    Definir tipo_cliente Como Entero
    Definir monto_compra, descuento, monto_final Como Real
    Definir cupón, continuar Como Caracter
    Definir total_ventas, total_monto_vendido, total_descuentos, total_facturado Como Real
    Definir venta_alta, venta_baja Como Real
	
    total_ventas <- 0
    total_monto_vendido <- 0
    total_descuentos <- 0
    total_facturado <- 0
    venta_alta <- 0
    venta_baja <- 999999
	
    Repetir
        // Tipo de cliente
        Repetir
            Escribir "Ingrese tipo de cliente (1=Regular, 2=Premium, 3=VIP):"
            Leer tipo_cliente
        Hasta Que tipo_cliente >= 1 Y tipo_cliente <= 3
		
        // Monto de compra
        Repetir
            Escribir "Ingrese monto de compra (mayor a 0):"
            Leer monto_compra
        Hasta Que monto_compra > 0
		
        // Cupón de descuento
        Repetir
            Escribir "¿Posee cupón de descuento? (S/N):"
            Leer cupón
            cupón <- Mayusculas(cupón)
        Hasta Que cupón = "S" O cupón = "N"
		
        // Descuento por monto
        Si monto_compra >= 500 Entonces
            descuento <- monto_compra * 0.15
        Sino
            Si monto_compra >= 200 Entonces
                descuento <- monto_compra * 0.10
            Sino
                descuento <- monto_compra * 0.05
            FinSi
        FinSi
		
        // Descuento por cupón (20%)
        Si cupón = "S" Entonces
            Si monto_compra * 0.20 > descuento Entonces
                descuento <- monto_compra * 0.20
            FinSi
        FinSi
		
        // Calcular monto final
        monto_final <- monto_compra - descuento
		
        // Acumuladores
        total_ventas <- total_ventas + 1
        total_monto_vendido <- total_monto_vendido + monto_compra
        total_descuentos <- total_descuentos + descuento
        total_facturado <- total_facturado + monto_final
		
        // Venta más alta
        Si monto_compra > venta_alta Entonces
            venta_alta <- monto_compra
        FinSi
		
        // Venta más baja
        Si monto_compra < venta_baja Entonces
            venta_baja <- monto_compra
        FinSi
		
        // Continuar
        Repetir
            Escribir "¿Desea procesar otra venta? (S/N):"
            Leer continuar
            continuar <- Mayusculas(continuar)
        Hasta Que continuar = "S" O continuar = "N"
		
    Hasta Que continuar = "N"
	
    // Mostrar resumen final
    Escribir "--------------------------------------------"
    Escribir "Total de ventas procesadas: ", total_ventas
    Escribir "Monto total vendido (sin descuento): ", total_monto_vendido
    Escribir "Total de descuentos aplicados: ", total_descuentos
    Escribir "Monto final facturado (con descuento): ", total_facturado
    Escribir "Venta con mayor monto: ", venta_alta
    Escribir "Venta con menor monto: ", venta_baja
    Escribir "--------------------------------------------"

FinAlgoritmo
