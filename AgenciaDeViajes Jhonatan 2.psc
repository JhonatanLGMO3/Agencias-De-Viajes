Algoritmo AgenciaDeViajes
	Definir costoPlaya, costoMontaña, costoCiudad Como Real
	Definir dias, costoTotal, descuento, costoFinal Como Real
	Definir continuar Como Caracter
	
	costoPlaya <- 500000
	costoMontaña <- 400000
	costoCiudad <- 300000
	
	continuar <- "si"
	
	Mientras continuar = "si" Hacer
		Escribir "Seleccione un destino entre 1, 2 y 3:"
		Escribir "1. Playa"
		Escribir "2. Montaña"
		Escribir "3. Ciudad"
		
		Definir destino Como Entero
		leer destino
		
		Segun destino Hacer
			1:
				costoPorDia <- costoPlaya
				Escribir "has seleccionado Playa"
			2:
				costoPorDia <- costoMontaña
				Escribir "has seleccionado Montaña"
			3:
				costoPorDia <- costoCiudad
				Escribir "has seleccionado Ciudad"
			De Otro Modo:
				Escribir "destino no valido"
				continuar <- "no"
		Fin Segun
		
		Escribir "Ingrese la cantidad de dias de estancia:"
		Leer dias
		
		costoTotal <- costoPorDia * dias
		
		Si dias >= 7 Entonces
			descuento <- 0.15
		SiNo
			Si dias >= 3 Entonces
				descuento <- 0.10
			SiNo
				descuento <- 0
			Fin Si
		Fin Si
		
		costoFinal <- costoTotal - (costoTotal * descuento)
		
		Escribir  "costo total de viajes: $", costoTotal
		Escribir  "Descuento aplicado: ", descuento * 100, "%"
		Escribir  "costo final de viaje: $", costoFinal
		
		Escribir "¿Desea realizar otra reserva? (si/no)"
		leer continuar
	Fin Mientras
	Escribir  "Gracias por usar el sistema de reservas."
	
	
FinAlgoritmo
