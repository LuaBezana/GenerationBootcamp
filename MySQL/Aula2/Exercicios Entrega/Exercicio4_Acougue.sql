CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

-- criando tabelas
CREATE TABLE `db_cidade_das_carnes`.`tb_categoria`(
`id_categoria` INT NOT NULL AUTO_INCREMENT PRIMARY KEY UNIQUE,
  `tipo` VARCHAR(15) NOT NULL,
  `peso` FLOAT NOT NULL,
  `marca` BOOLEAN NOT NULL
  );
  
    ALTER TABLE db_cidade_das_carnes.tb_categoria MODIFY COLUMN marca VARCHAR(20) NOT NULL;
  
  CREATE TABLE `db_cidade_das_carnes`.`tb_produto`(
`id_produto` INT NOT NULL AUTO_INCREMENT PRIMARY KEY UNIQUE,
  `nome` VARCHAR(15) NOT NULL,
  `fatiado` BOOLEAN NOT NULL,
  `temperado` BOOLEAN NOT NULL,
  `valor` FLOAT NOT NULL,
  `categoria` INT NOT NULL,
   CONSTRAINT fk_categoria FOREIGN KEY (categoria) REFERENCES tb_categoria (id_categoria)
  );
  
    SELECT * FROM tb_produto;
    SELECT * FROM tb_categoria;
    
    INSERT INTO `db_cidade_das_carnes`.`tb_categoria`(tipo, peso, marca)
    VALUES("Carne Bovina", 1.50, "Friboi");
	INSERT INTO `db_cidade_das_carnes`.`tb_categoria`(tipo, peso, marca)
    VALUES("Frango", 0.800, "Perdigão");
	INSERT INTO `db_cidade_das_carnes`.`tb_categoria`(tipo, peso, marca)
    VALUES("Linguiça", 1.00, "Sadia");
	INSERT INTO `db_cidade_das_carnes`.`tb_categoria`(tipo, peso, marca)
    VALUES("Peixe", 0.500, "Swift");
	INSERT INTO `db_cidade_das_carnes`.`tb_categoria`(tipo, peso, marca)
    VALUES("Carne Suína", 1.20, "Seara");

    INSERT INTO `db_cidade_das_carnes`.`tb_produto`(nome, fatiado, temperado, valor, categoria)
    VALUES("Alcatara", false, false, 65.00, 1);
    INSERT INTO `db_cidade_das_carnes`.`tb_produto`(nome, fatiado, temperado, valor, categoria)
    VALUES("Picanha", true, false, 77.00, 1);
    INSERT INTO `db_cidade_das_carnes`.`tb_produto`(nome, fatiado, temperado, valor, categoria)
    VALUES("Peito de Frango", true, true, 38.00, 2);
    INSERT INTO `db_cidade_das_carnes`.`tb_produto`(nome, fatiado, temperado, valor, categoria)
    VALUES("Cuiabana", false, true, 54.00, 3);
    INSERT INTO `db_cidade_das_carnes`.`tb_produto`(nome, fatiado, temperado, valor, categoria)
    VALUES("Toscana", false, true, 41.00, 3);
    INSERT INTO `db_cidade_das_carnes`.`tb_produto`(nome, fatiado, temperado, valor, categoria)
    VALUES("Salmão", false, false, 88.00, 4);
    INSERT INTO `db_cidade_das_carnes`.`tb_produto`(nome, fatiado, temperado, valor, categoria)
    VALUES("Bacalhau", false, false, 52.00, 4);
    INSERT INTO `db_cidade_das_carnes`.`tb_produto`(nome, fatiado, temperado, valor, categoria)
    VALUES("Pernil", true, false, 75.00, 5);
    
    SELECT * FROM tb_produto WHERE valor > 50.00;
	SELECT * FROM tb_produto WHERE valor BETWEEN 3.00 and 60.00;
	SELECT * FROM tb_produto WHERE nome LIKE "P%";
	SELECT tb_produto.nome, tb_produto.valor FROM tb_produto
	INNER JOIN tb_categoria ON tb_produto.categoria = tb_categoria.id_categoria;
	SELECT tb_produto.nome, tb_produto.valor, tb_produto.fatiado, tb_categoria.tipo,
	tb_categoria.marca, tb_categoria.id_categoria, tb_produto.categoria
	FROM tb_produto INNER JOIN tb_categoria ON (tb_produto.categoria = tb_categoria.id_categoria) and tb_categoria.id_categoria = 4;