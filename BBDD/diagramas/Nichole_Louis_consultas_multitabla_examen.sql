-- ----------------------------------------
-- Consultas sobre una tabla
-- 0,2 puntos la correcta. Total = 1,4 puntos
-- ----------------------------------------

-- 1.- Devuelve un listado con todos las compras que se han realizado. Las compras deben estar ordenados
-- por la fecha de realización, mostrando en primer lugar las compras más recientes.
SELECT * from compra ORDER BY fecha desc;
/**
┌────┬─────────┬────────────┬───────────────┬──────────────────┐
│ id │  total  │   fecha    │ id_consumidor │ id_suministrador │
├────┼─────────┼────────────┼───────────────┼──────────────────┤
│ 15 │ 370.85  │ 2022-03-11 │ 1             │ 5                │
│ 16 │ 2389.23 │ 2022-03-11 │ 1             │ 5                │
│ 13 │ 545.75  │ 2022-01-25 │ 6             │ 1                │
│ 8  │ 1983.43 │ 2020-10-10 │ 4             │ 6                │
│ 1  │ 150.5   │ 2020-10-05 │ 5             │ 2                │
│ 3  │ 65.26   │ 2020-10-05 │ 2             │ 1                │
│ 5  │ 948.5   │ 2020-09-10 │ 5             │ 2                │
│ 12 │ 3045.6  │ 2020-04-25 │ 2             │ 1                │
│ 14 │ 145.82  │ 2020-02-02 │ 6             │ 1                │
│ 9  │ 2480.4  │ 2019-10-10 │ 8             │ 3                │
│ 2  │ 270.65  │ 2019-09-10 │ 1             │ 5                │
│ 4  │ 110.5   │ 2019-08-17 │ 8             │ 3                │
│ 11 │ 75.29   │ 2019-08-17 │ 3             │ 7                │
│ 6  │ 2400.6  │ 2019-07-27 │ 7             │ 1                │
│ 7  │ 5760.0  │ 2018-09-10 │ 2             │ 1                │
│ 10 │ 250.45  │ 2018-06-27 │ 8             │ 2                │
└────┴─────────┴────────────┴───────────────┴──────────────────┘
**/
-- 2. Devuelve todos los datos de los dos compras de mayor valor.
SELECT * from compra ORDER BY total desc LIMIT 2;
/**
┌────┬────────┬────────────┬───────────────┬──────────────────┐
│ id │ total  │   fecha    │ id_consumidor │ id_suministrador │
├────┼────────┼────────────┼───────────────┼──────────────────┤
│ 7  │ 5760.0 │ 2018-09-10 │ 2             │ 1                │
│ 12 │ 3045.6 │ 2020-04-25 │ 2             │ 1                │
└────┴────────┴────────────┴───────────────┴──────────────────┘
**/

-- 3. Devuelve un listado con los identificadores de los consumidores que han realizado algún compra.
-- Tenga en cuenta que no debe mostrar identificadores que estén repetidos.

SELECT DISTINCT (id_consumidor) FROM compra ;
/**
┌───────────────┐
│ id_consumidor │
├───────────────┤
│ 5             │
│ 1             │
│ 2             │
│ 8             │
│ 7             │
│ 4             │
│ 3             │
│ 6             │
└───────────────┘
**/

-- 4. Devuelve un listado de todos las compras que se realizaron durante el año 2020,
-- cuya cantidad total sea superior a 500€.

 SELECT * FROM compra WHERE total > 500 and fecha REGEXP '^2020';

/**
┌────┬─────────┬────────────┬───────────────┬──────────────────┐
│ id │  total  │   fecha    │ id_consumidor │ id_suministrador │
├────┼─────────┼────────────┼───────────────┼──────────────────┤
│ 5  │ 948.5   │ 2020-09-10 │ 5             │ 2                │
│ 8  │ 1983.43 │ 2020-10-10 │ 4             │ 6                │
│ 12 │ 3045.6  │ 2020-04-25 │ 2             │ 1                │
└────┴─────────┴────────────┴───────────────┴──────────────────┘
**/ 

-- 5. Devuelve un listado con el nombre y los apellidos de los suministradores que tienen una comisión entre 0.11 y 0.15.

SELECT * FROM suministrador WHERE categoria in (0.11, 0.15);


/**
┌────┬─────────┬───────────┬───────────┬───────────┐
│ id │ nombre  │ apellido1 │ apellido2 │ categoria │
├────┼─────────┼───────────┼───────────┼───────────┤
│ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │
│ 3  │ Diego   │ Flores    │ Salas     │ 0.11      │
│ 7  │ Antonio │ Vega      │ Hernández │ 0.11      │
└────┴─────────┴───────────┴───────────┴───────────┘
**/

-- 6. Devuelve el valor de la comisión de mayor valor que existe en la tabla suministrador.

SELECT max(categoria) FROM suministrador ;


/**
┌────────────────┐
│ max(categoria) │
├────────────────┤
│ 0.15           │
└────────────────┘wher  
**/

-- 7. Devuelve el identificador, nombre y primer apellido de aquellos consumidores cuyo segundo apellido no es NULL.
-- El listado deberá estar ordenado alfabéticamente por apellidos y nombre.

SELECT  id, nombre , apellido1 FROM consumidor WHERE apellido2 is NOT NULL ORDER BY apellido1, nombre ;
/**
┌────┬───────────┬───────────┐
│ id │  nombre   │ apellido1 │
├────┼───────────┼───────────┤
│ 5  │ Marcos    │ Loyola    │
│ 9  │ Guillermo │ López     │
│ 1  │ Aarón     │ Rivero    │
│ 3  │ Adolfo    │ Rubio     │
│ 8  │ Pepe      │ Ruiz      │
│ 2  │ Adela     │ Salas     │
│ 10 │ Daniel    │ Santana   │
│ 6  │ María     │ Santana   │
└────┴───────────┴───────────┘
**/

-- (Consultas Multitabla Where)
-- -----------------------------------------------
-- 0,3 puntos la correcta. Total =  2,1 puntos
-- -----------------------------------------------

-- 1. Devuelve un listado con el identificador, nombre y los apellidos de todos los consumidores que han realizado algún compra.
-- El listado debe estar ordenado alfabéticamente y se deben eliminar los elementos repetidos.

SELECT DISTINCT c.id, c.nombre, c.apellido1, c.apellido2 FROM consumidor as c, compra as cp WHERE c.id=cp.id_consumidor ORDER BY c.nombre;


