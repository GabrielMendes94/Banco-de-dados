create database db_rhempresa;

use db_rhempresa;

create table tb_colaboradores(
	id bigint auto_increment,
    nome varchar (255),
    idade int,
    sexo varchar (50),
    telefone varchar(20),
    salario decimal(9,2),
    primary key (id)
);

select * from tb_colaboradores;

INSERT INTO tb_colaboradores(nome,idade,sexo,telefone,salario)VALUES("Gabriel",28,"Masculino","81998887777",40000.00);
INSERT INTO tb_colaboradores(nome,idade,sexo,telefone,salario)VALUES("Manuela",35,"Feminino","81998887776",4500.00);
INSERT INTO tb_colaboradores(nome,idade,sexo,telefone,salario)VALUES("Valéria",59,"Feminino","81998887775",3500.00);
INSERT INTO tb_colaboradores(nome,idade,sexo,telefone,salario)VALUES("Rosa",18,"Feminino","81998887774",1500.00);
INSERT INTO tb_colaboradores(nome,idade,sexo,telefone,salario)VALUES("Pedro",19,"Masculino","81998887773",1350.00);

SELECT * from tb_colaboradores where salario > 2000;
SELECT * from tb_colaboradores where salario < 2000;

UPDATE tb_colaboradores SET salario = 1800 where id = 4;