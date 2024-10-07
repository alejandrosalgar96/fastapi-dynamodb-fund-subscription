CREATE TABLE Cliente (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    ciudad VARCHAR(50) NOT NULL
);

CREATE TABLE Sucursal (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    ciudad VARCHAR(50) NOT NULL
);

CREATE TABLE Producto (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    tipoProducto VARCHAR(50) NOT NULL
);

CREATE TABLE Inscripcion (
    idProducto INT,
    idCliente INT,
    PRIMARY KEY (idProducto, idCliente),
    FOREIGN KEY (idProducto) REFERENCES Producto(id),
    FOREIGN KEY (idCliente) REFERENCES Cliente(id)
);

CREATE TABLE Disponibilidad (
    idSucursal INT,
    idProducto INT,
    PRIMARY KEY (idSucursal, idProducto),
    FOREIGN KEY (idSucursal) REFERENCES Sucursal(id),
    FOREIGN KEY (idProducto) REFERENCES Producto(id)
);

CREATE TABLE Visitan (
    idSucursal INT,
    idCliente INT,
    fechaVisita DATE NOT NULL,
    PRIMARY KEY (idSucursal, idCliente),
    FOREIGN KEY (idSucursal) REFERENCES Sucursal(id),
    FOREIGN KEY (idCliente) REFERENCES Cliente(id)
);

INSERT INTO Cliente (nombre, apellidos, ciudad)
VALUES
('Juan', 'Perez', 'Medellín'),
('Ana', 'Gomez', 'Bogotá'),
('Luis', 'Martinez', 'Cali');

INSERT INTO Sucursal (nombre, ciudad)
VALUES
('Sucursal Medellín', 'Medellín'),
('Sucursal Bogotá', 'Bogotá'),
('Sucursal Cali', 'Cali');

INSERT INTO Producto (nombre, tipoProducto)
VALUES
('Producto A', 'Tipo 1'),
('Producto B', 'Tipo 2'),
('Producto C', 'Tipo 3');

INSERT INTO Inscripcion (idProducto, idCliente)
VALUES
(1, 1),
(2, 2),
(3, 3);

INSERT INTO Disponibilidad (idSucursal, idProducto)
VALUES
(1, 1),
(2, 2),
(3, 3);

INSERT INTO Visitan (idSucursal, idCliente, fechaVisita)
VALUES
(1, 1, '2023-10-01'),
(2, 2, '2023-10-01'),
(3, 3, '2023-10-01');

SELECT DISTINCT c.nombre, c.apellidos
FROM Cliente c
JOIN Inscripcion i ON c.id = i.idCliente
JOIN Producto p ON i.idProducto = p.id
JOIN Disponibilidad d ON p.id = d.idProducto
JOIN Visitan v ON c.id = v.idCliente AND d.idSucursal = v.idSucursal;