/**
┌────┬────────┬───────────┬───────────┐
│ id │ nombre │ apellido1 │ apellido2 │
├────┼────────┼───────────┼───────────┤
│ 1  │ Aarón  │ Rivero    │ Gómez     │
│ 2  │ Adela  │ Salas     │ Díaz      │
│ 3  │ Adolfo │ Rubio     │ Flores    │
│ 4  │ Adrián │ Suárez    │           │
│ 5  │ Marcos │ Loyola    │ Méndez    │
│ 6  │ María  │ Santana   │ Moreno    │
│ 8  │ Pepe   │ Ruiz      │ Santana   │
│ 7  │ Pilar  │ Ruiz      │           │
└────┴────────┴───────────┴───────────┘
**/



-- 2. Devuelve un listado que muestre todos las compras que ha realizado cada consumidor. 
-- El resultado debe mostrar todos los datos de las compras y del consumidor. El listado debe mostrar los datos de los consumidores ordenados alfabéticamente.

SELECT c.*, cp.* FROM consumidor as c, compra as cp WHERE c.id=cp.id_consumidor ORDER BY c.nombre, c.apellido1;
/**
┌────┬────────┬───────────┬───────────┬─────────┬───────────┬────┬─────────┬────────────┬───────────────┬──────────────────┐
│ id │ nombre │ apellido1 │ apellido2 │ ciudad  │ categoria │ id │  total  │   fecha    │ id_consumidor │ id_suministrador │
├────┼────────┼───────────┼───────────┼─────────┼───────────┼────┼─────────┼────────────┼───────────────┼──────────────────┤
│ 1  │ Aarón  │ Rivero    │ Gómez     │ Almería │ 100       │ 2  │ 270.65  │ 2019-09-10 │ 1             │ 5                │
│ 1  │ Aarón  │ Rivero    │ Gómez     │ Almería │ 100       │ 15 │ 370.85  │ 2022-03-11 │ 1             │ 5                │
│ 1  │ Aarón  │ Rivero    │ Gómez     │ Almería │ 100       │ 16 │ 2389.23 │ 2022-03-11 │ 1             │ 5                │
│ 2  │ Adela  │ Salas     │ Díaz      │ Granada │ 200       │ 3  │ 65.26   │ 2020-10-05 │ 2             │ 1                │
│ 2  │ Adela  │ Salas     │ Díaz      │ Granada │ 200       │ 7  │ 5760.0  │ 2018-09-10 │ 2             │ 1                │
│ 2  │ Adela  │ Salas     │ Díaz      │ Granada │ 200       │ 12 │ 3045.6  │ 2020-04-25 │ 2             │ 1                │
│ 3  │ Adolfo │ Rubio     │ Flores    │ Sevilla │           │ 11 │ 75.29   │ 2019-08-17 │ 3             │ 7                │
│ 4  │ Adrián │ Suárez    │           │ Jaén    │ 300       │ 8  │ 1983.43 │ 2020-10-10 │ 4             │ 6                │
│ 5  │ Marcos │ Loyola    │ Méndez    │ Almería │ 200       │ 1  │ 150.5   │ 2020-10-05 │ 5             │ 2                │
│ 5  │ Marcos │ Loyola    │ Méndez    │ Almería │ 200       │ 5  │ 948.5   │ 2020-09-10 │ 5             │ 2                │
│ 6  │ María  │ Santana   │ Moreno    │ Cádiz   │ 100       │ 13 │ 545.75  │ 2022-01-25 │ 6             │ 1                │
│ 6  │ María  │ Santana   │ Moreno    │ Cádiz   │ 100       │ 14 │ 145.82  │ 2020-02-02 │ 6             │ 1                │
│ 8  │ Pepe   │ Ruiz      │ Santana   │ Huelva  │ 200       │ 4  │ 110.5   │ 2019-08-17 │ 8             │ 3                │
│ 8  │ Pepe   │ Ruiz      │ Santana   │ Huelva  │ 200       │ 9  │ 2480.4  │ 2019-10-10 │ 8             │ 3                │
│ 8  │ Pepe   │ Ruiz      │ Santana   │ Huelva  │ 200       │ 10 │ 250.45  │ 2018-06-27 │ 8             │ 2                │
│ 7  │ Pilar  │ Ruiz      │           │ Sevilla │ 300       │ 6  │ 2400.6  │ 2019-07-27 │ 7             │ 1                │
└────┴────────┴───────────┴───────────┴─────────┴───────────┴────┴─────────┴────────────┴───────────────┴──────────────────┘
**/


-- 3. Devuelve un listado que muestre todos las compras en los que ha participado un suministrador.
-- El resultado debe mostrar todos los datos de las compras y de los suministradores.
-- El listado debe mostrar los datos de los suministradores ordenados alfabéticamente.

