# Sistema de Biblioteca - Diagrama de Casos de Uso

## Actores

| Actor           | Descripción                                                |
|-----------------|------------------------------------------------------------|
| Usuario         | Persona que utiliza el sistema de biblioteca.              |
| Bibliotecario   | Encargado de gestionar el sistema de biblioteca.            |

## Casos de Uso

### 1. Buscar Libro

- **Actor Principal:** Usuario
- **Descripción:** Permite al usuario buscar libros en el catálogo de la biblioteca.
- **Flujo Básico:**
  1. El usuario inicia sesión en el sistema.
  2. Navega a la opción de búsqueda de libros.
  3. Ingresa criterios de búsqueda (título, autor, género, etc.).
  4. Selecciona un libro de los resultados.

### 2. Prestar Libro

- **Actor Principal:** Bibliotecario
- **Descripción:** Permite al bibliotecario realizar el préstamo de un libro a un usuario.
- **Flujo Básico:**
  1. El bibliotecario inicia sesión en el sistema.
  2. Escanea el libro a prestar.
  3. Ingresa el ID del usuario que solicita el préstamo.
  4. Registra la transacción y actualiza el estado del libro.

### 3. Devolver Libro

- **Actor Principal:** Bibliotecario
- **Descripción:** Permite al bibliotecario registrar la devolución de un libro por parte de un usuario.
- **Flujo Básico:**
  1. El bibliotecario inicia sesión en el sistema.
  2. Escanea el libro a devolver.
  3. Verifica la condición del libro y actualiza el estado.
  4. Registra la transacción de devolución.

### 4. Renovar Préstamo

- **Actor Principal:** Usuario
- **Descripción:** Permite al usuario renovar el préstamo de un libro, si es posible.
- **Flujo Básico:**
  1. El usuario inicia sesión en el sistema.
  2. Accede a la sección de préstamos.
  3. Selecciona el libro a renovar.
  4. Confirma la renovación si cumple con las condiciones establecidas.

### 5. Gestionar Inventario

- **Actor Principal:** Bibliotecario
- **Descripción:** Permite al bibliotecario realizar operaciones de gestión en el inventario de libros.
- **Flujo Básico:**
  1. El bibliotecario inicia sesión en el sistema.
  2. Accede a la sección de gestión de inventario.
  3. Realiza operaciones como agregar nuevos libros, eliminar libros obsoletos, etc.

## Notas

- El sistema debe contar con medidas de seguridad para proteger la información de los usuarios y la integridad del inventario.
- Se deben implementar restricciones y validaciones en los casos de uso, según las políticas de la biblioteca.

---

**Fecha de Creación:** 21/01/24
**Autor:** Nichole A Louis.
