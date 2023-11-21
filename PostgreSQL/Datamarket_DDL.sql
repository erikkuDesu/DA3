--Tabla para los clientes
CREATE TABLE IF NOT EXISTS Costumers (
	costumer_id SERIAL PRIMARY KEY NOT NULL UNIQUE,
	costumer_name VARCHAR NOT NULL,
	costumer_telephone VARCHAR NOT NULL,
	costumer_adress VARCHAR NOT NULL,
	costumer_email VARCHAR NOT NULL
);

--Tabla para los cajeros
CREATE TABLE IF NOT EXISTS Cashier (
	cashier_id VARCHAR PRIMARY KEY NOT NULL UNIQUE,
	cashier_name VARCHAR NOT NULL,
	cashier_posNumber VARCHAR NOT NULL
);

--Tabla para las ventas
CREATE TABLE IF NOT EXISTS Sales (
	sales_id SERIAL PRIMARY KEY NOT NULL UNIQUE,
	sales_category VARCHAR NOT NULL,
	sales_desc VARCHAR NOT NULL
);

--Tabla para manejo de pagos
CREATE TABLE IF NOT EXISTS Payment (
	payment_id SERIAL PRIMARY KEY NOT NULL UNIQUE,
	payment_date DATE NOT NULL,
	payment_method VARCHAR NOT NULL,
	payment_amount FLOAT NOT NULL,
	payment_reference VARCHAR NOT NULL
);

--Tabla para los productos
CREATE TABLE IF NOT EXISTS Products (
	product_id SERIAL PRIMARY KEY NOT NULL UNIQUE,
	product_name VARCHAR NOT NULL,
	product_category VARCHAR NOT NULL,
	product_desc VARCHAR NOT NULL,
	product_price FLOAT NOT NULL,
	product_type VARCHAR NOT NULL,
	product_quantity NUMERIC NOT NULL
);

--Tabla para las campanias de marketing
CREATE TABLE IF NOT EXISTS Marketing (
	marketing_id SERIAL PRIMARY KEY NOT NULL UNIQUE,
	marketing_name VARCHAR NOT NULL,
	marketing_type VARCHAR NOT NULL,
	marketing_promo VARCHAR NOT NULL
);

--Tabla para los proveedores
CREATE TABLE IF NOT EXISTS Suppliers (
	supplier_id SERIAL PRIMARY KEY NOT NULL UNIQUE,
	supplier_name VARCHAR NOT NULL,
	supplier_telephone VARCHAR NOT NULL,
	supplier_adress VARCHAR NOT NULL,
	supplier_email VARCHAR NOT NULL,
	supplier_products VARCHAR NOT NULL,
	supplier_productsQ NUMERIC NOT NULL,
	supplier_manufacture VARCHAR NOT NULL
);

--Tabla para gestionar fechas y descripciones de inventarios
CREATE TABLE IF NOT EXISTS Inventory (
	inventory_id SERIAL PRIMARY KEY NOT NULL UNIQUE,
	inventory_date DATE NOT NULL,
	inventory_desc VARCHAR NOT NULL
);

-->>>>>>>>>>INICIO DE TABLAS DE HECHOS CON LLAVES FORANEAS<<<<<<<<<<--
 
--Tabla de hechos de ventas
CREATE TABLE IF NOT EXISTS Facts_sales (
	factsSid SERIAL PRIMARY KEY NOT NULL UNIQUE,
	costumer_ids INT NOT NULL,
	sales_ids INT NOT NULL,
	product_ids INT NOT NULL,
	cashier_ids VARCHAR NOT NULL,
	payment_ids INT NOT NULL,
	marketing_ids INT NOT NULL, 
	factsSdate DATE NOT NULL DEFAULT CURRENT_DATE,
	factsSquantityP NUMERIC NOT NULL,
	FOREIGN KEY(costumer_ids) REFERENCES Costumers(costumer_id),
	FOREIGN KEY(sales_ids)REFERENCES Sales(sales_id),
	FOREIGN KEY(product_ids) REFERENCES Products(product_id),
	FOREIGN KEY(cashier_ids) REFERENCES Cashier(cashier_id),
	FOREIGN KEY(payment_ids) REFERENCES Payment(payment_id),
	FOREIGN KEY(marketing_ids) REFERENCES Marketing(marketing_id)
);

--Tabla de hechos de Marketing
CREATE TABLE IF NOT EXISTS Facts_marketing (
	factsMid SERIAL PRIMARY KEY NOT NULL,
	product_idM INT NOT NULL,
	marketing_idM INT NOT NULL,
	factsMdate DATE NOT NULL,
	factsMdateEnd DATE NOT NULL,
	factsMpromotions VARCHAR NOT NULL,
	FOREIGN KEY(product_idM) REFERENCES Products(product_id),
	FOREIGN KEY(marketing_idM) REFERENCES Marketing(marketing_id)
);

--Tabla de hechos de las tablas Productos, Proveedores e Inventario
CREATE TABLE IF NOT EXISTS Facts_suppliers (
	factsSuppid SERIAL PRIMARY KEY NOT NULL,
	product_idFS INT NOT NULL,
	supplier_idFS INT NOT NULL,
	inventory_idFS INT NOT NULL,
	FOREIGN KEY(product_idFS) REFERENCES Products(product_id),
	FOREIGN KEY(supplier_idFS) REFERENCES Suppliers(supplier_id),
	FOREIGN KEY(inventory_idFS) REFERENCES Inventory(inventory_id)
);

--Tabla de hechos para manejo de movimientos de productos
CREATE TABLE IF NOT EXISTS Facts_inventory (
	facts_inventoy_id SERIAL PRIMARY KEY NOT NULL,
	product_idFI INT NOT NULL,
	facts_S_idFI INT NOT NULL,
	inventory_idFI INT NOT NULL,
	factsInv_date DATE NOT NULL,
	FOREIGN KEY(product_idFI) REFERENCES Products(product_id),
	FOREIGN KEY(facts_S_idFI) REFERENCES Facts_sales(factsSid),
	FOREIGN KEY(inventory_idFI) REFERENCES Inventory(inventory_id)
);

--Tabla de hechos Resumen de hechos
CREATE TABLE IF NOT EXISTS Facts_summary (
	facts_sumary_id SERIAL PRIMARY KEY UNIQUE,
	factsSid INT NOT NULL,
	factsMid INT NOT NULL,
	factsSuppid INT NOT NULL,
	facts_inventoy_id INT NOT NULL,
	FOREIGN KEY(factsSid) REFERENCES Facts_sales(factsSid),
	FOREIGN KEY(factsMid) REFERENCES Facts_marketing(factsMid),
	FOREIGN KEY(factsSuppid) REFERENCES Facts_suppliers(factsSuppid),
	FOREIGN KEY(facts_inventoy_id) REFERENCES Facts_inventory(facts_inventoy_id)
);