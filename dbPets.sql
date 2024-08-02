-- Deletar possíveis bancos
drop database dbPets;
-- Criar Banco de Dados
create database dbPets;
-- Usar o Banco
use dbPets;
-- Vizualizando banco de dados
show databases;
-- Criando tabela
create table tbFuncionarios(
codFunc int not null auto_increment,
nome varchar(50) not null,
email varchar(50),
telcel char(10),
cpf char(14),
primary key(codFunc)
);
create table tbUsuarios(
codUsu int not null auto_increment,
codFunc int not null,
nome varchar(50) not null,
senha varchar(10) not null,
primary key (codUsu),
foreign key(codFunc)references tbFuncionarios(codFunc)
);

-- Visualizando tabelas
show tables;
-- Visualizando as tabelas
desc tbUsuarios;
desc tbFuncionarios;