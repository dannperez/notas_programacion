------ AS ------
SELECT LastName AS apellido, FirstName AS nombre
FROM Employees;



------ ORDER BY : ASC, DESC ------
SELECT * FROM Products
ORDER BY Price DESC;

-- Mostrar valores nulos al final (NULLS LAST) o al principio (NULLS FIRST)
SELECT * FROM Products
ORDER BY Price ASC NULLS LAST;

-- Ordenar de forma aleatoria
SELECT * FROM Products
ORDER BY RANDOM();

-- Ordenar varios campos a la vez
SELECT * FROM Products
ORDER BY ProductName, ProductID DESC;



------ Eliminar duplicados ------
SELECT DISTINCT ProductName 
FROM Products
ORDER BY ProductName ASC; -- Solo nos muestra un valor de cada duplicado



------ WHERE ------
SELECT *
FROM Products
WHERE CategoryID = 1;



------ UPDATE ------
SELECT * FROM turnos_medicos;

UPDATE turnos_medicos 
SET horario = '10:30', motivo = 'Dolor de muelas'
WHERE id_turno = 2;


SELECT * FROM Employees
WHERE BirthDate = 1958-01-01;



------ AND, OR y NOT ------

-- Para aplicar varias condiciones en un where

SELECT * FROM Customers
WHERE CustomerID >= 50 AND CustomerID < 55;


SELECT * FROM Employees
WHERE FirstName = 'Nancy' OR FirstName = 'Anne'


SELECT * FROM Products
WHERE (Price < 20 OR CategoryID = 6) AND SupplierID = 7;


-- Devuelve los mayores iguales a 40
SELECT * FROM Products
WHERE NOT Price < 40; 


-- Todas los paises menos USA
SELECT * FROM Customers 
WHERE NOT Country = 'USA';


-- Muestra solo 3 registros diferentes cada vez que ejecutamos
SELECT * FROM Products
WHERE NOT CategoryID = 6
AND Price <= 30
ORDER BY RANDOM() 
LIMIT 3;



------ BETWEEN ------

-- Devuelve productos entre 20 y 40 dolares **incluye los limites**
SELECT * 
FROM Products
WHERE Price BETWEEN 20 AND 40;

-- Con mas condiciones
SELECT * 
FROM Products
WHERE Price BETWEEN 20 AND 40 AND SupplierID = 5;

-- Rangos de fechas
SELECT *
FROM Employees
WHERE BirthDate BETWEEN '1960-0-1' AND '1970-0-1'; 



------ LIKE ------

-- Devuelve apellidos que terminan con r
SELECT * FROM Employees
WHERE LastName LIKE '%r'

-- Devuelve apellidos que empiazan con f
SELECT * FROM Employees
WHERE LastName LIKE 'f%'

-- Devuelve apellidos que tengan er
SELECT * FROM Employees
WHERE LastName LIKE '%er%'

-- Devuelve apellidos que tengan cualquier caracter en _
SELECT * FROM Employees
WHERE LastName LIKE '____er'



------ IS NOT NULL ------

-- Muestra valores no nulos
SELECT * FROM Products
WHERE ProductName IS NOT NULL;



------ IN ------

-- Muestra datos en un rango 
SELECT * FROM Products
WHERE SupplierID IN (3,4,5,6);

-- Devuelve empleados con apellido Fuller y King
SELECT * FROM Employees
WHERE LastName IN ('Fuller','King');

-- Devuelve empleados con apellido distinto de Fuller y King
SELECT * FROM Employees
WHERE LastName NOT IN ('Fuller','King');




