create database compras;
use compras;
create table clientes(
    id int(6) primary key,
    Nombre varchar (35) not null,
    Ap_Pat varchar(25) not null,
    Ap_Mat varchar(25) not null);
create table producto(
    clave int(8) primary key,
    Nameprod varchar(20) not null,
    Marca varchar(25) not null);
create table adquiere(
    Cod_ES int(3) primary key);

alter table adquiere
    add column id_C int(6),
    add column clave_P int (8);
alter table adquiere
    add foreign key (clave_P) references producto(clave),
    add foreign key (id_C) references clientes(id);

INSERT into clientes (id, Nombre, Ap_Mat, Ap_Pat) VALUES
("123456","Marco","Perez","Gomez"),
("246813", "Alfonso","Gonzalez", "Sanchez"),
("369123","Jessica","Lopez","Marquez");
INSERT into producto (clave,Nameprod,marca) VALUES
("12345678","Cajeta","Coronado"),
("23456789","leche", "Santa Clara"),
("34567890", "Agua","Bonafont"),
("45678901", "Jugo","Del Valle"),
("56789012", "Jugo", "Jumex"),
("67890123", "chocolate","Carlos V"),
("11223344", "chocolate", "CRUNCH");

INSERT into adquiere(Cod_ES,id_C,clave_P) VALUES
("123","123456","12345678"),
("246","123456","23456789"),
("224","246813","12345678"),
("124","369123","34567890"),
("125","369123","34567890"),
("126","246813","11223344");