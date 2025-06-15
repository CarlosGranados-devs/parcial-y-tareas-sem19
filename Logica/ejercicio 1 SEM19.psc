Algoritmo SistemaEvaluacionAcademica
    Definir nombre_estudiante, nombre_materia Como Cadena
    Definir num_materias, i, j Como Entero
    Definir calificacion, suma_calificaciones, promedio_materia, promedio_general Como Real
    Definir estado_academico Como Cadena
	
    Escribir "Ingrese el nombre del estudiante:"
    Leer nombre_estudiante
	
    Repetir
        Escribir "Ingrese el número de materias cursadas (entre 3 y 8):"
        Leer num_materias
    Hasta Que num_materias >= 3 Y num_materias <= 8
	
    suma_calificaciones <- 0
	
    Para i <- 1 Hasta num_materias Hacer
        Escribir "Ingrese el nombre de la materia ", i, ":"
        Leer nombre_materia
		
        promedio_materia <- 0
        Para j <- 1 Hasta 3 Hacer
            Repetir
                Escribir "Ingrese la calificación ", j, " de la materia ", nombre_materia, " (0-100):"
                Leer calificacion
            Hasta Que calificacion >= 0 Y calificacion <= 100
			
            promedio_materia <- promedio_materia + calificacion
        FinPara
		
        promedio_materia <- promedio_materia / 3
        suma_calificaciones <- suma_calificaciones + promedio_materia
        Escribir "Promedio de ", nombre_materia, ": ", promedio_materia
    FinPara
	
    promedio_general <- suma_calificaciones / num_materias
	
    Si promedio_general >= 90 Entonces
        estado_academico <- "Excelente"
    Sino
        Si promedio_general >= 80 Entonces
            estado_academico <- "Bueno"
        Sino
            Si promedio_general >= 70 Entonces
                estado_academico <- "Regular"
            Sino
                estado_academico <- "Deficiente"
            FinSi
        FinSi
    FinSi
	
    Escribir "--------------------------------------------"
    Escribir "Nombre del estudiante: ", nombre_estudiante
    Escribir "Promedio general: ", promedio_general
    Escribir "Estado académico: ", estado_academico
    Escribir "--------------------------------------------"
FinAlgoritmo
