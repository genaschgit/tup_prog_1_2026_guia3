Proceso ejercicio1
	Definir num, mayor, menor, cantPares Como Entero;
    Definir sumaImpares, promedioImpares Como Real;
    Definir cantImpares, i Como Entero;
	
    cantPares <- 0;
    sumaImpares <- 0;
    cantImpares <- 0;
	
    Para i <- 1 Hasta 20 Hacer
		
        Escribir "Ingrese el premio ", i, ":";
        Leer num;
		
        Si i = 1 Entonces
            mayor <- num;
            menor <- num;
        Sino
            Si num > mayor Entonces
                mayor <- num;
            FinSi;
			
            Si num < menor Entonces
                menor <- num;
            FinSi;
        FinSi;
		
        Si num MOD 2 = 0 Entonces
            cantPares <- cantPares + 1;
        Sino
            sumaImpares <- sumaImpares + num;
            cantImpares <- cantImpares + 1;
        FinSi;
		
    FinPara;
	
    Si cantImpares > 0 Entonces
        promedioImpares <- sumaImpares / cantImpares;
        Escribir "Promedio de los impares: ", promedioImpares;
    Sino
        Escribir "No se ingresaron numeros impares";
    FinSi;
	
    Escribir "Mayor numero: ", mayor;
    Escribir "Menor numero: ", menor;
    Escribir "Cantidad de numeros pares: ", cantPares;

FinProceso
