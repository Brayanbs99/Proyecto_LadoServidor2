CREATE DATABASE Verduleria

DROP DATABASE Verduleria

USE Verduleria

CREATE TABLE Verduleria(
ID int not null,
nombre varchar(50) not null,
direccion varchar(200) not null,
telefono int not null

PRIMARY KEY (ID)
)

CREATE TABLE Verduras(
ID_Verduras int not null,
nombre varchar(50) not null,
precio int not null,
tipo varchar(100) not null

PRIMARY KEY (ID_Verduras)
)

CREATE TABLE Frutas(
ID_Frutas int not null,
nombre varchar(50) not null,
precio int not null,
tipo varchar(100) not null

PRIMARY KEY (ID_Frutas)
)

CREATE TABLE Clientes(
ID_Clientes int not null,
nombre varchar(100) not null,
cedula int not null,
numero int not null,
sexo varchar(20)

PRIMARY KEY (ID_Clientes)
)

CREATE TABLE Facturacion(
ID_Factura int not null,
ID_Verdura int not null,
ID_Frutas int not null,
ID_Clientes int not null,
numero_factura int not null

PRIMARY KEY (ID_Factura),
CONSTRAINT FK_Factura_Verdura FOREIGN KEY (ID_Verdura) REFERENCES Verduras (ID_Verduras),
CONSTRAINT FK_Factura_Frutas FOREIGN KEY (ID_Frutas) REFERENCES Frutas (ID_Frutas),
CONSTRAINT FK_Factura_Clientes FOREIGN KEY (ID_Clientes) REFERENCES Clientes (ID_Clientes)
)

INSERT INTO Verduleria(
ID,
nombre,
direccion,
telefono)
VALUES(
1,
'Verdulería Andrea',
'Tejar, Cartago',
25364789)

INSERT INTO Verduleria(
ID,
nombre,
direccion,
telefono)
VALUES(
2,
'Verdulería Divino Niño',
'San Blas, Cartago',
64758298)

INSERT INTO Verduleria(
ID,
nombre,
direccion,
telefono)
VALUES(
3,
'Verdulería Producto Fresco',
'Zapote, San José',
12748934)

INSERT INTO Verduleria(
ID,
nombre,
direccion,
telefono)
VALUES(
4,
'Verdulería La Esquinita',
'San Pablo, Heredia',
78943261)

INSERT INTO Verduleria(
ID,
nombre,
direccion,
telefono)
VALUES(
5,
'Verdulería Don Bosco',
'Freses, San José',
65472900)



INSERT INTO Verduras(
ID_Verduras,
nombre,
precio,
tipo
) VALUES(
123,
'Papa',
1200,
'Tubérculo'
)

INSERT INTO Verduras(
ID_Verduras,
nombre,
precio,
tipo
) VALUES(
123,
'Papa',
1200,
'Tubérculo'
)

INSERT INTO Verduras(
ID_Verduras,
nombre,
precio,
tipo
) VALUES(
1343,
'Cebolla',
1700,
'Bulbo'
)

INSERT INTO Verduras(
ID_Verduras,
nombre,
precio,
tipo
) VALUES(
345,
'Zanahoria',
900,
'Tubérculo'
)

INSERT INTO Verduras(
ID_Verduras,
nombre,
precio,
tipo
) VALUES(
556,
'Ajo',
600,
'Bulbo'
)

INSERT INTO Verduras(
ID_Verduras,
nombre,
precio,
tipo
) VALUES(
076,
'Lechuga',
250,
'Legumbre'
)


INSERT INTO Frutas(
ID_Frutas,
nombre,
precio,
tipo
) VALUES(
001,
'Fresa',
1500,
'Fragaria'
)

INSERT INTO Frutas(
ID_Frutas,
nombre,
precio,
tipo
) VALUES(
432,
'Ciruela',
450,
'Drupa'
)

INSERT INTO Frutas(
ID_Frutas,
nombre,
precio,
tipo
) VALUES(
554,
'Naranja',
300,
'Citrico'
)

INSERT INTO Frutas(
ID_Frutas,
nombre,
precio,
tipo
) VALUES(
989,
'Uva',
1800,
'No definido'
)

INSERT INTO Frutas(
ID_Frutas,
nombre,
precio,
tipo
) VALUES(
32,
'Banano',
1110,
'Musa'
)


