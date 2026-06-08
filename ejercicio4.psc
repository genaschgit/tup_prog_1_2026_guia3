Proceso ejercicio4
	Definir num, i, divisores Como Entero;
	
    Escribir "Ingrese un numero entero:";
    Leer num;
	
    divisores <- 0;
	
    Para i <- 1 Hasta num Hacer
        Si num MOD i = 0 Entonces
            divisores <- divisores + 1;
        FinSi;
    FinPara;
	
    Si divisores = 2 Entonces
        Escribir "El numero es primo";
    Sino
        Escribir "El numero no es primo";
    FinSi;
FinProceso
