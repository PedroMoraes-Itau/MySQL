insert into vendedores(ID, EMAIL, NOME, FUNCIONAL) values (0,"pedro@email.com.br","Pedro", 010101);
insert into vendedores(NOME, FUNCIONAL) values ("HUMBERTO",010102);

delete from vendedores where ID=1;
update vendedores set email="Humberto@email.com.br" where ID=2;

select nome from vendedores;

select nome as vendedor from vendedores;
select * from vendedores where NOME like "Pe%";

select * from vendedores where NOME like "Pe%" order by NOME;

