CREATE DATABASE inventory_project_db;
USE inventory_project_db;

CREATE TABLE Products (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(50),
    price INT,
    stock INT,
    quantity_sold INT
);

CREATE TABLE Sales (
    sale_id VARCHAR(10) PRIMARY KEY,
    product_id VARCHAR(10),
    quantity INT,
    sale_date DATE,
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

INSERT INTO Products VALUES
('P101','Mouse',500,100,10),
('P102','Keyboard',1200,80,5),
('P103','Laptop',45000,20,2),
('P104','Monitor',12000,30,3),
('P105','Headphone',1500,50,8),
('P106','Webcam',2500,40,4);

INSERT INTO Sales VALUES
('S101','P101',10,'2026-06-01'),
('S102','P102',5,'2026-06-02'),
('S103','P103',2,'2026-06-03'),
('S104','P104',3,'2026-06-04'),
('S105','P105',8,'2026-06-05'),
('S106','P106',4,'2026-06-06');