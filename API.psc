Algoritmo AdivinaNumero
	
    Definir min, max, num_intentos, intentos_restantes, num_secreto, intento como entero
    
	
    Escribir "Ingrese el rango de números a utilizar:"
    Escribir "Mínimo: "
    Leer min
    Escribir "Máximo: "
    Leer max
	
    Escribir "Ingrese la cantidad de intentos máximos: "
    Leer num_intentos
	
    // Generar número aleatorio
    num_secreto = Aleatorio(min, max)
	
    // Jugar
    intentos_restantes = num_intentos
    mientras intentos_restantes > 0 y no ha_adivinado hacer
        // Solicitar intento al usuario
        Escribir "Ingrese un número entre ", min, " y ", max, ": "
        Leer intento
		
        // Verificar si ha adivinado
        si intento = num_secreto entonces
            ha_adivinado = verdadero
            Escribir "¡Felicitaciones! Adivinaste el número en ", num_intentos - intentos_restantes + 1, " intentos."
        sino
            // Indicar si el número es mayor o menor
            si intento < num_secreto entonces
                Escribir "El número es mayor."
            sino
                Escribir "El número es menor."
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