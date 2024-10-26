# Aplicación de transporte

En este análisis, examinaremos el diagrama de comportamiento presente en la imagen proporcionada por el pofesor David Bilbao.

## Diagrama de comportamiento

### Actores 

| **Actor**       | Administrador                                       |
|-----------------|-----------------------------------------------------|
| **Descripción** | El administrador supervisa el sistema de transporte, con la capacidad de ajustar parámetros y configuraciones. |
| **Características** | Habilidades para gestionar usuarios y funciones administrativas, además de conocimientos técnicos. |
| **Relaciones**  | Interactúa con Usuarios (gestión de cuentas), Proveedores de servicios de transporte (modificación de opciones), y Sistema (configuraciones). |
| **Referencias** | Ejecuta acciones administrativas como "Gestionar usuarios" y "Configurar opciones de transporte". |
| **Notas**       | Puede ser una persona designada con habilidades técnicas o un rol organizacional específico. |
| **Autor**       | Nichole A Louis.                              |
| **Fecha**       | 21/01/2024                                          |

### Casos de uso

| **Caso de Uso CU** | Definir Medio de Transporte                                      |
|---------------------|-----------------------------------------------------------------|
| **Fuentes**         | Documento de requisitos del sistema.                             |
| **Actor**           | Administrador                                                   |
| **Descripción**     | Permite al administrador agregar un nuevo medio de transporte al sistema, especificando sus detalles. |
| **Flujo básico**    | 1. Inicio de sesión del administrador. 2. Navegación a "Definir Medio de Transporte". 3. Ingreso de información (nombre, tipo, capacidad, etc.). 4. Confirmación de la adición. |
| **Pre-condiciones** | El administrador está conectado al sistema.                     |
| **Post-condiciones**| El nuevo medio de transporte se registra y está listo para su uso. |
| **Requerimientos** | Acceso a la función de administración de medios de transporte.   |
| **Notas**          | Fundamental para mantener actualizado el catálogo de medios de transporte en el sistema. |
| **Autor**          | Nichole A Louis.                   |
| **Fecha**          | 21/01/2024                                                      |

