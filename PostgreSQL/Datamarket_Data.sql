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