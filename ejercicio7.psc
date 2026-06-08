Proceso ejercicio7
	Definir cantidad, totalProductos Como Entero;
    Definir precio, totalPagar Como Real;
	
    totalProductos <- 0;
    totalPagar <- 0;
	
    Escribir "Ingrese cantidad de unidades (0 para finalizar):";
    Leer cantidad;
	
    Mientras cantidad <> 0 Hacer
		
        Escribir "Ingrese precio unitario:";
        Leer precio;
		
        totalProductos <- totalProductos + cantidad;
        totalPagar <- totalPagar + (cantidad * precio);
		
        Escribir "Ingrese cantidad de unidades (0 para finalizar):";
        Leer cantidad;
		
    FinMientras;
	
    Escribir "Cantidad total de productos adquiridos: ", totalProductos;
    Escribir "Total a pagar: $", totalPagar;
FinProceso
