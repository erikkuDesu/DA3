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

--Insercion de datos para clientes ( costumer_id, costumer_name, costumer_telephone, costumer_adress, costumer_email )
INSERT INTO Costumers
	VALUES 	(default, 'CAROLINA JANETH ESPERANZA','7123-4402','PASAJE LOS JIMENEZ CASA N°7 CANTON ZAPOTE ABAJO  AYUTUXTEPEQUE','carolinaesper134@gmail.com'),
			(default, 'JESUS ALBERTO CLEMENTE', '7056-4869', 'COND. SANTA MARTA BELLA VISTA BO. SAN JACINTO 1-8 SAN SALVADOR','clemente011162@hotmail.com'),
			(default, 'TEOFILO ANDRES REYES', '7745-5743', 'KM.35 CARRET.A SAN JUAN OPICO CTON.AGUA ESCONDIDA NO.ANDA 504 SAN JUAN OPICO','teofiloreyes@grupopoma.com'),
			(default, 'JOSE DOMINGO HERNANDEZ', '7856-1183','FNL CLL SAN LUIS PJE 4 BK 8 #40 ALTOS DEL PALMAR SANTA ANA','jose9@gmail.com'),
			(default, 'MANUEL DE JESUS RIVERA', '6118-1899','CANTON SAN JOSE BUENAVISTA CALLE PRINCIPAL OLOCUILTA','manuek.rivera@skysolutions.com.sv'),
			(default, 'ISRRAEL ARMANDO ARTURO', '7794-0313','AV MONTREAL PJE. ELIAS Ñ13 MEJICANOS MEJICANOS','isrraelarturo@gmail.com'),
			(default, 'JOSE ANIBAL MIJANGO', '6016-9673','5TA. AV.NTE. N.3 COL. DIVINA PROVIDENCIA ARMENIA','mijango2018@gmail.com'),
			(default, 'JONATHAN MIJANGO VELASQUEZ', '6156-9276','COL SAN NICOLAS PJE 3 N 11 COL SAN NICOLAS ZARAGOZA','hmartinez@gmail.com'),
			(default, 'HUGO ARMANDO MARTINEZ', '7093-5227','CARR. TCAL DEL NTE KM.17 PJE.3 Ñ.5 SAN NICOLAS, CAS EL ZAPOTE APOPA','hugo13@hotmail.com'),
			(default, 'JORGE ALBERTO HERNANDEZ', '7088-7876','CASA 5 SANTA TECLA RES SAN ANTONIO PJE 4 NORTE SANTA TECLA','jorge.hernandez@orazul.com');

--Insercion de datos para cajeros ( cashier_id, cashier_name, cashier_posNumber )
INSERT INTO Cashier
VALUES	('C01','JUAN ANTONIO MORALES ORANTES', 'POS01'),
		('C02', 'KENIA ALEXANDRA RODRIGUEZ MOLINA', 'POS02');

--Insercion de ventas ( sales_id, sales_category, sales_desc )
INSERT INTO Sales
	VALUES 	(default, 'ONLINE', 'VENTA EN EL SISTEMA EN LINEA'),
			(default, 'STORE', 'VENTA EN LA TIENDA'),
			(default, 'STORE', 'VENTA EN LA TIENDA'),
			(default, 'STORE', 'VENTA EN LA TIENDA'),
			(default, 'STORE', 'VENTA EN LA TIENDA'),
			(default, 'ONLINE', 'VENTA EN EL SISTEMA EN LINEA'),
			(default, 'STORE', 'VENTA EN LA TIENDA'),
			(default, 'ONLINE', 'VENTA EN EL SISTEMA EN LINEA'),
			(default, 'ONLINE', 'VENTA EN EL SISTEMA EN LINEA'),
			(default, 'STORE', 'VENTA EN LA TIENDA');

--Insercion de metodos de pago ( payment_id, payment_date ,payment_method, payment_amount, payment_reference )
INSERT INTO Payment
	VALUES 	(default, '2003-10-23', 'TRANSFERENCIA BANCARIA', '12.50', 'BAC001'),
			(default, '2005-11-10', 'TARJETA DE CREDITO', '20.00', 'CCHIPO001'),
			(default, '2004-10-12', 'EFECTIVO', '15.20', 'NO REFERENCE'),
			(default, '2003-05-05', 'TARJETA DE CREDITO', '40.00', 'CCAGRI001'),
			(default, '2003-08-02', 'EFECTIVO', '8.00', 'NO REFERENCE'),
			(default, '2004-03-09', 'TRANSFERENCIA BANCARIA', '50.00', 'BAC002'),
			(default, '2003-10-10', 'EFECTIVO', '35.20', 'NO REFERENCE'),
			(default, '2003-10-20', 'EFECTIVO', '15.50', 'NO REFERENCE'),
			(default, '2003-10-25', 'TRANSFERENCIA BANCARIA', '14.50', 'BAC001'),
			(default, '2003-05-05', 'TARJETA DE CREDITO', '58.60', 'CCBAC001');