SELECT cp.*, s.* FROM suministrador as s, compra as cp WHERE cp.id_suministrador=s.id ORDER BY s.nombre;
/**
┌────┬────────┬───────────┬───────────┬─────────┬───────────┬────┬─────────┬────────────┬───────────────┬──────────────────┐
│ id │ nombre │ apellido1 │ apellido2 │ ciudad  │ categoria │ id │  total  │   fecha    │ id_consumidor │ id_suministrador │
├────┼────────┼───────────┼───────────┼─────────┼───────────┼────┼─────────┼────────────┼───────────────┼──────────────────┤
│ 1  │ Aarón  │ Rivero    │ Gómez     │ Almería │ 100       │ 2  │ 270.65  │ 2019-09-10 │ 1             │ 5                │
│ 1  │ Aarón  │ Rivero    │ Gómez     │ Almería │ 100       │ 15 │ 370.85  │ 2022-03-11 │ 1             │ 5                │
│ 1  │ Aarón  │ Rivero    │ Gómez     │ Almería │ 100       │ 16 │ 2389.23 │ 2022-03-11 │ 1             │ 5                │
│ 2  │ Adela  │ Salas     │ Díaz      │ Granada │ 200       │ 3  │ 65.26   │ 2020-10-05 │ 2             │ 1                │
│ 2  │ Adela  │ Salas     │ Díaz      │ Granada │ 200       │ 7  │ 5760.0  │ 2018-09-10 │ 2             │ 1                │
│ 2  │ Adela  │ Salas     │ Díaz      │ Granada │ 200       │ 12 │ 3045.6  │ 2020-04-25 │ 2             │ 1                │
│ 3  │ Adolfo │ Rubio     │ Flores    │ Sevilla │           │ 11 │ 75.29   │ 2019-08-17 │ 3             │ 7                │
│ 4  │ Adrián │ Suárez    │           │ Jaén    │ 300       │ 8  │ 1983.43 │ 2020-10-10 │ 4             │ 6                │
│ 5  │ Marcos │ Loyola    │ Méndez    │ Almería │ 200       │ 1  │ 150.5   │ 2020-10-05 │ 5             │ 2                │
│ 5  │ Marcos │ Loyola    │ Méndez    │ Almería │ 200       │ 5  │ 948.5   │ 2020-09-10 │ 5             │ 2                │
│ 6  │ María  │ Santana   │ Moreno    │ Cádiz   │ 100       │ 13 │ 545.75  │ 2022-01-25 │ 6             │ 1                │
│ 6  │ María  │ Santana   │ Moreno    │ Cádiz   │ 100       │ 14 │ 145.82  │ 2020-02-02 │ 6             │ 1                │
│ 8  │ Pepe   │ Ruiz      │ Santana   │ Huelva  │ 200       │ 4  │ 110.5   │ 2019-08-17 │ 8             │ 3                │
│ 8  │ Pepe   │ Ruiz      │ Santana   │ Huelva  │ 200       │ 9  │ 2480.4  │ 2019-10-10 │ 8             │ 3                │
│ 8  │ Pepe   │ Ruiz      │ Santana   │ Huelva  │ 200       │ 10 │ 250.45  │ 2018-06-27 │ 8             │ 2                │
│ 7  │ Pilar  │ Ruiz      │           │ Sevilla │ 300       │ 6  │ 2400.6  │ 2019-07-27 │ 7             │ 1                │
└────┴────────┴───────────┴───────────┴─────────┴───────────┴────┴─────────┴────────────┴───────────────┴──────────────────┘
**/

-- 4. Devuelve un listado que muestre todos los consumidores, con todos las compras que han realizado 
-- y con los datos de los suministradores asociados a cada compra.

SELECT c.*, cp.*, s.* FROM consumidor as c, compra as cp, suministrador as s WHERE c.id=cp.id_consumidor and cp.id_suministrador=s.id;
/**
┌────┬────────┬───────────┬───────────┬─────────┬───────────┬────┬─────────┬────────────┬───────────────┬──────────────────┬────┬─────────┬───────────┬───────────┬───────────┐
│ id │ nombre │ apellido1 │ apellido2 │ ciudad  │ categoria │ id │  total  │   fecha    │ id_consumidor │ id_suministrador │ id │ nombre  │ apellido1 │ apellido2 │ categoria │
├────┼────────┼───────────┼───────────┼─────────┼───────────┼────┼─────────┼────────────┼───────────────┼──────────────────┼────┼─────────┼───────────┼───────────┼───────────┤
│ 5  │ Marcos │ Loyola    │ Méndez    │ Almería │ 200       │ 1  │ 150.5   │ 2020-10-05 │ 5             │ 2                │ 2  │ Juan    │ Gómez     │ López     │ 0.13      │
│ 1  │ Aarón  │ Rivero    │ Gómez     │ Almería │ 100       │ 2  │ 270.65  │ 2019-09-10 │ 1             │ 5                │ 5  │ Antonio │ Carretero │ Ortega    │ 0.12      │
│ 2  │ Adela  │ Salas     │ Díaz      │ Granada │ 200       │ 3  │ 65.26   │ 2020-10-05 │ 2             │ 1                │ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │
│ 8  │ Pepe   │ Ruiz      │ Santana   │ Huelva  │ 200       │ 4  │ 110.5   │ 2019-08-17 │ 8             │ 3                │ 3  │ Diego   │ Flores    │ Salas     │ 0.11      │
│ 5  │ Marcos │ Loyola    │ Méndez    │ Almería │ 200       │ 5  │ 948.5   │ 2020-09-10 │ 5             │ 2                │ 2  │ Juan    │ Gómez     │ López     │ 0.13      │
│ 7  │ Pilar  │ Ruiz      │           │ Sevilla │ 300       │ 6  │ 2400.6  │ 2019-07-27 │ 7             │ 1                │ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │
│ 2  │ Adela  │ Salas     │ Díaz      │ Granada │ 200       │ 7  │ 5760.0  │ 2018-09-10 │ 2             │ 1                │ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │
│ 4  │ Adrián │ Suárez    │           │ Jaén    │ 300       │ 8  │ 1983.43 │ 2020-10-10 │ 4             │ 6                │ 6  │ Manuel  │ Domínguez │ Hernández │ 0.13      │
│ 8  │ Pepe   │ Ruiz      │ Santana   │ Huelva  │ 200       │ 9  │ 2480.4  │ 2019-10-10 │ 8             │ 3                │ 3  │ Diego   │ Flores    │ Salas     │ 0.11      │
│ 8  │ Pepe   │ Ruiz      │ Santana   │ Huelva  │ 200       │ 10 │ 250.45  │ 2018-06-27 │ 8             │ 2                │ 2  │ Juan    │ Gómez     │ López     │ 0.13      │
│ 3  │ Adolfo │ Rubio     │ Flores    │ Sevilla │           │ 11 │ 75.29   │ 2019-08-17 │ 3             │ 7                │ 7  │ Antonio │ Vega      │ Hernández │ 0.11      │
│ 2  │ Adela  │ Salas     │ Díaz      │ Granada │ 200       │ 12 │ 3045.6  │ 2020-04-25 │ 2             │ 1                │ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │
│ 6  │ María  │ Santana   │ Moreno    │ Cádiz   │ 100       │ 13 │ 545.75  │ 2022-01-25 │ 6             │ 1                │ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │
│ 6  │ María  │ Santana   │ Moreno    │ Cádiz   │ 100       │ 14 │ 145.82  │ 2020-02-02 │ 6             │ 1                │ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │
│ 1  │ Aarón  │ Rivero    │ Gómez     │ Almería │ 100       │ 15 │ 370.85  │ 2022-03-11 │ 1             │ 5                │ 5  │ Antonio │ Carretero │ Ortega    │ 0.12      │
│ 1  │ Aarón  │ Rivero    │ Gómez     │ Almería │ 100       │ 16 │ 2389.23 │ 2022-03-11 │ 1             │ 5                │ 5  │ Antonio │ Carretero │ Ortega    │ 0.12      │
└────┴────────┴───────────┴───────────┴─────────┴───────────┴────┴─────────┴────────────┴───────────────┴──────────────────┴────┴─────────┴───────────┴───────────┴───────────┘
**/
-- 5. Devuelve un listado de todos los consumidores que realizaron un compra durante el año 2020,
-- cuya cantidad esté entre 300 € y 1000 €.
SELECT c.* FROM consumidor as c, compra as cp WHERE c.id=cp.id_consumidor and cp.fecha REGEXP '^2020' and cp.total BETWEEN 300 and 1000;
/**
┌────┬────────┬───────────┬───────────┬─────────┬───────────┐
│ id │ nombre │ apellido1 │ apellido2 │ ciudad  │ categoria │
├────┼────────┼───────────┼───────────┼─────────┼───────────┤
│ 5  │ Marcos │ Loyola    │ Méndez    │ Almería │ 200       │
└────┴────────┴───────────┴───────────┴─────────┴───────────┘
**/

