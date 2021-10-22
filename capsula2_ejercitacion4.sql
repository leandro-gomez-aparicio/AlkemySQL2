//1) Escriba una consulta que devuelva la cantidad de profesores que dictan más de un curso en el turno Noche
SELECT profesor.id,  count(*)
FROM curso INNER JOIN profesor ON profesor.id = curso.PROFESOR_id
WHERE turno LIKE "%Noche%" 
GROUP by profesor.id having count(*) > 1;


//2) Escriba una consulta para obtener la información de todos los estudiantes que no realizan el curso con código 105
SELECT * 
FROM estudiante e 
WHERE e.legajo NOT IN
(SELECT i.estudiante_legajo FROM inscripcion i 
WHERE i.CURSO_codigo = 105);