--Insercion de productos ( product_id, product_name, product_category, product_desc, product_price, product_type, product_quantity)
INSERT INTO Products
	VALUES 	(default, 'LECHE LA VAQUITA', 'ALIMENTOS', 'LECHE EN CAJA DE 1 LITRO', '12.50', 'LACTEOS', 100),
			(default, 'CARNE DE RES MOLIDA SABEMAS 250GR', 'CARNES Y EMBUTIDOS', 'CARNE DE RES MOLIDA SABEMAS 250GR', '8.00', 'CARNE ROJA', 25),
			(default, 'CARBON EL JORNALERO', 'INSUMOS', 'CARBON EN BOLSA 3 LIBRAS', '8.00', 'INSUMOS DE HOGAR', 20),
			(default, 'GASEOSA KOLASHANPAM 3 LITROS', 'BEBIDAS CARBONATADAS', 'GASEOSA 3 KOLASHANPAM 3 LITROS UNIDAD', '2.90', 'BEBIDAS CARBONATADAS', 50),
			(default, 'FOSFOROS FIRE BLUE', 'INSUMOS', 'CAJA DE FOSFOROS FIRE BLUE GRNADE 30 UNIDADES', '2.50', 'INSUMOS DE HOGAR', 45),
			(default, 'TEQUILA OLD FITO SUAVE', 'EMBRIAGANTES', 'TEQUILA DE MAGEY FERMENTADO OLD FITO 750ML', '7.00', 'LICORES', 30),
			(default, 'GALLETAS TRIGO-HONEY', 'SNACKS', 'GALLETAS DE HARINA DE TRIGO CON MIEL DE ABEJA 6 PACK', '2.50', 'CEREALES Y HARINAS', 15),
			(default,'SAZONADOR DE RES LA ABUELITA', 'CONDIMENTOS', 'SAZONADOR SABOR A RES LA ABUELITA 15GR', '1.50', 'CONDIMENTOS', 40),
			(default, 'QUESO DURO BLANDO LA VAQUITA', 'ALIMENTOS', 'QUESO DURO BLANDO 1 LIBRA', '4.50', 'LACTEOS', 10),
			(default, 'RON BLANCO 3 TIEMPOS', 'EMBRIAGANTES', 'RON DE FLOR DE CAÑA 25 GRADOS DE ALCOHOL 750ML', '8.00', 'LICORES', 35);

--Insercion de campanias de marketing ( marketing_id, marketing_name, marketing_type, marketing_promo)
INSERT INTO Marketing
	VALUES 	(default, 'OFERTAS DE LA SEMANA', 'MARKETING DIGITAL', '10% de descuento'),
			(default, 'DOMINGOS DE ASADO', 'MARKETING AUDIOVISUAL', '15% de descuento'),
			(default, 'EL BUEN VINO NO PASA DE MODA', 'PUBLICIDAD IMPRESA', '10% de descuento');

--Insercion de proveedores( supplier_id, supplier_name, supplier_telephone, supplier_adress, supplier_email, supplier_products, supplier_productsQ, supplier_manufacture )
INSERT INTO Suppliers
	VALUES 	(default, 'LA VAQUITA', '7474-1818', 'COLONIA EL ESPINO SAN SALVADOR', 'productoslavaquita@gmail.com',
			'LECHE EN CAJA DE 1 LITRO', 100, '30 DE ENERO DE 2023 CADUCA EL 30 DE ENERO DE 2024');

--Insercion de descripciones inventario ( inventory_id, inventory_date, inventory_desc )
INSERT INTO Inventory
	VALUES 	(default, '2003-05-05', 'LECHE EN CAJA DE 1 LITRO'),
			(default, '2003-05-05', 'CARNE DE RES MOLIDA SABEMAS 250GR');

-->>>>>INSERCION DE DATOS TABLAS FOREANEAS<<<<<--
/*Insercion de cantidad de productos ( factsSid, costumer_ids, sales_ids, product_ids,
cashier_ids, payment_ids, marketing_ids, factSdate, factsSquantityP)*/
INSERT INTO Facts_sales
	VALUES 	(default, 1, 1, 1, 'C01', 1, 1, '2003-10-23', 20),
			(default, 2, 2, 2, 'C02', 2, 2, '2003-02-02', 10),
			(default, 3, 3, 3, 'C01', 3, 3, '2003-03-05', 5),
			(default, 4, 4, 4, 'C02', 4, 1, '2003-08-04', 4),
			(default, 5, 5, 5, 'C01', 5, 2, '2003-01-05', 8),
			(default, 6, 6, 6, 'C02', 6, 3, '2003-05-05', 11),
			(default, 7, 7, 7, 'C01', 7, 3, '2003-04-08', 15),
			(default, 8, 8, 8, 'C02', 8, 2, '2003-02-01', 6),
			(default, 9, 9, 9, 'C01', 9, 1, '2003-01-01', 7),
			(default, 10, 10, 10, 'C02', 10, 2, '2003-11-24', 9);

--Insercion de hechos de la tabla Marketing y products ( factsMid, product_idM, marketing_idM, factsMdate, factsMdateEnd, factsMpromotions )
INSERT INTO Facts_marketing
	VALUES 	( default, 1, 1, '2003-12-01', '2003-12-30', '10% DE DESCUENTO EN LECHE LA VAQUITA'),
			( default, 2, 2, '2003-08-01', '2003-08-30', '10% DE DESCUENTO EN TODAS LAS CARNES ROJAS'),
			( default, 3, 3, '2003-05-01', '2003-05-30', '20% DE DESCUENTO EN VINOS OLD FITO SI LLEVAS MAS DE 2 UNIDADES');
			
--Insercion en la tabla Facts_suppliers ( factsSuppid, product_idFS, supplier_idFS, inventory_idFS)
INSERT INTO Facts_suppliers
VALUES ( default, 1, 1, 1 );
	  
--Insercion de datos Facts_inventory ( factsInv_id, product_idFI, facts_S_id, inventory_idFI, factsInv_date )
INSERT INTO Facts_inventory
VALUES (default, 1, 1, 1, '2003-02-28');

--Insercion de datos Facts_summary ( facts_summary_id, factsSid, factsMid, factsSuppid, facts_inventoy_id )
INSERT INTO Facts_summary
VALUES (default, 1, 1, 1, 1);

--SELECT * FROM Costumers;
--SELECT * FROM Cashier;
--SELECT * FROM Facts_sales;
--SELECT * FROM Facts_marketing;
--SELECT * FROM Facts_summary;