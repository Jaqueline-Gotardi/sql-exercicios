--CRIAR TABELA MOVIES
create table movies (
id serial primary key,
title varchar(100), -- Título
release_date date, -- Data de lançamento
genre_id integer, -- Gênero do filme
language_id integer, -- Idioma do filme
oscar_count int -- Quantidade de oscars que ganhou 
);