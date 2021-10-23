//1) Escriba una consulta que devuelva el legajo y la cantidad de cursos que realiza cada estudiante
SELECT e.legajo, COUNT(*) AS "cantidad de cursos"
FROM estudiante e 
INNER JOIN inscripcion i ON
e.legajo = i.ESTUDIANTE_legajo
GROUP BY e.legajo;

//2) Escriba una consulta que devuelva el legajo y la cantidad de cursos de los estudiantes que realizan más de un curso
SELECT e.legajo, COUNT(*) AS "cantidad de cursos"
FROM estudiante e 
INNER JOIN inscripcion i ON
e.legajo = i.ESTUDIANTE_legajo
GROUP BY e.legajo HAVING COUNT(*) > 1;

//3) Escriba una consulta que devuelva la información de los estudiantes que no realizan ningún curso
SELECT * 
FROM estudiante e 
WHERE e.legajo NOT IN 
(SELECT i.estudiante_legajo FROM inscripcion i);

//4) Escriba para cada tabla, los index (incluyendo su tipo) que tiene cada una
*profesor:
id: clousterizado 

*curso:
codigo (clousterizado) 
PROFESOR_id (no clousterizado)

*inscripcion:
numero (clousterizado) 
CURSO_codigo (no clousterizado) 
ESTUDIANTE_legajo (no clousterizado) 

*estudiante:
legajo (clousterizado) 

//5) Liste toda la información sobre los estudiantes que realizan cursos con los profesores de apellido “Pérez” y “Paz”
SELECT * 
FROM estudiante e INNER JOIN inscripcion i ON 
e.legajo = i.ESTUDIANTE_legajo
WHERE i.CURSO_codigo IN 
(select codigo FROM curso WHERE profesor_id IN (SELECT id FROM profesor WHERE apellido IN ("Perez", "Paz")));
