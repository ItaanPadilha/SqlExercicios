create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categorias(
id bigint auto_increment,
localDeCorte varchar(255) not null,
categoria varchar(255) not null,
primary key(id)
);

create table tb_produtos(
id bigint auto_increment,
nome varchar(100) not null,
peso int not null,
vacuo boolean not null,
valor decimal(5,2) not null,
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categorias(id)
);

INSERT INTO  tb_categorias(localDeCorte,categoria)
VALUES
("Traseiro","Bovino"),
("Dianteiro","Bovino"),
("Dianteiro","Suíno"),
("Traseiro","Suíno"),
("Traseiro","Carneiro"),
("Dianteiro","Carneiro");



INSERT INTO tb_produtos(nome,peso,vacuo,valor,categoria_id)
VALUES
("Picanha",1000,true,79.90,1),
("Acém",2000,false,33.90,2),
("Paleta",500,false,19.90,3),
("Picanha suína",1230, true,25.90,4),
("Carré de Carneiro",1170,true,129.90,6),
("Pernil de Caneiro",1093,false,69.90,5),
("Paleta de Carneiro",3900,true,49.90,6),
("Rabada Bovina",700,false,15.99,1);

select * from tb_produtos where valor > 50.00;

select * from tb_produtos where valor between 50.00 and 150.00;

select * from tb_produtos where nome like "%c%";

select * from tb_produtos
inner join tb_categorias 
on tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM tb_produtos 
INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
where categoria like "%Bovino%";



