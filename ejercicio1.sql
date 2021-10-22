//1) Consulta para saber cuántos estudiantes son de la carrera Mecánica
SELECT COUNT(legajo) 
FROM estudiante
where carrera LIKE "%Mecánica%";

//2) Consulta para saber, de la tabla PROFESOR, el salario mínimo de los profesores nacidos en la década del 80
SELECT MIN(salario) as "Salario Mínimo"
FROM profesor
WHERE fecha_nacimiento BETWEEN "1980-01-01" and "1989-12-31";

//4)
//a) Cantidad de pasajeros por país
SELECT pais.nombre, COUNT(*) as "pasajeros"
FROM pais INNER JOIN pasajero ON pais.idpais = pasajero.idpais 
GROUP BY pais.nombre;

//b) Suma de todos los pagos realizados
SELECT SUM(monto)
FROM pago;

//c) Suma de todos los pagos que realizó un pasajero. El monto aparece con dos decimales.
SELECT ROUND(SUM(monto), 2)
FROM pago
WHERE idpasajero = 1;

//d) Promedio de los pagos que realizó un pasajero
SELECT AVG(monto)
FROM pago
WHERE idpasajero = 1;
