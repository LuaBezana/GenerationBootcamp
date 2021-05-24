CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

-- criando tabelas
CREATE TABLE `db_generation_game_online`.`tb_classe`(
`id_classe` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `tipo` VARCHAR(15) NOT NULL,
  `equipamento` VARCHAR(15) NOT NULL,
  `modalidade` VARCHAR(15) NOT NULL
  );
  
CREATE TABLE `db_generation_game_online`.`tb_personagem`(
`id_personagem` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `nome` VARCHAR(15) NOT NULL,
  `poder_ataque` INT NOT NULL,
  `poder_defesa` INT NOT NULL,
  `nivel` INT NOT NULL,
  `classePersonagem` INT NOT NULL,
  CONSTRAINT fk_classePersonagem FOREIGN KEY (classePersonagem) REFERENCES tb_classe (id_classe)
  );  
  
  SELECT * FROM tb_classe;
  SELECT * FROM tb_personagem;
  
  -- populando tb_classe
INSERT INTO `db_generation_game_online`.`tb_classe`(tipo, equipamento, modalidade)
VALUES("Aqueiro","Arco","Furtivo");
INSERT INTO `db_generation_game_online`.`tb_classe`(tipo, equipamento, modalidade)
VALUES("Samurai","Espada","Corpo a Corpo");
INSERT INTO `db_generation_game_online`.`tb_classe`(tipo, equipamento, modalidade)
VALUES("Feiticeiro","Magia","Conjuração");
INSERT INTO `db_generation_game_online`.`tb_classe`(tipo, equipamento, modalidade)
VALUES("Político","Palavra","Mentira");

INSERT INTO `db_generation_game_online`.`tb_classe`(tipo, equipamento, modalidade)
VALUES("Atirador","Revolver","Disparos");

-- populando tb_personagem
INSERT INTO `db_generation_game_online`.`tb_personagem`(nome, poder_ataque, poder_defesa, nivel, classePersonagem)
VALUES("Daryl", 3000, 3500, 4, 1);
INSERT INTO `db_generation_game_online`.`tb_personagem`(nome, poder_ataque, poder_defesa, nivel, classePersonagem)
VALUES("Michonne", 4000, 3000, 3, 2);
INSERT INTO `db_generation_game_online`.`tb_personagem`(nome, poder_ataque, poder_defesa, nivel, classePersonagem)
VALUES("Governador", 1200, 1000, 1, 4);
INSERT INTO `db_generation_game_online`.`tb_personagem`(nome, poder_ataque, poder_defesa, nivel, classePersonagem)
VALUES("Rick", 4000, 3800, 4, 5);
INSERT INTO `db_generation_game_online`.`tb_personagem`(nome, poder_ataque, poder_defesa, nivel, classePersonagem)
VALUES("Andrea", 1800, 1900, 1, 5);
INSERT INTO `db_generation_game_online`.`tb_personagem`(nome, poder_ataque, poder_defesa, nivel, classePersonagem)
VALUES("Dale", 1100, 1300, 2, 3);
INSERT INTO `db_generation_game_online`.`tb_personagem`(nome, poder_ataque, poder_defesa, nivel, classePersonagem)
VALUES("Dumbledore", 1000, 1000, 1, 3);
INSERT INTO `db_generation_game_online`.`tb_personagem`(nome, poder_ataque, poder_defesa, nivel, classePersonagem)
VALUES("Bolsonaro", 500, 300, 1, 4);

SELECT * FROM tb_personagem WHERE poder_ataque > 2000;
SELECT * FROM tb_personagem WHERE poder_ataque BETWEEN 1000 and 2000;
SELECT * FROM tb_personagem WHERE nome LIKE "D%";
SELECT tb_personagem.nome, tb_classe.tipo, tb_classe.equipamento
FROM tb_personagem INNER JOIN tb_classe ON tb_personagem.classePersonagem = tb_classe.id_classe;
SELECT tb_personagem.nome, tb_classe.tipo 
FROM tb_personagem INNER JOIN tb_classe ON (tb_personagem.classePersonagem = tb_classe.id_classe) AND tb_classe.id_classe = 1;