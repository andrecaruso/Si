create table usuario(
cod_usuario SERIAL primary key,
nom_usuario VARCHAR(50) not null,
end_usuario VARCHAR(100) not null,
cpf_usuario CHAR(11) not null,
nas_usuario date not null,
cod_tipo INT
);

create table disciplina(
cod_disciplina SERIAL primary key,
nom_disciplina VARCHAR(50) not null,
car_disciplina INT not null,
cod_curso INT,
cod_usuario INT
);


create table tipo(
cod_tipo SERIAL primary key,
des_tipo VARCHAR(30)
);

create table cursa(
cod_dis INT,
cod_usu INT
);

create table curso(
cod_curso SERIAL primary key,
des_curso VARCHAR(50)
);

ALTER TABLE cursa ADD FOREIGN KEY(cod_dis) REFERENCES disciplina (cod_disciplina);
ALTER TABLE cursa ADD FOREIGN KEY(cod_usu) REFERENCES usuario (cod_usuario);
ALTER TABLE disciplina ADD FOREIGN KEY(cod_usuario) REFERENCES usuario (cod_usuario);
ALTER TABLE disciplina ADD FOREIGN KEY(cod_curso) REFERENCES curso (cod_curso);
