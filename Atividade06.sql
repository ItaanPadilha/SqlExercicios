create database db_curso_da_minha_vida;

use db_curso_da_minha_vida;

create table tb_categorias(
id bigint auto_increment,
tipo varchar(255) not null,
licenciatura varchar(255) not null,
primary key(id)
);

create table tb_cursos(
id bigint auto_increment,
nome varchar(100) not null,
cargaHoraria int not null,
matricula varchar(10) not null,
valor decimal(8,2) not null,
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categorias(id)
);

INSERT INTO  tb_categorias(tipo,licenciatura)
VALUES
("Saúde","Bacharel"),
("Saúde","Doutorado"),
("Saúde","Pós-Doutorado"),
("Tecnologia","Bacharel"),
("Tecnologia","Doutorado"),
("Tecnologia","Pós-Doutorado");

INSERT INTO tb_cursos(nome,cargaHoraria,matricula,valor,categoria_id)
VALUES
("Ciência da Computação",600,"d041fi5",700.00,4),
("Engenharia de Software",750,"c9f9aas2",920.00,5),
("Engenharia da Computação",750,"daq2wo6",130.00,6),
("Rede de Computadores",450,"uid2kj9",459.00,4),
("Biomedicina",600,"kjs2ji6",350.00,1),
("Medicina",3000,"oi2sad4",10970.00,2),
("Enfermagem",780,"se6eas1",780.00,3),
("Biomedicina",200,"kasdm92t",570,3);

select * from tb_cursos where valor > 500.00;

select * from tb_cursos where valor between 600.00 and 1000.00;

select * from tb_cursos where nome like "%j%";

select * from tb_cursos
inner join tb_categorias 
on tb_cursos.categoria_id = tb_categorias.id;

SELECT * FROM tb_cursos
INNER JOIN tb_categorias
ON tb_cursos.categoria_id = tb_categorias.id
where tipo like "%Saúde%";
