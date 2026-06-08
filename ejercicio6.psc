Proceso ejercicio6
	
    Definir nota Como Entero;
    Definir cantNotas, aprobados, desaprobados Como Entero;
    Definir muyBueno, bueno, regular, insuficiente Como Entero;
    Definir suma, promedio Como Real;
	
    cantNotas <- 0;
    suma <- 0;
    aprobados <- 0;
    desaprobados <- 0;
    muyBueno <- 0;
    bueno <- 0;
    regular <- 0;
    insuficiente <- 0;
	
    Escribir "Ingrese una nota (0 a 10).";
    Escribir "Para finalizar ingrese una nota invalida:";
    Leer nota;
	
    Mientras nota >= 0 Y nota <= 10 Hacer
		
        cantNotas <- cantNotas + 1;
        suma <- suma + nota;
		
        Si nota >= 4 Entonces
            aprobados <- aprobados + 1;
        Sino
            desaprobados <- desaprobados + 1;
        FinSi;
		
        Si nota >= 8 Entonces
            muyBueno <- muyBueno + 1;
        Sino
            Si nota >= 6 Entonces
                bueno <- bueno + 1;
            Sino
                Si nota >= 4 Entonces
                    regular <- regular + 1;
                Sino
                    insuficiente <- insuficiente + 1;
                FinSi;
            FinSi;
        FinSi;
		
        Leer nota;
		
    FinMientras;
	
    Si cantNotas > 0 Entonces
		
        promedio <- suma / cantNotas;
		
        Escribir "Cantidad de notas: ", cantNotas;
        Escribir "Promedio: ", promedio;
        Escribir "Cantidad de aprobados: ", aprobados;
        Escribir "Cantidad de no aprobados: ", desaprobados;
		
        Escribir "Porcentaje Muy Bueno: ", (muyBueno * 100) / cantNotas, "%";
        Escribir "Porcentaje Bueno: ", (bueno * 100) / cantNotas, "%";
        Escribir "Porcentaje Regular: ", (regular * 100) / cantNotas, "%";
        Escribir "Porcentaje Insuficiente: ", (insuficiente * 100) / cantNotas, "%";
		
    Sino
		
        Escribir "No se ingresaron notas";
		
    FinSi;
FinProceso
