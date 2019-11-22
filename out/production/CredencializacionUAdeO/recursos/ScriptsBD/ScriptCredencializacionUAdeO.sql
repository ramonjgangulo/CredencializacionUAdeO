Create Database CREDENCIALIZACION_UADEO

use CREDENCIALIZACION_UADEO

Create table Carreras(
	carrera_id integer identity PRIMARY KEY,
	carrera_desc varchar(70)
)

Create table Estudiantes(
	est_matricula varchar(8) PRIMARY KEY check (isNumeric(est_matricula)=1),
	est_nombre varchar(25),
	est_apat varchar(15),
	est_amat varchar(15),
	est_dir_calle varchar(15),
	est_dir_numero integer,
	est_dir_colonia varchar(20),
	est_dir_poblacion varchar(20),
	est_dir_cp varchar(5) check(isNumeric(est_dir_cp)=1 AND Len(est_dir_cp)=5),
	est_email varchar(35) unique,
	est_telefono varchar(10) check(isNumeric(est_telefono)=1),
	est_foto varchar(40),
	est_firma varchar(40),
	carrera integer,
	FOREIGN KEY (carrera) REFERENCES Carreras(carrera_id)
)

Create table Unidades (
	unidad_id integer PRIMARY KEY identity,
	unidad_desc	varchar(20)
)

Create table Docentes(
	doc_num_empleados varchar(4) PRIMARY KEY, check(isNumeric(doc_num_empleados)=1),
	doc_nombre varchar(25),
	doc_apat varchar(15),
	doc_amat varchar(15),
	doc_email varchar(35) unique,
	doc_telefono varchar(10) check(isNumeric(doc_telefono)=1),
	doc_adscripcion varchar(30),
	doc_categoria varchar(30),
	doc_foto varchar(40),
	doc_firma varchar(40)
)

Create table Administrativos(
	admin_num_empleados varchar(4) PRIMARY KEY, check(isNumeric(admin_num_empleados)=1),
	admin_nombre varchar(25),
	admin_apat varchar(15),
	admin_amat varchar(15),
	admin_email varchar(35) unique,
	admin_telefono varchar(10) check(isNumeric(admin_telefono)=1),
	admin_adscripcion varchar(30),
	admin_puesto varchar(30),
	admin_foto varchar(40),
	admin_firma varchar(40)
)

Create table EstatusCredencial(
	ec_id integer identity PRIMARY KEY,
	ec_desc varchar(15)
)

drop table EstatusCredencial

Create table CredencialesEstudiantes(
	ce_id integer identity,
	ce_matricula varchar(8),
	ce_cod_int varchar(7) unique check(isNumeric(ce_cod_int)=1),
	estatus integer,
	PRIMARY KEY (ce_matricula,ce_id),
	FOREIGN KEY (ce_matricula) REFERENCES Estudiantes(est_matricula),
	FOREIGN KEY (estatus) REFERENCES EstatusCredencial(ec_id)
)

Create table CredencialesDocentes(
	cd_id integer identity,
	cd_num_empleado varchar(4),
	cd_cod_int varchar(7) unique check(isNumeric(cd_cod_int)=1),
	estatus integer,
	PRIMARY KEY (cd_num_empleado,cd_id),
	FOREIGN KEY (cd_num_empleado) REFERENCES Docentes(doc_num_empleados),
	FOREIGN KEY (estatus) REFERENCES EstatusCredencial(ec_id)
)

Create table CredencialesAdministrativos(
	ca_id integer identity,
	ca_num_empleado varchar(4),
	ca_cod_int varchar(7) unique check(isNumeric(ca_cod_int)=1),
	estatus integer,
	PRIMARY KEY (ca_num_empleado,ca_id),
	FOREIGN KEY (ca_num_empleado) REFERENCES Docentes(doc_num_empleados),
	FOREIGN KEY (estatus) REFERENCES EstatusCredencial(ec_id)
)

