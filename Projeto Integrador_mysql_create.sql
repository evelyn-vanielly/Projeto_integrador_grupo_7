CREATE TABLE `Categoria` (
	`id_categoria` INT(5) NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	`disponibilidade` BOOLEAN NOT NULL,
	`quantidade` INT(20) NOT NULL,
	PRIMARY KEY (`id_categoria`)
);

CREATE TABLE `Produto` (
	`id_produto` INT(5) NOT NULL AUTO_INCREMENT,
	`foreign_key` INT(5) NOT NULL,
	`nome_produto` varchar(100) NOT NULL,
	`preco` DECIMAL(7,2) NOT NULL,
	`descricao` varchar(255) NOT NULL,
	`material` varchar(100) NOT NULL,
	`cor` varchar(50) NOT NULL,
	PRIMARY KEY (`id_produto`)
);

CREATE TABLE `Usuário` (
	`user_id` INT(100) NOT NULL AUTO_INCREMENT,
	`nome` varchar(100) NOT NULL,
	`email` varchar(100) NOT NULL,
	`senha` varchar(30) NOT NULL,
	`cep` INT(8) NOT NULL,
	`complemento` varchar(40) NOT NULL,
	`cpf` INT(11) NOT NULL,
	`telefone` varchar(20) NOT NULL,
	`admin` INT(5) NOT NULL,
	PRIMARY KEY (`user_id`)
);

ALTER TABLE `Produto` ADD CONSTRAINT `Produto_fk0` FOREIGN KEY (`foreign_key`) REFERENCES `Categoria`(`id_categoria`);

