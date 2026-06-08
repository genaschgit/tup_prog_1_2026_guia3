Proceso ejercicio5
	Definir num1, num2, inicio,fn  Como Entero;
    Definir n, i, divisores Como Entero;
	
    Escribir "Ingrese el primer valor del rango:";
    Leer num1;
	
    Escribir "Ingrese el segundo valor del rango:";
    Leer num2;
	
    Si num1 < num2 Entonces
        inicio <- num1;
	fn <- num2;
Sino
	inicio <- num2;
fn <- num1;
FinSi;

Escribir "Numeros primos del rango:";

Para n <- inicio Hasta fn Hacer
	
	divisores <- 0;
	
	Para i <- 1 Hasta n Hacer
		Si n MOD i = 0 Entonces
			divisores <- divisores + 1;
		FinSi;
	FinPara;
	
	Si divisores = 2 Entonces
		Escribir n;
	FinSi;
	
FinPara;
FinProceso
