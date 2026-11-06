create database resenha

go

use resenha 


CREATE TABLE Clientes (
    CodCli CHAR(5)identity,
    Nome VARCHAR(40) NOT NULL,
    Contato VARCHAR(30) NOT NULL,
    Cargo VARCHAR(30) NOT NULL,
    Endereco VARCHAR(60) NOT NULL,
    Cidade VARCHAR(15) NOT NULL,
    Regiao VARCHAR(15) NOT NULL,
    CEP VARCHAR(10) NOT NULL,
    Pais VARCHAR(15) NOT NULL,
    Telefone VARCHAR(24) NOT NULL,
    Fax VARCHAR(24) NOT NULL
	primary key( CodCli)
);

CREATE TABLE Pedidos (
    NumPed INT PRIMARY KEY,
    CodCli CHAR(5),
    CodFun INT,
    DataPed DATE NULL,
    DataEntrega DATE NULL,
    Frete MONEY NULL,

    FOREIGN KEY (CodCli) REFERENCES Clientes(CodCli),
	FOREIGN KEY (CodFun) REFERENCES Funcionarios(CodFun)
);


CREATE TABLE Funcionarios (
    CodFun INT identity,
    Sobrenome VARCHAR(20) NULL,
    Nome VARCHAR(10) NULL,
    Cargo VARCHAR(30) NULL,
    DataNasc DATE NULL,
    Endereco VARCHAR(60) NULL,
    Cidade VARCHAR(15) NULL,
    CEP VARCHAR(10) NULL,
    Pais VARCHAR(15) NULL,
    Fone VARCHAR(24) NULL,
    Salario MONEY NULL
	primary key( CodFun)
);