-- 6. Devuelve el nombre y los apellidos de todos los suministradores que ha participado en algún compra realizado por María Santana Moreno.

SELECT DISTINCT s.* FROM consumidor as c, compra as cp, suministrador as s WHERE c.id=cp.id_consumidor and cp.id_suministrador=s.id and c.nombre= 'María' and c.apellido1='Santana' and c.apellido2='Moreno';
/**
┌────┬────────┬───────────┬───────────┬───────────┐
│ id │ nombre │ apellido1 │ apellido2 │ categoria │
├────┼────────┼───────────┼───────────┼───────────┤
│ 1  │ Daniel │ Sáez      │ Vega      │ 0.15      │
└────┴────────┴───────────┴───────────┴───────────┘
**/

-- 7. Devuelve el nombre de todos los consumidores que han realizado algún compra con el suministrador Daniel Sáez Vega.
SELECT DISTINCT c.* FROM consumidor as c, compra as cp, suministrador as s WHERE c.id=cp.id_consumidor and cp.id_suministrador=s.id and s.nombre='Daniel' and s.apellido1='Sáez' and s.apellido2='Vega';
/**
┌────┬────────┬───────────┬───────────┬─────────┬───────────┐
│ id │ nombre │ apellido1 │ apellido2 │ ciudad  │ categoria │
├────┼────────┼───────────┼───────────┼─────────┼───────────┤
│ 2  │ Adela  │ Salas     │ Díaz      │ Granada │ 200       │
│ 7  │ Pilar  │ Ruiz      │           │ Sevilla │ 300       │
│ 6  │ María  │ Santana   │ Moreno    │ Cádiz   │ 100       │
└────┴────────┴───────────┴───────────┴─────────┴───────────┘
**/

-- (Consultas Multitabla Join)
-- -----------------------------------------------
-- 0,3 puntos la correcta. Total = 2,1 puntos
-- -----------------------------------------------

-- 1. Devuelve un listado con el identificador, nombre y los apellidos de todos los consumidores que han realizado algún compra.
-- El listado debe estar ordenado alfabéticamente y se deben eliminar los elementos repetidos.

SELECT DISTINCT c.id, c.nombre, c.apellido1, c.apellido2 FROM consumidor as c JOIN compra as cp on c.id=cp.id_consumidor ORDER BY c.nombre;
/**
┌────┬────────┬───────────┬───────────┐
│ id │ nombre │ apellido1 │ apellido2 │
├────┼────────┼───────────┼───────────┤
│ 1  │ Aarón  │ Rivero    │ Gómez     │
│ 2  │ Adela  │ Salas     │ Díaz      │
│ 3  │ Adolfo │ Rubio     │ Flores    │
│ 4  │ Adrián │ Suárez    │           │
│ 5  │ Marcos │ Loyola    │ Méndez    │
│ 6  │ María  │ Santana   │ Moreno    │
│ 8  │ Pepe   │ Ruiz      │ Santana   │
│ 7  │ Pilar  │ Ruiz      │           │
└────┴────────┴───────────┴───────────┘
**/

-- 2. Devuelve un listado que muestre todos las compras que ha realizado cada consumidor. 
-- El resultado debe mostrar todos los datos de las compras y del consumidor. El listado debe mostrar los datos de los consumidores ordenados alfabéticamente.

SELECT c.*, cp.* FROM consumidor as c JOIN compra as cp on c.id=cp.id_consumidor ORDER BY c.nombre;
/**
┌────┬────────┬───────────┬───────────┬─────────┬───────────┬────┬─────────┬────────────┬───────────────┬──────────────────┐
│ id │ nombre │ apellido1 │ apellido2 │ ciudad  │ categoria │ id │  total  │   fecha    │ id_consumidor │ id_suministrador │
├────┼────────┼───────────┼───────────┼─────────┼───────────┼────┼─────────┼────────────┼───────────────┼──────────────────┤
│ 1  │ Aarón  │ Rivero    │ Gómez     │ Almería │ 100       │ 2  │ 270.65  │ 2019-09-10 │ 1             │ 5                │
│ 1  │ Aarón  │ Rivero    │ Gómez     │ Almería │ 100       │ 15 │ 370.85  │ 2022-03-11 │ 1             │ 5                │
│ 1  │ Aarón  │ Rivero    │ Gómez     │ Almería │ 100       │ 16 │ 2389.23 │ 2022-03-11 │ 1             │ 5                │
│ 2  │ Adela  │ Salas     │ Díaz      │ Granada │ 200       │ 3  │ 65.26   │ 2020-10-05 │ 2             │ 1                │
│ 2  │ Adela  │ Salas     │ Díaz      │ Granada │ 200       │ 7  │ 5760.0  │ 2018-09-10 │ 2             │ 1                │
│ 2  │ Adela  │ Salas     │ Díaz      │ Granada │ 200       │ 12 │ 3045.6  │ 2020-04-25 │ 2             │ 1                │
│ 3  │ Adolfo │ Rubio     │ Flores    │ Sevilla │           │ 11 │ 75.29   │ 2019-08-17 │ 3             │ 7                │
│ 4  │ Adrián │ Suárez    │           │ Jaén    │ 300       │ 8  │ 1983.43 │ 2020-10-10 │ 4             │ 6                │
│ 5  │ Marcos │ Loyola    │ Méndez    │ Almería │ 200       │ 1  │ 150.5   │ 2020-10-05 │ 5             │ 2                │
│ 5  │ Marcos │ Loyola    │ Méndez    │ Almería │ 200       │ 5  │ 948.5   │ 2020-09-10 │ 5             │ 2                │
│ 6  │ María  │ Santana   │ Moreno    │ Cádiz   │ 100       │ 13 │ 545.75  │ 2022-01-25 │ 6             │ 1                │
│ 6  │ María  │ Santana   │ Moreno    │ Cádiz   │ 100       │ 14 │ 145.82  │ 2020-02-02 │ 6             │ 1                │
│ 8  │ Pepe   │ Ruiz      │ Santana   │ Huelva  │ 200       │ 4  │ 110.5   │ 2019-08-17 │ 8             │ 3                │
│ 8  │ Pepe   │ Ruiz      │ Santana   │ Huelva  │ 200       │ 9  │ 2480.4  │ 2019-10-10 │ 8             │ 3                │
│ 8  │ Pepe   │ Ruiz      │ Santana   │ Huelva  │ 200       │ 10 │ 250.45  │ 2018-06-27 │ 8             │ 2                │
│ 7  │ Pilar  │ Ruiz      │           │ Sevilla │ 300       │ 6  │ 2400.6  │ 2019-07-27 │ 7             │ 1                │
└────┴────────┴───────────┴───────────┴─────────┴───────────┴────┴─────────┴────────────┴───────────────┴──────────────────┘

**/

