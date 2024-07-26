create table usuario(
    id_usuario SERIAL primary key,
    nome VARCHAR(50) not null,
    endereco VARCHAR(100) not null,
    cpf char(11) not null,
    data_nasc date not null
)

create TABLE filme(
    id_filme SERIAL primary key,
    nome VARCHAR(50) not null,
    status boolean not null,
    diretor VARCHAR(50) not null,
    id_midia INT not null,
    id_genero INT not null
)

create TABLE genero(
    id_genero SERIAL primary key,
    nome VARCHAR(50) not null
)

create TABLE midia (
    id_midia SERIAL primary key,
    descricao VARCHAR(50) not null,
    valor double precision not null
)

create TABLE loca(
    id_locacao SERIAL primary key,
    id_filme INT not null,
    id_usuario INT not null,
    data_locacao date not null,
    data_entrega date not null,
    status boolean not null
)