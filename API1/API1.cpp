#include <iostream>
#include <cstdlib>
#include <ctime>
using namespace std;


int main(){
   int max, min, numero_intentos, intentos_restantes;
   int number_secreto, intento;
   bool ganaste = false;

   //solicitar la informacion al usuario
    cout << "Ingrese el rango de números a utilizar:" << endl;
    cout << "Minimo: ", cin >> min;
    
    cout << "Maximo: ", cin >> max;

    cout << "Ingrese el número de intentos máximos: ", cin >> numero_intentos;

    //generar el número aleatorio
    srand(time(NULL));
    number_secreto = rand() % (max - min + 1) + min;

    //iniciar el juego
    intentos_restantes = numero_intentos;
    while(intentos_restantes > 0 && !ganaste){
        //Solicitar intentos al usuario
        cout << "Ingrese un numero entre: "<< min << " y " << max << ": ", cin >> intento;

        //verificar si ha ganado
        if(intento == number_secreto){
            ganaste = true;
            cout << "Ganaste!" << endl;
        }else{
            intentos_restantes--;
            if(intentos_restantes > 0){
                if(intento > number_secreto){
                    cout << "El número secreto es menor" << endl;
                }else{
                    cout << "El número secreto es mayor" << endl;
                }
                cout << "Te quedan " << intentos_restantes << " intentos" << endl;
            }else{
                cout << "Lo siento, te has quedado sin intentos." << endl;
            }
        }
    }
}