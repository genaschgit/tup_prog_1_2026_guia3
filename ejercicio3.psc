Proceso ejercicio3
	Definir codigo, lotesProcesados Como Entero;
    Definir medidaEsperada, medicion Como Real;
    Definir errorAbs, mayorError Como Real;
    Definir fallasLote, fallasTotales Como Entero;
    Definir porcentajeFallas, porcentajeTotal Como Real;
    Definir menorFallas, loteMenorFallas Como Entero;
    Definir i Como Entero;
	
    lotesProcesados <- 0;
    fallasTotales <- 0;
    menorFallas <- 11;
	
    Escribir "Ingrese codigo de lote (0 para finalizar):";
    Leer codigo;
	
    Mientras codigo <> 0 Hacer
		
        lotesProcesados <- lotesProcesados + 1;
        fallasLote <- 0;
        mayorError <- 0;
		
        Escribir "Ingrese medida esperada:";
        Leer medidaEsperada;
		
        Para i <- 1 Hasta 10 Hacer
			
            Escribir "Ingrese medicion del producto ", i, ":";
            Leer medicion;
			
            errorAbs <- Abs(medicion - medidaEsperada);
			
            Si errorAbs > mayorError Entonces
                mayorError <- errorAbs;
            FinSi;
			
            Si errorAbs > 0 Entonces
                fallasLote <- fallasLote + 1;
            FinSi;
			
        FinPara;
		
        porcentajeFallas <- (fallasLote * 100) / 10;
		
        Escribir "Mayor error absoluto: ", mayorError;
        Escribir "Porcentaje de fallas del lote: ", porcentajeFallas, "%";
		
        fallasTotales <- fallasTotales + fallasLote;
		
        Si fallasLote < menorFallas Entonces
            menorFallas <- fallasLote;
            loteMenorFallas <- codigo;
        FinSi;
		
        Escribir "Ingrese codigo de lote (0 para finalizar):";
        Leer codigo;
		
    FinMientras;
	
    Si lotesProcesados > 0 Entonces
		
        porcentajeTotal <- (fallasTotales * 100) / (lotesProcesados * 10);
		
        Escribir "--------------------------------";
        Escribir "Cantidad de lotes procesados: ", lotesProcesados;
        Escribir "Porcentaje total de fallas: ", porcentajeTotal, "%";
        Escribir "Lote con menor cantidad de fallas: ", loteMenorFallas;
		
    Sino
		
        Escribir "No se procesaron lotes";
		
    FinSi;
FinProceso
