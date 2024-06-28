create database estoque;

use estoque;

create table fornecedor(
	pk int not null auto_increment, primary key (pk),
    nome varchar(255) not null,
    telefone varchar(255) not null,
    produto varchar(255) not null,
    endereco varchar(255) not null
);

create table setor(
	pk int not null auto_increment, primary key (pk),
	nome varchar(255) not null,
    equipamento varchar(255) not null
);

create table falha(
	pk int not null auto_increment, primary key (pk),
	horario date not null,
    defeito varchar(255) not null,
    marca varchar(255) not null,
    custo int not null,
    fornecedor_fk int not null, foreign key(fornecedor_fk) references fornecedor(pk)
);

create table manutencao(
	pk int not null auto_increment, primary key (pk),
    endereco varchar(255) not null,
    telefone varchar(255) not null,
    email varchar(255) not null,
    horario date not null,
    custo int not null,
    equipamento varchar(255) not null,
    setor_fk int not null, foreign key(setor_fk) references setor(pk)
);

create table equipamento(
	pk int not null auto_increment, primary key (pk), 
	nome varchar(255) not null,
	setor varchar(255) not null,
	id varchar(45) not null,
	marca varchar(255) not null,
	fornecedor_fk int not null, foreign key(fornecedor_fk) references fornecedor(pk),
	manutencao_fk int not null, foreign key(manutencao_fk) references manutencao(pk)
);