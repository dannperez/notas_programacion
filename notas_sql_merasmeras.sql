-- AS
SELECT LastName AS apellido, FirstName AS nombre
FROM Employees;

-- ORDER BY : ASC, DESC
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


-- Eliminar duplicados
SELECT DISTINCT ProductName 
FROM Products;


