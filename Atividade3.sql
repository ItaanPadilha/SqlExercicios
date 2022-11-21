create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

create table tb_categorias(
id bigint auto_increment,
tipo varchar(255) not null,
categoria varchar(255) not null,
primary key(id)
);

create table tb_produtos(
id bigint auto_increment,
nome varchar(100) not null,
quantidade int not null,
controlado boolean not null,
peso int not null,
valor decimal(5,2) not null,
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categorias(id)
);

INSERT INTO  tb_categorias(tipo,categoria)
VALUES
("Gota","Fármacos"),
("Comprimido","Hormônio"),
("Injetável","Hormônio"),
("Comprimido","Remédio"),
("Injetável","Vacina");



INSERT INTO tb_produtos(nome,quantidade,controlado,peso,valor,categoria_id)
VALUES
("Oxandrolona",70,true,20,120,2),
("Deposteron",3,true,200,200.00,3),
("Dipirona",20,false,30,10.00,1),
("Pfizer",1, true,10,0,5),
("Decongex",20,false,30,5.99,4),
("Durateston",2,true,250,45.99,3),
("Orlistate",42,false,120,85.00,4),
("Paracetamol",12,false,500,4.99,4);

select * from tb_produtos where valor > 50.00;

select * from tb_produtos where valor between 5 and 60.00;

select * from tb_produtos where nome like "%c%";

select * from tb_produtos
inner join tb_categorias 
on tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM tb_produtos 
INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM tb_produtos 
INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
where tipo like "%Injetável%";