INSERT INTO Clientes(
ID_Clientes,
nombre,
cedula,
numero,
sexo)
VALUES(
123,
'Jimena Gutierrez',
762839402,
65390027,
'Femenino')

INSERT INTO Clientes(
ID_Clientes,
nombre,
cedula,
numero,
sexo)
VALUES(
154,
'Francisco Brenes',
143235321,
88372098,
'Masculino')

INSERT INTO Clientes(
ID_Clientes,
nombre,
cedula,
numero,
sexo)
VALUES(
098,
'Daniel Ramirez',
847532123,
90872333,
'Masculino')

INSERT INTO Clientes(
ID_Clientes,
nombre,
cedula,
numero,
sexo)
VALUES(
664,
'Elena Leon',
187629376,
70985324,
'')

INSERT INTO Clientes(
ID_Clientes,
nombre,
cedula,
numero,
sexo)
VALUES(
551,
'Andrea Soto',
309876787,
88761092,
'Femenino')



INSERT INTO Facturacion(
ID_Factura,
ID_Verdura,
ID_Frutas,
ID_Clientes,
numero_factura)
VALUES(
1,
76,
1,
123,
64523)

INSERT INTO Facturacion(
ID_Factura,
ID_Verdura,
ID_Frutas,
ID_Clientes,
numero_factura)
VALUES
(5,
556,
554,
123,
64529)

INSERT INTO Facturacion(
ID_Factura,
ID_Verdura,
ID_Frutas,
ID_Clientes,
numero_factura)
VALUES
(8,
345,
1,
664,
12789)

INSERT INTO Facturacion(
ID_Factura,
ID_Verdura,
ID_Frutas,
ID_Clientes,
numero_factura)
VALUES
(14,
1343,
554,
123,
75567)

INSERT INTO Facturacion(
ID_Factura,
ID_Verdura,
ID_Frutas,
ID_Clientes,
numero_factura)
VALUES
(10,
345,
554,
98,
23797)

INSERT INTO Facturacion(ID_Verdura)VALUES(1)

UPDATE Verduras SET precio = 1800
WHERE ID_Verduras = 1343

UPDATE Frutas SET precio = 1800,
nombre = 'Uva Verde'
WHERE ID_Frutas = 989

UPDATE Clientes SET nombre = 'Brayan Brenes Soto',
cedula = 302736423
WHERE ID_Clientes = 123

DELETE FROM Facturacion
WHERE ID_Factura = 1

DELETE FROM Verduras --Si coloco este de primero, me da un error por el Foreigh key.
WHERE ID_Verduras =76

DELETE FROM Verduras
WHERE ID_Verduras=1343

--Consultas

SELECT F.* FROM Frutas F WHERE F.ID_Frutas =32 OR F.precio=1500

SELECT C.* FROM Clientes C ORDER BY C.nombre

SELECT C.nombre FROM Clientes C WHERE C.ID_Clientes BETWEEN 1 AND 3 --No sé por que no funciona.

SELECT V.* FROM Verduras V WHERE V.nombre='Papa' AND V.tipo='Tubérculo'

SELECT F.* FROM Facturacion F ORDER BY F.ID_Clientes


--Views
GO
CREATE VIEW view_factura AS 
SELECT  F.ID_Verdura, F.ID_Frutas 
FROM Facturacion F
WHERE F.ID_Factura = 5
GO

SELECT F.* FROM view_factura F

GO
CREATE VIEW view_clientes AS 
SELECT C.nombre, C.numero 
FROM Clientes C
WHERE C.sexo = 'Masculino'
GO

SELECT C.* FROM view_clientes C

--Store Procedure
GO
CREATE PROCEDURE sp_buscar_verdura
@id int
AS 
SELECT V.* FROM Verduras V WHERE V.ID_Verduras = @id
GO

EXEC sp_buscar_verdura @id = 123

GO
CREATE PROCEDURE sp_buscar_factura
@id int
AS 
SELECT F.* FROM Facturacion F WHERE F.ID_Factura = @id
GO

EXEC sp_buscar_factura @id = 5




SELECT * FROM Verduras
SELECT * FROM Frutas
SELECT * FROM Clientes
SELECT * FROM Facturacion