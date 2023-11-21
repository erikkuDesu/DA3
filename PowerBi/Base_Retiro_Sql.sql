CREATE TABLE Tarjetas (
	bin_tarj INT PRIMARY KEY NOT NULL UNIQUE,
	banco_tarj VARCHAR NOT NULL,
	tipo_tarj VARCHAR NOT NULL,
	clasif_tarj VARCHAR NOT NULL
);

CREATE TABLE Ubicacion (
	iso_ubi VARCHAR PRIMARY KEY NOT NULL UNIQUE,
	depto_ubi VARCHAR NOT NULL,
	capital_ubi VARCHAR NOT NULL
);

CREATE TABLE Verificacion (
	respuesta_ver SERIAL PRIMARY KEY NOT NULL UNIQUE,
	desc_ver VARCHAR NOT NULL
);

CREATE TABLE Errores (
	motivo_err SERIAL PRIMARY KEY NOT NULL UNIQUE,
	desc_err VARCHAR NOT NULL
);

CREATE TABLE Transacciones (
	id_trx SERIAL PRIMARY KEY NOT NULL UNIQUE,
	desc_trx VARCHAR NOT NULL
);

CREATE TABLE Cajeros (
	terminal_atm VARCHAR PRIMARY KEY NOT NULL,
	tipo_atm VARCHAR NOT NULL,
	nombre_atm VARCHAR NOT NULL,
	depto_atmUbi VARCHAR NOT NULL,
	ubicacion_atm VARCHAR NOT NULL,
	direccion_atm VARCHAR NOT NULL,
	FOREIGN KEY(depto_atmUbi) REFERENCES Ubicacion(iso_ubi)
);

CREATE TABLE Retiros_facts (
	dia INT NOT NULL,
	mes INT NOT NULL,
	anio INT NOT NULL,
	terminal_ret VARCHAR NOT NULL,
	monto INT NOT NULL,
	resp_ret INT NOT NULL,
	mensaje_ret INT NOT NULL,
	trx_ret INT NOT NULL,
	tarjeta_ret VARCHAR NOT NULL,
	FOREIGN KEY(terminal_ret) REFERENCES Cajeros(terminal_atm),
	FOREIGN KEY(resp_ret) REFERENCES Verificacion(respuesta_ver),
	FOREIGN KEY(mensaje_ret) REFERENCES Errores(motivo_err),
	FOREIGN KEY(trx_ret) REFERENCES Transacciones(id_trx)
);