--CRIAR TABELA MOVIES
--create table movies (
--id serial primary key,
--title varchar(100), -- Título
--release_date date, -- Data de lançamento
--genre_id integer, -- Gênero do filme
--language_id integer, -- Idioma do filme
--oscar_count int -- Quantidade de oscars que ganhou 
--);

--CRIAR TABELA GENRES
--create table genres (
--id serial primary key,
--name varchar(100)
--);

--CRIAR TABELA LANGUAGES
--create table languages (
--id serial primary key,
--name varchar(100)
--);

--alter table movies add constraint fk_genre foreign key (genre_id) references genres(id);
--alter table movies add constraint fk_language foreign key (language_id) references languages(id);

--INSERIR DADOS NA TABELA GENRES
--insert into genres (name) values ('Ação'), ('Suspense'), ('Aventura'), ('Terror'), ('Drama'), ('Comédia'), ('Romance');

--INSERIR DADOS NA TABELA LANGUAGES
--insert into languages (name) values ('Português'), ('Inglês'), ('japonês'), ('Francês');

--INSERIR FILMES NA TABELA MOVIES
--insert into movies (title, release_date, genre_id, language_id, oscar_count) values 
--('A grande aposta', '2016-01-14', 3, 5, 10),
--('A rede social', '2010-12-03', 5, 2, 1),
--('A grande aposta', '2016-01-14', 1, 2, null),
--('Parasita', '2019-05-30', 1, 2, null),
--('Uma mente brilhante', '2002-02-15', 3, 2, null),
--('O jogo da imitação', '2014-09-28', 3, 2, null),
--('Gênio indomável', '1998-02-20', 1, 2, null),
--('Cisne negro', '2011-02-14', 5, 2, 1),
--('Duna', '2021-10-21', 1, 2, null),
--('Turma da Mônica: lições', '2021-12-30', 3, 1, null),
--('Minha mãe é uma peça 3', '2019-12-26', 6, 1, null),
--('High Life', '2018-11-07', 1, 5, null),
--('Mademoiselle vingança', '2018-09-12', 7, 5, 1);

--DANDO ERRO PQ ESTÁ FALTANDO UMA LANGUAGE, O ID 5 NÃO EXISTE AINDA, ADICIONANDO ELE...
--insert into languages (name) values ('Espanhol');

--OS MOVIES ESTÃO MULTIPLICADOS, ENTÃO IREI APAGAR A TABELA MOVIES E RECRIÁ-LA
--drop table movies;

--> depois criar a tabela movies novamente;
--> depois alterar a restrição foreign key de genres_id e languages_id
--> depois inserir os dados na tabela movies novamente

--ATUALIZAR O Title DA TABELA MOVIES ONDE TEM O ID 2
--update movies set title = 'A origem' where id = 2

--PARA ATUALIZAR DOIS VALORES
--update movies set title = 'A origem', release_date = '2019-05-21' where id = 2

--PARA REMOVER REGISTROS
--delete from movies where id = 2

--USANDO SELECT
--select * from languages
--select * from movies where language_id = 2
--select * from movies where release_date <> '2016-01-14';
--select * from movies where release_date != '2019-05-30';
--select * from movies where release_date > '2011-02-04';
--select * from movies where release_date >= '2011-02-04';
--select * from movies where release_date < '2011-02-04';
--select * from movies where release_date <= '2011-02-04';

--USANDO SELECT E JOIN
--select title, release_date, lang.name language_name, genres.name genre_name
--from movies 
--join languages lang on lang.id  = language_id
--join genres on genres.id = genre_id
--where language_id = 5

-- TIPOS DE JOIN:
--create table carros_a (nome varchar(50));
--create table carros_b (nome varchar(50));

--insert into carros_a values ('Corsa'), ('Opala'), ('Fusca'), ('Ferrari');
--insert into carros_b values ('Celta'), ('Onix'), ('Fusca'), ('Ferrari');


-- PARA SELECIONAR DADOS COMUNS ENTRE TABELAS: INNER JOIN
--select ca.nome nome_a, cb.nome nome_b
--from carros_a ca
--inner join carros_b cb on ca.nome = cb.nome


-- SELECIONA TODOS OS REGISTROS DA TABELA ESQUERDA + OS DADOS EM COMUM ENTRE AS TABELAS: LEFT JOIN
--select ca.nome nome_a, cb.nome nome_b
--from carros_a ca
--left join carros_b cb on ca.nome = cb.nome

-- SELECIONA TODOS OS DADOS DA TABELA DIREITA + OS DADOS EM COMUN ENTRE AS TABELAS: RIGHT JOIN
--select ca.nome nome_a, cb.nome nome_b
--from carros_a ca
--right join carros_b cb on ca.nome = cb.nome

-- BUSCA TODOS OS DADOS EM COMUM: FULL OUTER JOIN
--select ca.nome nome_a, cb.nome nome_b
--from carros_a ca
--full outer join carros_b cb on ca.nome = cb.nome

--OPERADORES LÓGICOS:
--select title, release_date, lang.name language_name, genres.name genre_name
--from movies
--join languages lang on lang.id = language_id
--join genres on genres.id = genre_id

-- And
--where language_id = 5 and genre_id = 3;

-- Or
--where language_id = 5 or genre_id = 3;  

--Between
--select id, name from genres where id between 1 and 5;
--where release_date between '2016-01-01' and '2019-12-31';

-- Is null
--where oscar_count is null;

-- Is not null
--where oscar_count is not null;

-- In
--where lang.id in (1, 2);

-- Not in
--where lang.id not in (1, 2);


-- OPERADORES MATEMÁTICOS
--create table sales (value decimal(10,2));
--insert into sales values (1200), (3000), (5000), (7800), (1000);
select 
value,
value + 2 adicao,
value - 2 subtracao,
value * 2 multiplicacao,
value / 2 divisao,
value % 2 resto da divisao,
value ^2 exponenciacao
from sales;