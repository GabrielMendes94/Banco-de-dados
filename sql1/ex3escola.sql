create database db_escola;

use db_escola;

create table tb_estudantes(
	id bigint auto_increment,
    nome varchar (255),
    idade int,
    endereco varchar(255),
    telefone varchar (20),
    nota decimal(4,2),
    primary key (id)
);

select * from tb_estudantes;

INSERT INTO tb_estudantes(nome,idade,endereco,telefone,nota)VALUES("Harry",11,"Rua dos alfeneiros, 4...","4444-444-444",8.00);
INSERT INTO tb_estudantes(nome,idade,endereco,telefone,nota)VALUES("Ronald",11,"A toca...","555-555-555",7.00);
INSERT INTO tb_estudantes(nome,idade,endereco,telefone,nota)VALUES("Hermione",11,"Rua da casa dos Granger, Heathgate, Hampstead...","81998887776",10.00);
INSERT INTO tb_estudantes(nome,idade,endereco,telefone,nota)VALUES("Gabriel",11,"Rua 41...","81998887777",10.00);
INSERT INTO tb_estudantes(nome,idade,endereco,telefone,nota)VALUES("Draco",11,"Rua 42...","81998887776",6.5);
INSERT INTO tb_estudantes(nome,idade,endereco,telefone,nota)VALUES("Dino",11,"Rua 43...","81998887775",7.5);
INSERT INTO tb_estudantes(nome,idade,endereco,telefone,nota)VALUES("Suzana",11,"Rua 44...","81998887774",7.0);
INSERT INTO tb_estudantes(nome,idade,endereco,telefone,nota)VALUES("Emília",11,"Rua 45...","81998887773",9.5);

SELECT * from tb_estudantes where nota > 7.0;
SELECT * from tb_estudantes where nota < 7.0;

UPDATE tb_estudantes SET nota = 7.5 where id = 1;