-- 3. Devuelve un listado que muestre todos las compras en los que ha participado un suministrador.
-- El resultado debe mostrar todos los datos de las compras y de los suministradores.
-- El listado debe mostrar los datos de los suministradores ordenados alfabéticamente.

SELECT s.*, cp.* FROM suministrador as s JOIN compra as cp on cp.id_suministrador=s.id ORDER BY s.nombre;
/**
┌────┬─────────┬───────────┬───────────┬───────────┬────┬─────────┬────────────┬───────────────┬──────────────────┐
│ id │ nombre  │ apellido1 │ apellido2 │ categoria │ id │  total  │   fecha    │ id_consumidor │ id_suministrador │
├────┼─────────┼───────────┼───────────┼───────────┼────┼─────────┼────────────┼───────────────┼──────────────────┤
│ 5  │ Antonio │ Carretero │ Ortega    │ 0.12      │ 2  │ 270.65  │ 2019-09-10 │ 1             │ 5                │
│ 7  │ Antonio │ Vega      │ Hernández │ 0.11      │ 11 │ 75.29   │ 2019-08-17 │ 3             │ 7                │
│ 5  │ Antonio │ Carretero │ Ortega    │ 0.12      │ 15 │ 370.85  │ 2022-03-11 │ 1             │ 5                │
│ 5  │ Antonio │ Carretero │ Ortega    │ 0.12      │ 16 │ 2389.23 │ 2022-03-11 │ 1             │ 5                │
│ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │ 3  │ 65.26   │ 2020-10-05 │ 2             │ 1                │
│ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │ 6  │ 2400.6  │ 2019-07-27 │ 7             │ 1                │
│ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │ 7  │ 5760.0  │ 2018-09-10 │ 2             │ 1                │
│ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │ 12 │ 3045.6  │ 2020-04-25 │ 2             │ 1                │
│ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │ 13 │ 545.75  │ 2022-01-25 │ 6             │ 1                │
│ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │ 14 │ 145.82  │ 2020-02-02 │ 6             │ 1                │
│ 3  │ Diego   │ Flores    │ Salas     │ 0.11      │ 4  │ 110.5   │ 2019-08-17 │ 8             │ 3                │
│ 3  │ Diego   │ Flores    │ Salas     │ 0.11      │ 9  │ 2480.4  │ 2019-10-10 │ 8             │ 3                │
│ 2  │ Juan    │ Gómez     │ López     │ 0.13      │ 1  │ 150.5   │ 2020-10-05 │ 5             │ 2                │
│ 2  │ Juan    │ Gómez     │ López     │ 0.13      │ 5  │ 948.5   │ 2020-09-10 │ 5             │ 2                │
│ 2  │ Juan    │ Gómez     │ López     │ 0.13      │ 10 │ 250.45  │ 2018-06-27 │ 8             │ 2                │
│ 6  │ Manuel  │ Domínguez │ Hernández │ 0.13      │ 8  │ 1983.43 │ 2020-10-10 │ 4             │ 6                │
└────┴─────────┴───────────┴───────────┴───────────┴────┴─────────┴────────────┴───────────────┴──────────────────┘
**/
-- 4. Devuelve un listado que muestre todos los consumidores, con todos las compras que han realizado 
-- y con los datos de los suministradores asociados a cada compra.

