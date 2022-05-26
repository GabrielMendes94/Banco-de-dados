create database db_pizzaria_legal;

use db_pizzaria_legal;

#1- Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar as pizzas.
create table tb_categorias(
	id bigint auto_increment,
    nome_categoria varchar(255),
    tamanho varchar (255),

	primary key (id)
);

#2- Crie a tabela tb_pizzas e determine 4 atributos, além da Chave Primária, relevantes aos produtos da pizzaria.
create table tb_pizzas(
	id bigint auto_increment,
    sabor varchar(255),
	quantidade int,
    tipo_borda varchar(255),
    preco decimal (7,2),
    categoria_id bigint not null,
    
    primary key(id),
    #3- Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_pizzas.
    foreign key (categoria_id) references tb_categorias(id) 
); 

#4- Insira 5 registros na tabela tb_categorias.
INSERT INTO tb_categorias(nome_categoria, tamanho) VALUES ("doce","pequena");
INSERT INTO tb_categorias(nome_categoria, tamanho) VALUES ("doce","grande");
INSERT INTO tb_categorias(nome_categoria, tamanho) VALUES ("salgada","pequena");
INSERT INTO tb_categorias(nome_categoria, tamanho) VALUES ("salgada","grande");
INSERT INTO tb_categorias(nome_categoria, tamanho) VALUES ("salgada","gigante");

select * from tb_categorias;

#5- Insira 8 registros na tabela tb_pizzas, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
INSERT INTO tb_pizzas(sabor, quantidade, tipo_borda, preco, categoria_id) VALUES ("Mussarela", 1, "simples", 20.00, 3);
INSERT INTO tb_pizzas(sabor, quantidade, tipo_borda, preco, categoria_id) VALUES ("Calabresa", 1, "borda com catupiry", 35.00, 4);
INSERT INTO tb_pizzas(sabor, quantidade, tipo_borda, preco, categoria_id) VALUES ("Frango", 1, "borda com cheddar", 50.00, 5);
INSERT INTO tb_pizzas(sabor, quantidade, tipo_borda, preco, categoria_id) VALUES ("Portuguesa", 1, "simples", 25.00, 3);
INSERT INTO tb_pizzas(sabor, quantidade, tipo_borda, preco, categoria_id) VALUES ("Napolitana", 1, "simples", 46.00, 4);
INSERT INTO tb_pizzas(sabor, quantidade, tipo_borda, preco, categoria_id) VALUES ("Chocolate", 1, "simples", 30.00, 1);
INSERT INTO tb_pizzas(sabor, quantidade, tipo_borda, preco, categoria_id) VALUES ("Banana", 1, "borda de chocolate", 35.00, 1);
INSERT INTO tb_pizzas(sabor, quantidade, tipo_borda, preco, categoria_id) VALUES ("Morango", 1, "borda de chocolate", 55.00, 2);

select * from tb_pizzas;

#6- Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.
select * from tb_pizzas where preco > 45.00;

#7- Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
select * from tb_pizzas where preco >= 50 and preco<=100;

#8- Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.
select * from tb_pizzas where sabor like "%M%";

#9- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.
select * from tb_pizzas inner join tb_categorias on tb_categorias.id = tb_pizzas.categoria_id;

#10- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce).
select * from tb_pizzas inner join tb_categorias on tb_categorias.id = tb_pizzas.categoria_id 
	where tb_categorias.nome_categoria = "doce"; 