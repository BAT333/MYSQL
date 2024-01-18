create database gerenciamento default character set utf8mb4
default collate utf8mb4_general_ci;
use gerenciamento;
create table funcionarios(

cpf int not null auto_increment,
nome varchar(40) not null,
email varchar(100) not null unique,
telefone bigint(11),
senha varchar(10),
codigo int unique,
primary key(cpf)
)default charset=utf8mb4;
desc cliente;
create table cliente(
cpf int not null auto_increment,
nome varchar(40),
email varchar(40)not null,
endereco varchar(150),
bairro varchar(50),
cidade varchar(20),
cep int not null,

primary key(cpf)
) default charset = utf8mb4;
alter table cliente
modify column email varchar(50) not null unique;
create table produto(
idproduto int not null,
nome varchar(20),
preco decimal,

primary key(idproduto)

) default charset= utf8mb4;
create table venda(
id int not null auto_increment,
data date,
cpfvendedor int ,
cpfcliente int,
 


primary key(id),
foreign key(cpfvendedor) references funcionarios(cpf),
foreign key(cpfcliente) references cliente(cpf)

)default charset= utf8mb4;




alter table cliente
add foreign key( idproduto) 
references venda (idproduto);