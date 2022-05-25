create database db_brecho;

use db_brecho;

create table tb_produtos(
	id bigint auto_increment,
    nome_produto varchar(255),
    marca varchar(255),
    cor varchar(255),
    quantidade int,
    valor decimal(7,2),
    primary key (id)
);

insert into tb_produtos(nome_produto,marca,cor,quantidade,valor)values("Camiseta","Nique","Bege",10,20.00);
insert into tb_produtos(nome_produto,marca,cor,quantidade,valor)values("Blusa","Animale","Azul",5,139.00);
insert into tb_produtos(nome_produto,marca,cor,quantidade,valor)values("Blusa","Zara","Estampada",2,40);
insert into tb_produtos(nome_produto,marca,cor,quantidade,valor)values("Blusa","Zoomp","Preta",3,116.00);
insert into tb_produtos(nome_produto,marca,cor,quantidade,valor)values("Bermuda","Hit","Verde",2,111.60);
insert into tb_produtos(nome_produto,marca,cor,quantidade,valor)values("Bermuda","TOMMY HILFIGER","Branca",1,68.00);
insert into tb_produtos(nome_produto,marca,cor,quantidade,valor)values("Bolsa","Arezzo","Marrom",1,92.00);
insert into tb_produtos(nome_produto,marca,cor,quantidade,valor)values("Bolsa","CORELLO","Preta",2,271.20);

select * from tb_produtos;

SELECT * from tb_produtos where valor > 50;
SELECT * from tb_produtos where valor < 50;
SELECT * from tb_produtos where id = 2;

UPDATE tb_produtos SET valor = 49.90 where id = 6;

SET SQL_SAFE_UPDATES = 0;
delete from tb_produtos where id = 2;
delete from tb_produtos where id = 3;
SET SQL_SAFE_UPDATES = 1;