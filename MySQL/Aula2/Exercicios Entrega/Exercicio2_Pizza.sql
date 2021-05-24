CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

-- criando tabelas
CREATE TABLE `db_pizzaria_legal`.`tb_categoria`(
`id_categoria` INT NOT NULL AUTO_INCREMENT PRIMARY KEY UNIQUE,
  `tipo` VARCHAR(10) NOT NULL,
  `tamanho` VARCHAR(10) NOT NULL,
  `borda` VARCHAR(20) NOT NULL
  );
  
CREATE TABLE `db_pizzaria_legal`.`tb_pizza`(
`id_pizza` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `nome` VARCHAR(20) NOT NULL,
  `valor` FLOAT NOT NULL,
  `ingredientes` VARCHAR(60) NOT NULL,
  `cupom_bebida` BOOLEAN NOT NULL,
  `categoria` INT NOT NULL,
  CONSTRAINT fk_categoria FOREIGN KEY (categoria) REFERENCES tb_categoria (id_categoria)
  );  
  
  SELECT * FROM tb_pizza;
  SELECT * FROM tb_categoria;
  
  -- populando tb_categoriafk_categoria
INSERT INTO `db_pizzaria_legal`.`tb_categoria`(tipo, tamanho, borda)
VALUES("Salgada","Grande","Sem Borda");
INSERT INTO `db_pizzaria_legal`.`tb_categoria`(tipo, tamanho, borda)
VALUES("Salgada","Grande","Borda Cheddar");
INSERT INTO `db_pizzaria_legal`.`tb_categoria`(tipo, tamanho, borda)
VALUES("Salgada","Pequena","Sem Borda");
INSERT INTO `db_pizzaria_legal`.`tb_categoria`(tipo, tamanho, borda)
VALUES("Salgada","Pequena","Borda Cheddar");
INSERT INTO `db_pizzaria_legal`.`tb_categoria`(tipo, tamanho, borda)
VALUES("Doce","Pequena","Sem Borda");

INSERT INTO `db_pizzaria_legal`.`tb_pizza`(nome, valor, ingredientes, cupom_bebida, categoria)
VALUES("Pepperoni", 59.90, "Mussarela, Catupiry, Pepperoni", true, 1);
INSERT INTO `db_pizzaria_legal`.`tb_pizza`(nome, valor, ingredientes, cupom_bebida, categoria)
VALUES("Frango com Catupiry", 49.90, "Mussarela, Catupiry, Frango, Milho", true, 2);
INSERT INTO `db_pizzaria_legal`.`tb_pizza`(nome, valor, ingredientes, cupom_bebida, categoria)
VALUES("Baiana", 39.90, "Mussarela, Calabresa, Ovo, Tomate", true, 3);
INSERT INTO `db_pizzaria_legal`.`tb_pizza`(nome, valor, ingredientes, cupom_bebida, categoria)
VALUES("Mussarela", 34.90, "Mussarela, Tomate, Azeitona", false, 4);
INSERT INTO `db_pizzaria_legal`.`tb_pizza`(nome, valor, ingredientes, cupom_bebida, categoria)
VALUES("Brigadeiro", 37.90, "Brigadeiro, Granulado", true, 5);
INSERT INTO `db_pizzaria_legal`.`tb_pizza`(nome, valor, ingredientes, cupom_bebida, categoria)
VALUES("Prestígio", 32.90, "Chocolate, Coco", true, 5);
INSERT INTO `db_pizzaria_legal`.`tb_pizza`(nome, valor, ingredientes, cupom_bebida, categoria)
VALUES("Calabresa", 48.90, "Mussarela, Calabresa, Azeitona, Cebola", false, 1);
INSERT INTO `db_pizzaria_legal`.`tb_pizza`(nome, valor, ingredientes, cupom_bebida, categoria)
VALUES("4 Queijos", 62.90, "Mussarela, Catupiry, Parmesão, Cheddar", true, 2);

SELECT * FROM tb_pizza WHERE valor > 45.00;
SELECT * FROM tb_pizza WHERE valor BETWEEN 29.00 AND 60.00;
SELECT * FROM tb_pizza WHERE nome LIKE "B%";
SELECT tb_pizza.nome, tb_categoria.tamanho FROM tb_pizza
INNER JOIN tb_categoria ON tb_pizza.categoria = tb_categoria.id_categoria;
SELECT tb_pizza.nome, tb_pizza.valor, tb_categoria.borda, tb_categoria.tipo, tb_categoria.id_categoria, tb_pizza.categoria 
FROM tb_pizza INNER JOIN tb_categoria ON (tb_pizza.categoria = tb_categoria.id_categoria) and tb_categoria.id_categoria = 5;