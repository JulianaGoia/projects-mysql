/*criação do banco de dados*/
create database spa_project;

/*seleção do banco de dados*/
use spa_project;

/*criação da tabela*/
create table transacao (
   id int not null auto_increment,
   tipo VARCHAR(30) NOT NULL,
   nome VARCHAR(100) NOT NULL,
   valor decimal(15,2),
   data_cadastro DATE,
   PRIMARY KEY ( id )
);

/*inserção de dados na tabela*/
insert into transacao (tipo, nome, valor, data_cadastro) values 
('Venda', 'Quadro', 350.00 , '2021-10-28'),
('Compra', 'Livro', -56.90 , '2021-09-28'),
('Venda', 'Sofá', 300.00 , '2021-08-10'),
('Venda', 'Saia', 30.00 , '2021-07-12'),
('Compra', 'Headset', -200.00 , '2021-06-29'),
('Compra', 'Bola de vôlei', -64.90 , '2021-05-05');

/*Query que retorna todas as transações cadastradas em ordem crescente da data de cadastro*/
select * from transacao order by data_cadastro asc;
