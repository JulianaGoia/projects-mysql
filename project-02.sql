/*criação do banco de dados*/
create database payment_app;

/*seleção do banco de dados*/
use payment_app;

/*criação da tabela usuario*/
create table usuario (
   id int not null auto_increment,
   nome VARCHAR(100) NOT NULL,
   imagem blob not null,
   nome_usuario VARCHAR(50) NOT NULL,
   data_cadastro DATE,
    PRIMARY KEY ( id )
);

/*criação da tabela cartão*/
create table cartao (
   id int not null auto_increment,
   numero varchar(16) not null,
   cvv int(3) NOT NULL,
   data_expiracao DATE,
   valido boolean NOT NULL,
   data_cadastro DATE,
    PRIMARY KEY ( id )
);

/*criação da tabela transação*/
create table transacao (
   id int not null auto_increment,
   id_usuario int not null,
   id_cartao int not null,
   valor decimal(16,2),
   data_cadastro DATE
);

/*inserção de dados na tabela usuario*/
insert into usuario (nome, imagem, nome_usuario, data_cadastro) values  
    ('Sandra Bullock', 'C:\UserImg\sandra.png', 'sandrabullock', '2020-07-12' ),
	('Johnny Depp', 'C:\UserImg\johndepp.png.png', 'johndepp', '2019-09-05' ),
	('Julia Roberts', 'C:\UserImg\juliaroberts.png', 'juliaroberts','2021-02-25' );

/*query que retorna todos os usuários cadastrados em ordem alfabética*/
select * from usuario order by nome asc;

/*inserção de dados na tabela cartão*/
insert into cartao (numero, cvv, data_expiracao, nome_usuario, valido, data_cadastro) values  
    ('1111111111111111', '327', '2026-03-01', 'sandrabullock', '1', '2020-07-12' ),
	('4111111111111234', '235', '2027-05-01', 'johndepp', '0', '2019-09-05' ),
	('1234512345123451', '572', '2027-07-01', 'juliaroberts', '1', '2021-02-25' );

/*query que retorna apenas os cartões válidos em ordem crescente da data de cadastro*/
select * from cartao where valido = 1 order by data_cadastro asc;

/*inserção de dados na tabela transação*/
insert into transacao (id_usuario, id_cartao, valor, data_cadastro) values  
    ('1', '1', '200.00', '2021-07-02' ),
	('2', '2', '450.00', '2021-05-27' ),
	('3', '3', '45.50','2021-09-14' );

/*query que retorne todas as transações cadastradas em ordem decrescente da data de cadastro, contendo os dados do usuário e cartão, não apenas seus IDs*/

select 
    transacao.id_usuario, transacao.id_cartao, transacao.valor, transacao.data_cadastro,
    usuario.nome, usuario.imagem, usuario.nome_usuario, usuario.data_cadastro,
    cartao.numero, cartao.cvv, cartao.data_expiracao, cartao.valido, cartao.data_cadastro
    from transacao
    left join usuario on usuario.id = transacao.id
    left join cartao on cartao.id = usuario.id
    order by transacao.data_cadastro desc;