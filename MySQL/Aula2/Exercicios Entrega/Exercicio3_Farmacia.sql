CREATE DATABASE db_farmacia_do_bem;
USE db_farmacia_do_bem;

-- criando tabelas
CREATE TABLE `db_farmacia_do_bem`.`tb_categoria`(
`id_categoria` INT NOT NULL AUTO_INCREMENT PRIMARY KEY UNIQUE,
  `tipo` VARCHAR(15) NOT NULL,
  `medida` VARCHAR(2) NOT NULL,
  `receita` BOOLEAN NOT NULL
  );
  
  ALTER TABLE db_farmacia_do_bem.tb_categoria MODIFY COLUMN tipo VARCHAR(20) NOT NULL;
  
  CREATE TABLE `db_farmacia_do_bem`.`tb_produto`(
`id_produto` INT NOT NULL AUTO_INCREMENT PRIMARY KEY UNIQUE,
  `nome` VARCHAR(15) NOT NULL,
  `marca` VARCHAR(10) NOT NULL,
  `funcao` VARCHAR(30) NOT NULL,
  `valor` FLOAT NOT NULL,
  `categoria` INT NOT NULL,
  CONSTRAINT fk_categoria FOREIGN KEY (categoria) REFERENCES tb_categoria (id_categoria)
  );
  
  SELECT * FROM tb_produto;
  SELECT * FROM tb_categoria;
  
    -- populando tb_categoria fk_categoria
INSERT INTO `db_farmacia_do_bem`.`tb_categoria`(tipo, medida, receita)
VALUES("Cosmético","Ml",false);
INSERT INTO `db_farmacia_do_bem`.`tb_categoria`(tipo, medida, receita)
VALUES("Cosmético","Gr",false);
INSERT INTO `db_farmacia_do_bem`.`tb_categoria`(tipo, medida, receita)
VALUES("Analgésido","Gl",false);
INSERT INTO `db_farmacia_do_bem`.`tb_categoria`(tipo, medida, receita)
VALUES("Antibiótico","Ml",true);
INSERT INTO `db_farmacia_do_bem`.`tb_categoria`(tipo, medida, receita)
VALUES("Anti-inflamatório","Gr",true);

INSERT INTO `db_farmacia_do_bem`.`tb_produto`(nome, marca, funcao, valor, categoria)
VALUES("Shampoo Elseve", "L'oreal", "Hidratação Profunda", 21.90, 1);
INSERT INTO `db_farmacia_do_bem`.`tb_produto`(nome, marca, funcao, valor, categoria)
VALUES("Sabonete", "Nivea", "Sabonete Facial", 15.80, 2);
INSERT INTO `db_farmacia_do_bem`.`tb_produto`(nome, marca, funcao, valor, categoria)
VALUES("Dipirona", "Dorflex", "Alívio Dor Muscular", 11.90, 3);
INSERT INTO `db_farmacia_do_bem`.`tb_produto`(nome, marca, funcao, valor, categoria)
VALUES("Amoxicilina", "Amoxil", "Combate Infecções", 34.90, 4);
INSERT INTO `db_farmacia_do_bem`.`tb_produto`(nome, marca, funcao, valor, categoria)
VALUES("Ibuprofeno", "NeoQuímica", "Contra Dor e Febre", 30.90, 5);
INSERT INTO `db_farmacia_do_bem`.`tb_produto`(nome, marca, funcao, valor, categoria)
VALUES("Creme Kerastase", "L'oreal", "Hidratação dos Fios", 122.90, 1);
INSERT INTO `db_farmacia_do_bem`.`tb_produto`(nome, marca, funcao, valor, categoria)
VALUES("Tetralysal", "Genérico", "Combate Acnes", 166.90, 4);
INSERT INTO `db_farmacia_do_bem`.`tb_produto`(nome, marca, funcao, valor, categoria)
VALUES("Flexive CDM", "Merck", "Relaxante Muscular", 60.75, 5);

SELECT * FROM tb_produto WHERE valor > 50.00;
SELECT * FROM tb_produto WHERE valor BETWEEN 3.00 and 60.00;
SELECT * FROM tb_produto WHERE nome LIKE "C%";
SELECT tb_produto.nome, tb_produto.valor FROM tb_produto
INNER JOIN tb_categoria ON tb_produto.categoria = tb_categoria.id_categoria;
SELECT tb_produto.nome, tb_produto.valor, tb_produto.funcao, tb_categoria.tipo,
tb_categoria.receita, tb_categoria.id_categoria, tb_produto.categoria
FROM tb_produto INNER JOIN tb_categoria ON (tb_produto.categoria = tb_categoria.id_categoria) and tb_categoria.id_categoria = 1;
