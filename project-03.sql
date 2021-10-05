/*criação do banco de dados*/
create database hashtag_finder;

/*seleção do banco de dados*/
use hashtag_finder;

/*TABELA SEARCH*/
/*criação da tabela de hashtags buscasdas*/
create table search (
  id int not null auto_increment,
  squad int not null,
  hashtag varchar(150),
  data_hashtag date,
  hora_hashtag time,
  primary key (id)
);

/*inserção de dados na tabela search*/
insert into search (squad, hashtag, data_hashtag, hora_hashtag) values
    ('52', 'pokemon', '2021-08-27', '20:29:30'),
    ('52', 'apple', '2021-08-31', '22:22:15'),
    ('52', 'drake', '2021-09-01', '16:14:13');

/*query que retorna todos os dados da tabela search*/
select * from search;

/*query que atualiza dados da tabela search*/
update search
set hashtag='lady gaga'
where id = 3;

/*query que deleta dados da tabela search*/
delete from search where id = 2;


/*TABELA EQUIPE*/
/*inserção de dados na tabela equipe*/
create table equipe (
  id int not null auto_increment,
  squad int not null,
  nome varchar(150) not null,
  descricao varchar(500),
  github varchar(1000),
  email varchar(300) not null,
  linkedin varchar(1000),
  imagem blob not null,
  primary key (id)
);

/*inserção de dados na tabela equipe*/
  insert into equipe (squad, nome, descricao, github, email, linkedin, imagem) values
      (52, 'Flávio','Arquiteto e Urbanista apaixonado por tecnologia...', 'https://github.com/flavioxe',  'email@email.com', 'https://www.linkedin.com/flaviohmsilva', 'C:\...\flavio.png'),
      (52, 'Juliana', 'De arquiteta para desenvolvedora Front-End em construção...', 'https://github.com/ JulianaGoia', 'email@email.com', 'https://www.linkedin.com/julianakaorigoia', 'C:\...\juliana.png'),
      (52, 'Giovanni', 'Estudante | Desenvolvedor Front-End Jr.', 'https://github.com/Giovanni-Shiroma',  'email@email.com', 'https://www.linkedin.com/giovannishiroma', 'C:\...\giovanni.png'),
      (52, 'Marcelo', 'Cada sonho que vc deixa para trás, é um pedaço do seu futuro...', 'https://github.com/ iMarceloCorrea', 'email@email.com', 'https://www.linkedin.com/marcelo-correa', 'C:\...\marcelo.png'),
      (52, 'Leonardo', 'Amante da tecnologia, estudioso e curioso...', 'https://github.com/mwsleonardo',  'email@email.com', 'https://www.linkedin.com/mwsleonardo', 'C:\...\leonardo.png');

  /*query que retorna todos os dados da tabela equipe*/
    select * from equipe;

  /*query que atualiza dados da tabela equipe*/
    update equipe
    set email ='goia.julianakg@gmail.com'
    where id = 2;

  /*query que deleta dados da tabela equipe*/
    delete from equipe where id = 4;

  /*TABELA LOGIN*/
  /*inserção de dados na tabela login*/
    create table login (
    id int not null auto_increment,
    email varchar(300) not null,
    senha char(6) not null,
    primary key (id)
  );

  /*inserção de dados na tabela login*/
  insert into login (email, senha) values
    ('newtab@academy.com', '123456');

  /*query que retorna todos os dados da tabela login*/
    select * from login;

  /*query que atualiza dados da tabela login*/
    update login
    set senha ='145236'
    where id = 1;

  /*query que deleta dados da tabela login*/
    delete from equipe where id = 1;