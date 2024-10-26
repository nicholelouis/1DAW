# Diagrama de actividad Cajero automatico

## Actividad: Retirar dinero

1. Actividad "Insertar Tarjeta": El usuario inicia el proceso
2. insertando su tarjeta en el cajero automático.
3. Decisión "Ingresar PIN": Se verifica si el usuario debe 
4. ingresar un Número de Identificación Personal (PIN)
5. Actividad "Ingresar PIN": El usuario ingresa su PIN para autenticarse.
6. Decisión "PIN Correcto": Se verifica si el PIN ingresado es correcto. 
7. Actividad "Seleccionar Tipo de Transacción": El usuario elige la opción de retiro de efectivo.
8. Se verifica si el usuario tiene fondos suficientes en su cuenta para el retiro solicitado. Si hay fondos suficientes, se procede al siguiente paso; de lo contrario, se muestra un mensaje de error y se finaliza la transacción.
9. Se simula la dispensación de dinero del cajero automático.
10. La cuenta del usuario se actualiza restando la cantidad retirada.

![diagrama](https://github.com/nicholelouis/ETS/blob/main/img/UML%20Activity%20Diagram%20Example_%20ATM.png?raw=true)