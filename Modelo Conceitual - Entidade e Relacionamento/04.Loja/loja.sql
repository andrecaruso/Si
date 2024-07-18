create table tipo(
 cd_tipo SERIAL primary key,
 desc_tipo VARCHAR(50) not null
);


create table funcionario(
 cd_func SERIAL primary key,
 nome_func VARCHAR(50) not null,
 end_func  VARCHAR(100) not null,
 cpf_func CHAR(11) not null,
 tipo_func INT not null
);

create table produto(
 cd_prod SERIAL primary key,
 nome_prod VARCHAR(50) not null,
 quant_prod INT not null,
 tipo_prod INT not null,
 cd_cat INT not null
);

create table categoria(
 cd_cat SERIAL primary key,
 desc_cat VARCHAR(50) not null
);

create table compra(
 cd_compra SERIAL primary key,
 cd_func INT not null,
 cd_prod INT not null,
 dt_compra date not null
);

ALTER TABLE funcionario ADD FOREIGN KEY(tipo_func) REFERENCES tipo (cd_tipo);
ALTER TABLE compra ADD FOREIGN KEY(cd_prod) REFERENCES produto (cd_prod);
ALTER TABLE compra ADD FOREIGN KEY(cd_func) REFERENCES funcionario (cd_func);

ALTER TABLE IF EXISTS public.produto
    ADD COLUMN cd_cat INT NOT NULL;


ALTER TABLE produto ADD FOREIGN KEY(cd_cat) REFERENCES categoria (cd_cat);