SELECT c.*, cp.*, s.* FROM consumidor as c JOIN compra as cp on c.id=cp.id_consumidor JOIN suministrador as s on cp.id_suministrador=s.id ORDER BY s.nombre;
/**
┌────┬────────┬───────────┬───────────┬─────────┬───────────┬────┬─────────┬────────────┬───────────────┬──────────────────┬────┬─────────┬───────────┬───────────┬───────────┐
│ id │ nombre │ apellido1 │ apellido2 │ ciudad  │ categoria │ id │  total  │   fecha    │ id_consumidor │ id_suministrador │ id │ nombre  │ apellido1 │ apellido2 │ categoria │
├────┼────────┼───────────┼───────────┼─────────┼───────────┼────┼─────────┼────────────┼───────────────┼──────────────────┼────┼─────────┼───────────┼───────────┼───────────┤
│ 1  │ Aarón  │ Rivero    │ Gómez     │ Almería │ 100       │ 2  │ 270.65  │ 2019-09-10 │ 1             │ 5                │ 5  │ Antonio │ Carretero │ Ortega    │ 0.12      │
│ 3  │ Adolfo │ Rubio     │ Flores    │ Sevilla │           │ 11 │ 75.29   │ 2019-08-17 │ 3             │ 7                │ 7  │ Antonio │ Vega      │ Hernández │ 0.11      │
│ 1  │ Aarón  │ Rivero    │ Gómez     │ Almería │ 100       │ 15 │ 370.85  │ 2022-03-11 │ 1             │ 5                │ 5  │ Antonio │ Carretero │ Ortega    │ 0.12      │
│ 1  │ Aarón  │ Rivero    │ Gómez     │ Almería │ 100       │ 16 │ 2389.23 │ 2022-03-11 │ 1             │ 5                │ 5  │ Antonio │ Carretero │ Ortega    │ 0.12      │
│ 2  │ Adela  │ Salas     │ Díaz      │ Granada │ 200       │ 3  │ 65.26   │ 2020-10-05 │ 2             │ 1                │ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │
│ 7  │ Pilar  │ Ruiz      │           │ Sevilla │ 300       │ 6  │ 2400.6  │ 2019-07-27 │ 7             │ 1                │ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │
│ 2  │ Adela  │ Salas     │ Díaz      │ Granada │ 200       │ 7  │ 5760.0  │ 2018-09-10 │ 2             │ 1                │ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │
│ 2  │ Adela  │ Salas     │ Díaz      │ Granada │ 200       │ 12 │ 3045.6  │ 2020-04-25 │ 2             │ 1                │ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │
│ 6  │ María  │ Santana   │ Moreno    │ Cádiz   │ 100       │ 13 │ 545.75  │ 2022-01-25 │ 6             │ 1                │ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │
│ 6  │ María  │ Santana   │ Moreno    │ Cádiz   │ 100       │ 14 │ 145.82  │ 2020-02-02 │ 6             │ 1                │ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │
│ 8  │ Pepe   │ Ruiz      │ Santana   │ Huelva  │ 200       │ 4  │ 110.5   │ 2019-08-17 │ 8             │ 3                │ 3  │ Diego   │ Flores    │ Salas     │ 0.11      │
│ 8  │ Pepe   │ Ruiz      │ Santana   │ Huelva  │ 200       │ 9  │ 2480.4  │ 2019-10-10 │ 8             │ 3                │ 3  │ Diego   │ Flores    │ Salas     │ 0.11      │
│ 5  │ Marcos │ Loyola    │ Méndez    │ Almería │ 200       │ 1  │ 150.5   │ 2020-10-05 │ 5             │ 2                │ 2  │ Juan    │ Gómez     │ López     │ 0.13      │
│ 5  │ Marcos │ Loyola    │ Méndez    │ Almería │ 200       │ 5  │ 948.5   │ 2020-09-10 │ 5             │ 2                │ 2  │ Juan    │ Gómez     │ López     │ 0.13      │
│ 8  │ Pepe   │ Ruiz      │ Santana   │ Huelva  │ 200       │ 10 │ 250.45  │ 2018-06-27 │ 8             │ 2                │ 2  │ Juan    │ Gómez     │ López     │ 0.13      │
│ 4  │ Adrián │ Suárez    │           │ Jaén    │ 300       │ 8  │ 1983.43 │ 2020-10-10 │ 4             │ 6                │ 6  │ Manuel  │ Domínguez │ Hernández │ 0.13      │
└────┴────────┴───────────┴───────────┴─────────┴───────────┴────┴─────────┴────────────┴───────────────┴──────────────────┴────┴─────────┴───────────┴───────────┴───────────┘
**/

-- 5. Devuelve un listado de todos los consumidores que realizaron un compra durante el año 2020,
-- cuya cantidad esté entre 300 € y 1000 €.

SELECT c.* FROM consumidor as c JOIN compra as cp on c.id=cp.id_consumidor WHERE cp.fecha REGEXP '^2020' and cp.total BETWEEN 300 and 1000;
/**
┌────┬────────┬───────────┬───────────┬─────────┬───────────┐
│ id │ nombre │ apellido1 │ apellido2 │ ciudad  │ categoria │
├────┼────────┼───────────┼───────────┼─────────┼───────────┤
│ 5  │ Marcos │ Loyola    │ Méndez    │ Almería │ 200       │
└────┴────────┴───────────┴───────────┴─────────┴───────────┘
**/

-- 6. Devuelve el nombre y los apellidos de todos los suministradores que ha participado en algún compra realizado por María Santana Moreno.

SELECT DISTINCT s.* FROM consumidor as c JOIN compra as cp on c.id=cp.id_consumidor JOIN suministrador as s on cp.id_suministrador=s.id   WHERE c.nombre= 'María' and c.apellido1='Santana' and c.apellido2='Moreno';
/**
┌────┬────────┬───────────┬───────────┬───────────┐
│ id │ nombre │ apellido1 │ apellido2 │ categoria │
├────┼────────┼───────────┼───────────┼───────────┤
│ 1  │ Daniel │ Sáez      │ Vega      │ 0.15      │
└────┴────────┴───────────┴───────────┴───────────┘
**/

-- 7. Devuelve el nombre de todos los consumidores que han realizado algún compra con el suministrador Daniel Sáez Vega.

SELECT DISTINCT c.* FROM consumidor as c JOIN compra as cp on c.id=cp.id_consumidor JOIN suministrador as s on cp.id_suministrador=s.id WHERE s.nombre='Daniel' and s.apellido1='Sáez' and s.apellido2='Vega';
/**
┌────┬────────┬───────────┬───────────┬─────────┬───────────┐
│ id │ nombre │ apellido1 │ apellido2 │ ciudad  │ categoria │
├────┼────────┼───────────┼───────────┼─────────┼───────────┤
│ 2  │ Adela  │ Salas     │ Díaz      │ Granada │ 200       │
│ 7  │ Pilar  │ Ruiz      │           │ Sevilla │ 300       │
│ 6  │ María  │ Santana   │ Moreno    │ Cádiz   │ 100       │
└────┴────────┴───────────┴───────────┴─────────┴───────────┘
**/

-- ---------------------------
-- Consultas resumen (funciones)
-- -----------------------------------------------
-- 0,2 puntos la correcta. (1-6) 1,2 puntos
-- 0,25 puntos la correcta. (7-10) 1 punto.
-- Total = 2,2 puntos
-- -----------------------------------------------

-- 1. Calcula la cantidad media de todos las compras que aparecen en la tabla compra.

ELECT AVG(total) FROM compra ;
/**
┌─────────────┐
│ AVG(total)  │
├─────────────┤
│ 1312.051875 │
└─────────────┘
**/

-- 2. Calcula el número total de suministradores distintos que aparecen en la tabla compra.

SELECT count(DISTINCT id_suministrador) as suministrador FROM compra ;
/**
┌───────────────┐
│ suministrador │
├───────────────┤
│ 6             │
└───────────────┘
**/

-- 3. Calcula el número total de consumidores que aparecen en la tabla consumidor.

SELECT count(id) as consumidores FROM consumidor ;
/**
┌──────────────┐
│ consumidores │
├──────────────┤
│ 10           │
└──────────────┘
**/

-- 4. Calcula cuál es la mayor cantidad que aparece en la tabla compra.

─────┘
sqlite> SELECT MAX(total) as max FROM compra ;
/**
┌────────┐
│  max   │
├────────┤
│ 5760.0 │
└────────┘
**/

