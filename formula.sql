create database db_formula1;
use db_formula1;
create table paises(
codigo int,
nome varchar(30),
primary key (codigo)
);
create table equipes(
siglas varchar(30),
nome varchar(30),
cod_pais_fk int,
primary key (siglas),
foreign key (cod_pais_fk) references paises(codigo)
);
create table pilotos(
numero int,
nomes varchar(30),
codigo_pais_FKp int,
sigla_equi_fk varchar(30),
primary key(numero),
foreign key (codigo_pais_Fkp) references paises (codigo),
foreign key(sigla_equi_fk) references equipes (siglas)
);
create table participantes(
posicao_largada int,
num_piloto_fk int, 
sigla_piloto_fk varchar(30),
primary key (posicao_largada),
foreign key (num_piloto_fk) references pilotos (numero),
foreign key(sigla_piloto_fk)references  equipes (siglas)
);
create table corridas(
sigla_corrida varchar(30),
nome_corrida varchar (30),
cod_corrida int,
qnt_voltas int,
siglap_fk varchar(30),
foreign key (siglap_fk) references equipes(siglas)
);