create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

#1- Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.
create table tb_categorias(
	id bigint auto_increment,
    nome_categoria varchar(255),
    setor varchar(255),
    
    primary key(id)
);

#2- Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia.
create table tb_produtos(
	id bigint auto_increment,
    nome varchar(255),
    valor decimal (9,2),
    quantidade int,
    marca varchar(255),
    categoria_id bigint not null,
    
    primary key (id),
    foreign key (categoria_id) references tb_categorias(id) 
    -- define categoria_id dentro da tb_produtos como chave estrangeira e usa como referencia id da tb_categorias
    #3-Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos.
);

#4- Insira 5 registros na tabela tb_categorias.
INSERT INTO tb_categorias(nome_categoria, setor) VALUES ("Antibiotico","Medicamento");
INSERT INTO tb_categorias(nome_categoria, setor) VALUES ("Anti-Inflamatório","Medicamentos");
INSERT INTO tb_categorias(nome_categoria, setor) VALUES ("Suplementos","Fitness");
INSERT INTO tb_categorias(nome_categoria, setor) VALUES ("Antifúngico","Medicamento");
INSERT INTO tb_categorias(nome_categoria, setor) VALUES ("Ansiolítico","Medicamento");

select * from tb_categorias;

-- atalho para rodar a linha de comando, cursor no final da linha  ctrl + enter
-- bloco de comando, seleciona o bloco de codigo, ctrl + shift + enter

#5- Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
INSERT INTO tb_produtos(nome, valor, quantidade, marca, categoria_id) VALUES ("Amoxicilina", 60.00, 10, "Genérico", 1);
INSERT INTO tb_produtos(nome, valor, quantidade, marca, categoria_id) VALUES ("Ibuprofeno", 30.00, 10, "Genérico", 2);
INSERT INTO tb_produtos(nome, valor, quantidade, marca, categoria_id) VALUES ("Creatina", 180.00, 5, "Genérico", 3);
INSERT INTO tb_produtos(nome, valor, quantidade, marca, categoria_id) VALUES ("Fluconazol", 15.00, 5, "Genérico", 4);
INSERT INTO tb_produtos(nome, valor, quantidade, marca, categoria_id) VALUES ("Alprazolam", 14.00, 5, "Genérico", 5);
INSERT INTO tb_produtos(nome, valor, quantidade, marca, categoria_id) VALUES ("Xanax", 35.00, 5, "Pfizer", 5);
INSERT INTO tb_produtos(nome, valor, quantidade, marca, categoria_id) VALUES ("Rivotril", 25.00, 5, "Roche", 5);
INSERT INTO tb_produtos(nome, valor, quantidade, marca, categoria_id) VALUES ("Cetoconazol", 10.00, 5, "Genérico", 4);

select * from tb_produtos;

#6- Faça um SELECT que retorne todos os produtos cujo valor seja maior do que R$ 50,00.
select * from tb_produtos where valor > 50.00;

#7- Faça um SELECT que retorne todos os produtos cujo valor esteja no intervalo R$ 5,00 e R$ 60,00.
select * from tb_produtos where valor >=5.00 and valor <=60.00;

#8- Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.
select * from tb_produtos where nome like "%c%"; #%c - terminam com c | e c% começam com c

#9- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categoria_id;

/*10- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos 
com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica 
(Exemplo: Todos os produtos que pertencem a categoria cosméticos).*/
select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categoria_id
 where tb_categorias.nome_categoria like "antifungico";