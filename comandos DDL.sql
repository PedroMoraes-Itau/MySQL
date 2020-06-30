create database itau;
use itau;
create table enderecos(
ID int auto_increment,
NUMERO varchar(10) not null,
BAIRRO varchar(10) not null,
UF varchar(2),
CEP varchar(9),
COMPLEMENTO varchar(10),
CIDADE varchar(10),
LOGRADOURO varchar(30),
primary key (ID)
);

create table vendedores(
ID int auto_increment,
EMAIL varchar(50),
NOME varchar(50),
primary key (ID)
);

create table clientes(
ID int auto_increment,
NOME varchar(50) not null,
EMAIL varchar(50),
TELEFONE varchar(12),
RG varchar(12),
CPF varchar(12),
ENDERECO_FK int,
primary key (ID),
foreign key(ENDERECO_FK) references enderecos(ID)
);

show tables;
drop table clientes;
desc clientes;
/*
Alter table:
add - adiciona uma coluna;
drop column - remove a coluna;
rename nomeatual to nomenovo- renomeia a coluna;
modify - altera algum elemento da coluna que não seja nome;
*/
alter table vendedores add FUNCIONAL varchar(20) not null;

select * from vendedores;