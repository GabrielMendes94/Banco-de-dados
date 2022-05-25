create database db_quitandaGen;

use db_quitandaGen;

create table tb_produtos(
	id bigint auto_increment,
    nome varchar(100),
    categoria varchar (20),
    tipoUnidade varchar (10),
    qtdUnidade decimal(6,3),
    valorUnidade decimal(6,2),  
    primary key (id)
);

select * from tb_produtos;

insert into tb_produtos(nome,categoria,tipoUnidade,qtdUnidade,valorUnidade)values("Banana","Frutas","kg",1.5,4);
insert into tb_produtos(nome,categoria,tipoUnidade,qtdUnidade,valorUnidade)values("Limão","Frutas","kg",0.385,4.0);
insert into tb_produtos(nome,categoria,tipoUnidade,qtdUnidade,valorUnidade)values("Laranja","Frutas","kg",1.0,4.0);
insert into tb_produtos(nome,categoria,tipoUnidade,qtdUnidade,valorUnidade)values("Maracujá","Frutas","kg",0.5,4.0);
insert into tb_produtos(nome,categoria,tipoUnidade,qtdUnidade,valorUnidade)values("Abacaxi","Frutas","Unidade",2.0,4.0);
insert into tb_produtos(nome,categoria,tipoUnidade,qtdUnidade,valorUnidade)values("Cenoura","Legumes","kg",1.0,1.5);
insert into tb_produtos(nome,categoria,tipoUnidade,qtdUnidade,valorUnidade)values("Pepino","Legumes","kg",1.0,3.2);
insert into tb_produtos(nome,categoria,tipoUnidade,qtdUnidade,valorUnidade)values("Cebola","Verduras","kg",1.5,4.5);

SELECT * from tb_produtos where categoria = "frutas";
SELECT * from tb_produtos where categoria = "legumes";

UPDATE tb_produtos SET valorUnidade = 3.0 where id = 7;

SET SQL_SAFE_UPDATES = 0;
delete from tb_produtos where categoria = "verduras";
SET SQL_SAFE_UPDATES = 1;