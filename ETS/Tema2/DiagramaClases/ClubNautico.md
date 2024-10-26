# Diagrama de clases Club Nautico

### Clases y Atributos:
- Socio:
Atributos: Nombre, Dirección, DNI, Teléfono, Fecha de ingreso en el club.
- Embarcación:
Atributos: Matrícula, Nombre, Tipo, Dimensiones.
- Amarre:
Atributos: Número de amarre, Lectura del contador de agua, Lectura del contador de luz, Servicios de mantenimiento contratados.
- Zona:
Atributos: Letra, Tipo de barcos, Número de barcos, Profundidad, Ancho de amarres.
- Empleado:
Atributos: Código, Nombre, Dirección, Teléfono, Especialidad.
- AsignaciónEmpleadoZona:
Atributos: Número de barcos de los que se encarga en cada zona.

### Relaciones:

- Socio y Embarcación: Un socio puede tener varias embarcaciones, pero una embarcación pertenece a un único socio.
- Embarcación y Amarre: Una embarcación ocupa un amarre y un amarre está ocupado por una sola embarcación.
- Socio y CompraAmarre: Un socio puede comprar varios amarres, pero un amarre pertenece a un único socio.
- Embarcación y AsignaciónEmbarcación: Una embarcación puede ser asignada a un amarre en una fecha específica.
- Amarre y Zona: Un amarre pertenece a una única zona, y una zona puede tener varios amarres.
- Empleado y AsignaciónEmpleadoZona: Un empleado está asignado a varias zonas, y en una zona puede haber más de un empleado. El número de barcos de los que se encarga en cada zona es de interés.

Este diagrama de clases refleja las relaciones entre las entidades del club náutico, como socios, embarcaciones, amarres, zonas y empleados. Cada clase tiene atributos específicos que representan la información relevante de cada entidad, y las relaciones capturan las interacciones y conexiones entre ellas.

### Diagrama

![DiagramaClases](https://github.com/nicholelouis/ETS/blob/main/Tema2/DiagramaClases/img/club_nautico.drawio.png?raw=true)