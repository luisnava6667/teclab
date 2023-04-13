Algoritmo AdivinaNumero
	
    Definir min, max, num_intentos, intentos_restantes, num_secreto, intento como entero
    
	
    Escribir "Ingrese el rango de n�meros a utilizar:"
    Escribir "M�nimo: "
    Leer min
    Escribir "M�ximo: "
    Leer max
	
    Escribir "Ingrese la cantidad de intentos m�ximos: "
    Leer num_intentos
	
    // Generar n�mero aleatorio
    num_secreto = Aleatorio(min, max)
	
    // Jugar
    intentos_restantes = num_intentos
    mientras intentos_restantes > 0 y no ha_adivinado hacer
        // Solicitar intento al usuario
        Escribir "Ingrese un n�mero entre ", min, " y ", max, ": "
        Leer intento
		
        // Verificar si ha adivinado
        si intento = num_secreto entonces
            ha_adivinado = verdadero
            Escribir "�Felicitaciones! Adivinaste el n�mero en ", num_intentos - intentos_restantes + 1, " intentos."
        sino
            // Indicar si el n�mero es mayor o menor
            si intento < num_secreto entonces
                Escribir "El n�mero es mayor."
            sino
                Escribir "El n�mero es menor."
            fin si
			
            // Indicar cantidad de intentos restantes
            intentos_restantes = intentos_restantes - 1
            si intentos_restantes > 0 entonces
                Escribir "Te quedan ", intentos_restantes, " intentos."
            sino
                Escribir "Lo siento, te has quedado sin intentos."
            fin si
        fin si
    fin mientras
	
FinAlgoritmo