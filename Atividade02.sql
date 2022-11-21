create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categorias(
id bigint auto_increment,
tipo varchar(255) not null,
tamanho varchar(255) not null,
primary key(id)
);

create table tb_pizzas(
id bigint auto_increment,
sabor varchar(55) not null,
adicional varchar(100),
borda_recheada boolean not null,
valor decimal(5,2) not null,
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categorias(id)
);

INSERT INTO  tb_categorias(tipo,tamanho)
VALUES
("Salgada","Broto"),
("Salgada","Grande"),
("Salgada","Gigante"),
("Doce","Broto"),
("Doce","Grande"),
("Doce","Gigante");

INSERT INTO tb_pizzas(sabor,adicional,borda_recheada,valor,categoria_id)
VALUES
("Marguerita",null,true,59.99,2),
("Calabresa C/ Mussarela","Azeitona",false,42.99,3),
("Frango C/ Catupiry",null,true,45.99,1),
("Pepperoni","Adicionar catupiry", true,68.99,3),
("Brigadeiro","Colocar chocolate ao invés de nutella",false,25.99,1),
("Atum","Mussarela",true,35.99,2),
("Romeu e Julieta",null,true,46.99,5),
("Nutella",null,false,78.99,6);

select * from tb_pizzas where valor > 45.00;

select * from tb_pizzas where valor between 50.00 and 100.00;

select * from tb_pizzas where sabor like "%m%";

select * from tb_pizzas
inner join tb_categorias on tb_pizzas.categoria_id = tb_categorias.id;

select sabor from tb_pizzas
inner join tb_categorias on tb_pizzas.categoria_id = tb_categorias.id
where tb_categorias.tipo = "Doce"; 