-- 5. Calcula cuál es el valor máximo de categoría para cada una de las ciudades que aparece en la tabla consumidor.
SELECT ciudad , max(categoria) FROM consumidor GROUP BY ciudad ;
/**
┌─────────┬────────────────┐
│ ciudad  │ max(categoria) │
├─────────┼────────────────┤
│ Almería │ 200            │
│ Cádiz   │ 100            │
│ Granada │ 225            │
│ Huelva  │ 200            │
│ Jaén    │ 300            │
│ Sevilla │ 300            │
└─────────┴────────────────┘
**/

-- 6. Calcula cuál es el máximo valor de las compras realizadas durante el mismo día para cada uno de los consumidores.
-- Es decir, el mismo consumidor puede haber realizado varios compras de diferentes cantidades el mismo día.
-- Se pide que se calcule cuál es el compra de máximo valor para cada uno de los días en los que un consumidor ha realizado un compra.
-- Muestra el identificador del consumidor, nombre, apellidos, la fecha y el valor de la cantidad.

SELECT cp.id_consumidor, c.nombre, c.apellido1, max(cp.total), cp.fecha FROM compra as cp, consumidor as c WHERE c.id=cp.id_consumidor GROUP BY fecha;

/**
┌───────────────┬────────┬───────────┬───────────────┬────────────┐
│ id_consumidor │ nombre │ apellido1 │ max(cp.total) │   fecha    │
├───────────────┼────────┼───────────┼───────────────┼────────────┤
│ 8             │ Pepe   │ Ruiz      │ 250.45        │ 2018-06-27 │
│ 2             │ Adela  │ Salas     │ 5760.0        │ 2018-09-10 │
│ 7             │ Pilar  │ Ruiz      │ 2400.6        │ 2019-07-27 │
│ 8             │ Pepe   │ Ruiz      │ 110.5         │ 2019-08-17 │
│ 1             │ Aarón  │ Rivero    │ 270.65        │ 2019-09-10 │
│ 8             │ Pepe   │ Ruiz      │ 2480.4        │ 2019-10-10 │
│ 6             │ María  │ Santana   │ 145.82        │ 2020-02-02 │
│ 2             │ Adela  │ Salas     │ 3045.6        │ 2020-04-25 │
│ 5             │ Marcos │ Loyola    │ 948.5         │ 2020-09-10 │
│ 5             │ Marcos │ Loyola    │ 150.5         │ 2020-10-05 │
│ 4             │ Adrián │ Suárez    │ 1983.43       │ 2020-10-10 │
│ 6             │ María  │ Santana   │ 545.75        │ 2022-01-25 │
│ 1             │ Aarón  │ Rivero    │ 2389.23       │ 2022-03-11 │
└───────────────┴────────┴───────────┴───────────────┴────────────┘
**/

-- 7. Calcula cuál es el máximo valor de las compras realizadas durante el mismo día para cada uno de los consumidores,
-- teniendo en cuenta que sólo queremos mostrar aquellas compras que superen la cantidad de 2000 €.

SELECT cp.id_consumidor, c.nombre, c.apellido1, max(cp.total), cp.fecha FROM compra as cp, consumidor as c WHERE c.id=cp.id_consumidor and cp.total > 2000 GROUP BY fecha;
/**
┌───────────────┬────────┬───────────┬───────────────┬────────────┐
│ id_consumidor │ nombre │ apellido1 │ max(cp.total) │   fecha    │
├───────────────┼────────┼───────────┼───────────────┼────────────┤
│ 2             │ Adela  │ Salas     │ 5760.0        │ 2018-09-10 │
│ 7             │ Pilar  │ Ruiz      │ 2400.6        │ 2019-07-27 │
│ 8             │ Pepe   │ Ruiz      │ 2480.4        │ 2019-10-10 │
│ 2             │ Adela  │ Salas     │ 3045.6        │ 2020-04-25 │
│ 1             │ Aarón  │ Rivero    │ 2389.23       │ 2022-03-11 │
└───────────────┴────────┴───────────┴───────────────┴────────────┘
**/

-- 8. Calcula el máximo valor de las compras realizadas para cada uno de los suministradores durante la fecha 2020-08-17.
-- Muestra el identificador del suministrador, nombre, apellidos y total.
SELECT s.id, s.nombre, s.apellido1, MAX(cp.total) FROM suministrador as s JOIN compra as cp on cp.id_suministrador=s.id WHERE cp.fecha = '2020-08-17';


-- 9. Devuelve un listado con el identificador de consumidor, nombre y apellidos y el número total de compras que ha realizado cada uno de consumidores.
-- Tenga en cuenta que pueden existir consumidores que no han realizado ninguna compra.
-- Estos consumidores también deben aparecer en el listado indicando que el número de compras realizadas es 0.

SELECT id, nombre , apellido1, (SELECT count(cp.id) FROM compra as cp where c.id=cp.id_consumidor) as pedidos FROM consumidor as c;
/**
┌────┬───────────┬───────────┬─────────┐
│ id │  nombre   │ apellido1 │ pedidos │
├────┼───────────┼───────────┼─────────┤
│ 1  │ Aarón     │ Rivero    │ 3       │
│ 2  │ Adela     │ Salas     │ 3       │
│ 3  │ Adolfo    │ Rubio     │ 1       │
│ 4  │ Adrián    │ Suárez    │ 1       │
│ 5  │ Marcos    │ Loyola    │ 2       │
│ 6  │ María     │ Santana   │ 2       │
│ 7  │ Pilar     │ Ruiz      │ 1       │
│ 8  │ Pepe      │ Ruiz      │ 3       │
│ 9  │ Guillermo │ López     │ 0       │
│ 10 │ Daniel    │ Santana   │ 0       │
└────┴───────────┴───────────┴─────────┘
**/

-- 10. Devuelve un listado con el identificador de consumidor, nombre y apellidos y el número total de compras que ha realizado cada uno de consumidores durante el año 2020.
SELECT c.id, c.nombre , c.apellido1, count(cp.id_consumidor) as num_compras FROM compra as cp, consumidor as c WHERE c.id=cp.id_consumidor and cp.fecha REGEXP '^2020' GROUP BY c.id;
/**
┌────┬────────┬───────────┬─────────────┐
│ id │ nombre │ apellido1 │ num_compras │
├────┼────────┼───────────┼─────────────┤
│ 2  │ Adela  │ Salas     │ 2           │
│ 4  │ Adrián │ Suárez    │ 1           │
│ 5  │ Marcos │ Loyola    │ 2           │
│ 6  │ María  │ Santana   │ 1           │
└────┴────────┴───────────┴─────────────┘
**/


