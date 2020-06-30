insert into enderecos(ID,NUMERO,BAIRRO,UF,CEP,COMPLEMENTO,CIDADE,LOGRADOURO) values (0,1234,"Alto","RJ","25019-250","Não há.","Tere","Luis Lengruber");
insert into enderecos(NUMERO,BAIRRO,UF,CEP,COMPLEMENTO,CIDADE,LOGRADOURO) values (4321,"Mooca","SP","03119-250","Perto","São Paulo","Av. Paes de Barros");

insert into clientes(ID,NOME,EMAIL,TELEFONE,RG,CPF) values (0,"Pedro","Pedro@email.com",8765-4321, 11111111-11, 222222222-22);
insert into clientes(NOME,EMAIL,TELEFONE,RG,CPF) values ("Amanda","Amanda@email.com",8765-4321, 33333333-33, 444444444-44);

update enderecos set complemento="Nada" where ID=1;

alter table clientes add DATADENASCIMENTO date;

select * from enderecos where UF="SP";

select * from clientes order by EMAIL;

update clientes set DATADENASCIMENTO=str_to_date('26/09/1990', '%d/%m/%Y') where ID=1;

select * from clientes as C inner join enderecos as E on E.ID = C.ENDERECO_FK;

select C.NOME, E.LOGRADOURO from clientes as C inner join enderecos as E on E.ID = C.ENDERECO_FK;







