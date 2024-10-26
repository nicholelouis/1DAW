# Caso de uso cajero automático

![Diagrama](https://github.com/nicholelouis/ETS/blob/main/img/gestion_de_un_cajero.png?raw=true)

### Actores

| Actor: Administrador                   |                                 |
| -------------------------------------- | ------------------------------- |
| **Descripción:**                       | Persona encargada de administrar el sistema de cajero. |
| **Características:**                   | Acceso a funciones de administración del sistema, como la gestión de usuarios y la configuración del cajero. |
| **Relaciones:**                        | Puede realizar algunas acciones similares a las de un Cliente Bancario, como verificar el saldo o realizar transferencias, pero con privilegios de administrador. |
| **Referencias:**                       | Realizar transferencia, Ver saldo, Ingresar dinero, Poner dinero al móvil, etc. |
| **Notas:**                             | Puede tener acceso a funciones adicionales como la gestión de cajeros, la generación de informes, etc. |
| **Autor:**                             | Nichole A Louis                  |
| **Fecha:**                             | 30/01/2024                        |

| Actor: Cliente Bancario                |                                 |
| -------------------------------------- | ------------------------------- |
| **Descripción:**                       | Persona que utiliza el cajero para realizar transacciones bancarias. |
| **Características:**                   | Acceso limitado al sistema, solo puede realizar operaciones relacionadas con su cuenta bancaria. |
| **Relaciones:**                        | No tiene relaciones directas con otros actores en el sistema. |
| **Referencias:**                       | Hacer login, Realizar transferencia, Ver saldo, Ingresar dinero, Poner dinero al móvil, etc. |
| **Notas:**                             | Puede acceder a funciones estándar de un cajero automático. |
| **Autor:**                             | Nichole A Louis                  |
| **Fecha:**                             | 30/01/2024                        |

### Casos de Uso

#### Caso de Uso CU-001: Hacer login

|                                  |                                 |
| -------------------------------- | ------------------------------- |
| **Fuentes:**                     | Especificación del sistema de cajero. |
| **Actor:**                       | Cliente Bancario                |
| **Descripción:**                 | Permite al cliente bancario acceder a su cuenta bancaria en el cajero. |
| **Flujo básico:**                | 1. El cliente ingresa su tarjeta bancaria. <br> 2. El cliente ingresa su PIN. <br> 3. El sistema verifica las credenciales del cliente. <br> 4. El cliente accede a su cuenta bancaria. |
| **Pre-condiciones:**             | El cliente debe tener una tarjeta bancaria válida. |
| **Post-condiciones:**            | El cliente está autenticado en su cuenta bancaria. |
| **Requerimientos:**              | La tarjeta bancaria debe estar activa y asociada a una cuenta válida. |
| **Notas:**                       | El sistema debe cifrar el PIN ingresado por el cliente para proteger la seguridad de la cuenta. |
| **Autor:**                       | Nichole A Louis                  |
| **Fecha:**                       | 30/01/2024                        |
| **Dependencias:**                | N/A                             |

#### Caso de Uso CU-002: Realizar transferencia

|                                  |                                 |
| -------------------------------- | ------------------------------- |
| **Fuentes:**                     | Especificación del sistema de cajero. |
| **Actor:**                       | Cliente Bancario                |
| **Descripción:**                 | Permite al cliente bancario transferir fondos a otra cuenta bancaria. |
| **Flujo básico:**                | 1. El cliente selecciona la opción de transferencia en el menú. <br> 2. El cliente ingresa los detalles de la cuenta destino y el monto a transferir. <br> 3. El sistema verifica la disponibilidad de fondos en la cuenta del cliente. <br> 4. Se realiza la transferencia y se actualizan los saldos. |
| **Pre-condiciones:**             | El cliente debe estar autenticado en su cuenta bancaria. |
| **Post-condiciones:**            | Se realiza con éxito la transferencia de fondos. |
| **Requerimientos:**              | El cliente debe tener suficientes fondos en su cuenta para completar la transferencia. |
| **Notas:**                       | El sistema debe enviar un mensaje de confirmación al cliente después de completar la transferencia. |
| **Autor:**                       | Nichole A Louis                  |
| **Fecha:**                       | 30/01/2024                        |
| **Dependencias:**                | CU-001 Hacer login               |

#### Caso de Uso CU-003: Ingresar dinero

|                                  |                                 |
| -------------------------------- | ------------------------------- |
| **Fuentes:**                     | Especificación del sistema de cajero. |
| **Actor:**                       | Cliente Bancario                |
| **Descripción:**                 | Permite al cliente bancario depositar dinero en su cuenta bancaria a través del cajero. |
| **Flujo básico:**                | 1. El cliente selecciona la opción de ingresar dinero en el menú. <br> 2. El cliente inserta el dinero en la ranura designada. <br> 3. El sistema cuenta y verifica la cantidad de dinero ingresado. <br> 4. Se actualiza el saldo de la cuenta del cliente. |
| **Pre-condiciones:**             | El cliente debe estar autenticado en su cuenta bancaria. |
| **Post-condiciones:**            | Se deposita con éxito el dinero en la cuenta del cliente. |
| **Requerimientos:**              | El cajero debe tener la capacidad de aceptar depósitos de dinero en efectivo. |
| **Notas:**                       | El sistema debe proporcionar un recibo al cliente después de cada depósito. |
| **Autor:**                       | Nichole A Louis                  |
| **Fecha:**                       | 30/01/2024                        |
| **Dependencias:**                | CU-001 Hacer login               |

#### Caso de Uso CU-004: Ver saldo

|                                  |                                 |
| -------------------------------- | ------------------------------- |
| **Fuentes:**                     | Especificación del sistema de cajero. |
| **Actor:**                       | Cliente Bancario                |
| **Descripción:**                 | Permite al cliente bancario verificar el saldo disponible en su cuenta. |
| **Flujo básico:**                | 1. El cliente selecciona la opción de ver saldo en el menú. <br> 2. El sistema muestra el saldo actual de la cuenta del cliente. |
| **Pre-condiciones:**             | El cliente debe estar autenticado en su cuenta bancaria. |
| **Post-condiciones:**            | Se muestra el saldo actualizado al cliente. |
| **Requerimientos:**              | -                               |
| **Notas:**                       | El sistema debe mostrar el saldo de forma clara y legible para el cliente. |
| **Autor:** Nichole A Louis

