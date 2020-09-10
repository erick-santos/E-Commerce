CREATE DATABASE bd_javasports;
USE bd_javasports;

CREATE TABLE tbl_produto(
idProduto INT(10)  primary key auto_increment NOT NULL,
codigoProduto varchar(255) NOT NULL,
nomeProduto varchar(255) NOT NULL,
tipoProduto varchar(255) NOT NULL,
descricao varchar(255),
marca varchar(255) NOT NULL,
genero varchar(10),
unidade varchar(10),
precoUnitario decimal(5,2) NOT NULL,
dataCadastramento date,
imagemProduto varchar(255) NULL
);

create table tbl_usuario (
	cod int (20) not null auto_increment primary key,
    nome varchar (50),
    cpf varchar (20),
    email varchar (50),
    senha varchar (30),
    endereco varchar (50),
    numero varchar (15),
    complemento varchar (20),
    cidade varchar (20),
    estado varchar (20),
    cep varchar (20)
);

CREATE TABLE tbl_Log_Alteracao(
tipoAlteracao varchar(10),
codUser VARCHAR(255),
dataHoraAcao datetime(6),
tipoProduto varchar(255),
codigoProduto varchar(255),
nomeProduto varchar(255),
descricao varchar(255),
marca varchar(255) NOT NULL,
precoUnitario decimal(5,2) NOT NULL,
dataCadastramento date
);

-- drop table tbl_Log_Alteracao;

select * from tbl_produto;
select * from tbl_produto order by codigoProduto ASC;

delete from tbl_produto where idProduto = 3;

DELIMITER $$
CREATE PROCEDURE selecionaProduto()
BEGIN
	SELECT * FROM tbl_produto ORDER BY tipoProduto ASC;
END $$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER trigger_delete
    AFTER DELETE
    ON tbl_produto FOR EACH ROW
BEGIN
	INSERT INTO tbl_Log_Alteracao VALUES ('DELETE',CURRENT_USER(), NOW(), OLD.tipoProduto,OLD.codigoProduto, OLD.nomeProduto, OLD.descricao, OLD.marca, OLD.precoUnitario, OLD.dataCadastramento);
END$$

-- drop trigger trigger_delete;

-- call selecionaProduto();