CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome_produto varchar(255),
    valor decimal(9,2),
    marca varchar(255),
    quantidade int,
    cor varchar(255),  
    primary key (id)
);

select * from tb_produtos;

INSERT INTO tb_produtos(nome_produto,valor,marca,quantidade,cor)VALUES("Camiseta",10.50,"Nique",10,"Bege");
INSERT INTO tb_produtos(nome_produto,valor,marca,quantidade,cor)VALUES("Calça",500.00,"Ardidas",5,"Preta");
INSERT INTO tb_produtos(nome_produto,valor,marca,quantidade,cor)VALUES("Meia",200.50,"Superemo",2,"Vermelha");
INSERT INTO tb_produtos(nome_produto,valor,marca,quantidade,cor)VALUES("Camiseta",100.00,"Adidas",3,"Branca");
INSERT INTO tb_produtos(nome_produto,valor,marca,quantidade,cor)VALUES("Calça",600.00,"Nike",2,"Preta");
INSERT INTO tb_produtos(nome_produto,valor,marca,quantidade,cor)VALUES("Tênis",300.50,"Vans",1,"Preto");
INSERT INTO tb_produtos(nome_produto,valor,marca,quantidade,cor)VALUES("Camiseta",100.50,"Superemo",1,"Vermelha");
INSERT INTO tb_produtos(nome_produto,valor,marca,quantidade,cor)VALUES("Meia",50.00,"Superemo",2,"Rosa");

SELECT * from tb_produtos where valor > 500;
SELECT * from tb_produtos where valor < 500;

UPDATE tb_produtos SET marca = "Guti" where id = 3;