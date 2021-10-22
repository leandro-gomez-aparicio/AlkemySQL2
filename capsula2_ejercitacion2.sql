//1) Nombre, apellido y cursos que realiza cada estudiante
SELECT e.nombre, e.apellido, c.nombre as "curso"
FROM estudiante e 
INNER JOIN inscripcion i ON e.legajo = i.ESTUDIANTE_legajo
INNER JOIN curso c ON i.CURSO_codigo = c.codigo;

//2) Nombre, apellido y cursos que realiza cada estudiante, ordenados por el nombre del curso
SELECT e.nombre, e.apellido, c.nombre as "curso"
FROM estudiante e 
INNER JOIN inscripcion i ON e.legajo = i.ESTUDIANTE_legajo
INNER JOIN curso c ON i.CURSO_codigo = c.codigo
ORDER BY c.nombre;

//3) Nombre, apellido y cursos que dicta cada profesor
SELECT p.nombre, p.apellido, c.nombre as "curso"
FROM profesor p INNER JOIN curso c ON p.id = c.PROFESOR_id;

//4) Nombre, apellido y cursos que dicta cada profesor, ordenados por el nombre del curso
SELECT p.nombre, p.apellido, c.nombre as "curso"
FROM profesor p INNER JOIN curso c ON p.id = c.PROFESOR_id
ORDER BY c.nombre;

//5) Cupo disponible para cada curso (Si el cupo es de 35 estudiantes y hay 5 inscriptos, el cupo disponible será 30)
SELECT curso.nombre as "curso", curso.cupo - COUNT(*) as "cupo disponible"
from curso INNER JOIN inscripcion on curso.codigo = inscripcion.CURSO_codigo
GROUP BY curso.codigo;

//6) Cursos cuyo cupo disponible sea menor a 10
SELECT curso.nombre as "curso", curso.cupo - COUNT(*) as "cupo disponible menor a 10"
from curso INNER JOIN inscripcion on curso.codigo = inscripcion.CURSO_codigo
GROUP BY curso.codigo
HAVING curso.cupo - COUNT(*) < 10;
