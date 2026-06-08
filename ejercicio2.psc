Proceso ejercicio2
	Definir nombre, cancionMayor, cancionMenor Como Cadena;
    Definir min, seg, duracion Como Entero;
    Definir mayorDur, menorDur Como Entero;
    Definir totalSeg Como Entero;
    Definir horas, minutos, segundos Como Entero;
	
    totalSeg <- 0;
    mayorDur <- 0;
    menorDur <- 999999;
	
    Repetir
		
        Escribir "Ingrese nombre de la cancion:";
        Leer nombre;
		
        Escribir "Minutos:";
        Leer min;
		
        Escribir "Segundos:";
        Leer seg;
		
        duracion <- min * 60 + seg;
		
        totalSeg <- totalSeg + duracion;
		
        Si duracion > mayorDur Entonces
            mayorDur <- duracion;
            cancionMayor <- nombre;
        FinSi;
		
        Si duracion < menorDur Entonces
            menorDur <- duracion;
            cancionMenor <- nombre;
        FinSi;
		
    Hasta Que totalSeg > 4440;
	
    horas <- Trunc(totalSeg / 3600);
    minutos <- Trunc((totalSeg MOD 3600) / 60);
    segundos <- totalSeg MOD 60;
	
    Escribir "Tiempo total: ", horas, ":", minutos, ":", segundos;
    Escribir "Cancion mas larga: ", cancionMayor;
    Escribir "Cancion mas corta: ", cancionMenor;
FinProceso