-- ---------------------
-- Subconsultas
-- -----------------------------------------------
-- 0,2 puntos la correcta (1-5).
-- 0,3 puntos la correcta (6-9).
-- Total = 2,2 puntos
-- -----------------------------------------------

--- Con operadores básicos de comparación

-- 1. Devuelve un listado con todos las compras que ha realizado Adela Salas Díaz. (Sin utilizar INNER JOIN).
SELECT count(cp.id) FROM compra as cp, consumidor as c WHERE c.id=cp.id_consumidor and c.nombre='Adela' and c.apellido1='Salas' and c.apellido2='Díaz';
/**
┌──────────────┐
│ count(cp.id) │
├──────────────┤
│ 3            │
└──────────────┘
**/

-- 2. Devuelve la fecha y la cantidad del compra de menor valor realizado por el cliente Pepe Ruiz Santana.

SELECT cp.fecha, min(total) FROM compra as cp, consumidor as c WHERE c.id=cp.id_consumidor and c.nombre='Pepe' and c.apellido1='Ruiz' and c.apellido2='Santana';
/**
┌────────────┬────────────┐
│   fecha    │ min(total) │
├────────────┼────────────┤
│ 2019-08-17 │ 110.5      │
└────────────┴────────────┘
**/

-- 3. Devuelve el número de compras en los que ha participado el suministrador Daniel Sáez Vega. (Sin utilizar INNER JOIN)
SELECT count(cp.id) FROM suministrador as s, compra as cp WHERE cp.id_suministrador=s.id and s.nombre='Daniel' and s.apellido1='Sáez' and s.apellido2='Vega';
/**
┌──────────────┐
│ count(cp.id) │
├──────────────┤
│ 6            │
└──────────────┘
**/

-- 4. Devuelve los datos del consumidor que realizó el compra más caro en el año 2021. (Sin utilizar INNER JOIN)
SELECT c.*, max(cp.total) FROM compra as cp, consumidor as c WHERE c.id=cp.id_consumidor and cp.fecha REGEXP '^2021';


-- 5. Devuelve un listado con los datos de los consumidores y las compras, de todos los consumidores que han realizado un compra durante el año 2020 con un valor mayor o igual al valor medio de las compras realizadas durante ese mismo año.

SELECT c.*, cp.* FROM compra as cp, consumidor as c WHERE c.id=cp.id_consumidor and cp.fecha REGEXP '^2020' and cp.total >= (SELECT avg(total) FROM compra WHERE fecha REGEXP '^2020');
/**
┌────┬────────┬───────────┬───────────┬─────────┬───────────┬────┬─────────┬────────────┬───────────────┬──────────────────┐
│ id │ nombre │ apellido1 │ apellido2 │ ciudad  │ categoria │ id │  total  │   fecha    │ id_consumidor │ id_suministrador │
├────┼────────┼───────────┼───────────┼─────────┼───────────┼────┼─────────┼────────────┼───────────────┼──────────────────┤
│ 4  │ Adrián │ Suárez    │           │ Jaén    │ 300       │ 8  │ 1983.43 │ 2020-10-10 │ 4             │ 6                │
│ 2  │ Adela  │ Salas     │ Díaz      │ Granada │ 200       │ 12 │ 3045.6  │ 2020-04-25 │ 2             │ 1                │
└────┴────────┴───────────┴───────────┴─────────┴───────────┴────┴─────────┴────────────┴───────────────┴──────────────────┘
**/

-- 6. Devuelve un listado de los consumidores que no han realizado ningún compra. (Utilizando IN o NOT IN).
SELECT * FROM consumidor as c WHERE not EXISTS (SELECT 1 FROM compra as cp WHERE c.id=cp.id_consumidor );
/**
┌────┬───────────┬───────────┬───────────┬─────────┬───────────┐
│ id │  nombre   │ apellido1 │ apellido2 │ ciudad  │ categoria │
├────┼───────────┼───────────┼───────────┼─────────┼───────────┤
│ 9  │ Guillermo │ López     │ Gómez     │ Granada │ 225       │
│ 10 │ Daniel    │ Santana   │ Loyola    │ Sevilla │ 125       │
└────┴───────────┴───────────┴───────────┴─────────┴───────────┘
**/

-- 7. Devuelve un listado de los suministradores que no han realizado ningún compra. (Utilizando IN o NOT IN).
SELECT * FROM suministrador as s WHERE NOT EXISTS (SELECT 1 FROM compra as cp WHERE cp.id_suministrador=s.id);
/**
┌────┬─────────┬───────────┬───────────┬───────────┐
│ id │ nombre  │ apellido1 │ apellido2 │ categoria │
├────┼─────────┼───────────┼───────────┼───────────┤
│ 4  │ Marta   │ Herrera   │ Gil       │ 0.14      │
│ 8  │ Alfredo │ Ruiz      │ Flores    │ 0.05      │
└────┴─────────┴───────────┴───────────┴───────────┘
**/

-- 8. Devuelve un listado de los consumidores que no han realizado ningún compra. (Utilizando EXISTS o NOT EXISTS).

SELECT * FROM consumidor as c WHERE id not in (SELECT id_consumidor FROM compra);
/**
┌────┬───────────┬───────────┬───────────┬─────────┬───────────┐
│ id │  nombre   │ apellido1 │ apellido2 │ ciudad  │ categoria │
├────┼───────────┼───────────┼───────────┼─────────┼───────────┤
│ 9  │ Guillermo │ López     │ Gómez     │ Granada │ 225       │
│ 10 │ Daniel    │ Santana   │ Loyola    │ Sevilla │ 125       │
└────┴───────────┴───────────┴───────────┴─────────┴───────────┘
**/

-- 9. Devuelve un listado de los suministradores que no han realizado ningún compra. (Utilizando EXISTS o NOT EXISTS).

SELECT * FROM consumidor as c WHERE id not in (SELECT id_consumidor FROM compra );
/**
┌────┬───────────┬───────────┬───────────┬─────────┬───────────┐
│ id │  nombre   │ apellido1 │ apellido2 │ ciudad  │ categoria │
├────┼───────────┼───────────┼───────────┼─────────┼───────────┤
│ 9  │ Guillermo │ López     │ Gómez     │ Granada │ 225       │
│ 10 │ Daniel    │ Santana   │ Loyola    │ Sevilla │ 125       │
└────┴───────────┴───────────┴───────────┴─────────┴───────────┘
**/