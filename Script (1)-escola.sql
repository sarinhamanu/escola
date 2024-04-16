drop database if exists escola;


create database escola;


use escola;

create table alunos(
id int not null unique auto_increment,
nome varchar(120) not null,
dt_nascimento datetime not null,
endereco varchar(80) not null,
ra int not null unique,
primary key (id)
);

create table professores(
id int unique auto_increment,
nome varchar(120) not null,
especialidade varchar(45) not null,
grau_academico varchar(45) not null,
rm int not null unique ,
primary key(id)
);

create table diciplinas(
id int not null unique auto_increment,
nome varchar(45) not null,
professores_id int not null,
primary key (id),
constraint fk_professores_diciplinas
foreign key (professores_id)
references professores (id)
);

create table notas(
id int not null unique auto_increment,
diciplinas_id int not null,
nota decimal(14.2) not null,
alunos_id int not null,
primary key (alunos_id, diciplinas_id),
constraint fk_alunos_notas
foreign key (alunos_id)
references alunos (id),
constraint fk_diciplinas_notas
foreign key (diciplinas_id)
references diciplinas (id)
);

create table alunos_has_diciplinas(
alunos_id int not null,
diciplinas_id int not null,
primary key (alunos_id, diciplinas_id),
constraint fk_alunos_alunos_has_diciplinas
foreign key (alunos_id)
references alunos (id),
constraint fk_diciplinas_alunos_has_diciplinas
foreign key (diciplinas_id)
references diciplinas (id)
);

-- cadastrando alunos 

insert into alunos (nome, dt_nascimento, endereco, ra) values ('rafael','2006-02-15', 'rua da pipoca 123', 0000);
insert into alunos (nome, dt_nascimento, endereco, ra) values ('renan','2006-10-18', 'rua da pipoca 523', 0001);
insert into alunos (nome, dt_nascimento, endereco, ra) values ('ana beatriz','2006-06-09', 'rua da pipoca 723', 0002);
insert into alunos (nome, dt_nascimento, endereco, ra) values ('Sara','2006-05-03', 'rua da pipoca 523', 0003);
-- 4
insert into alunos (nome, dt_nascimento, endereco, ra) values ('Emilly','2006-12-07', 'rua da pipoca 615', 0004);
insert into alunos (nome, dt_nascimento, endereco, ra) values ('Mariana','2006-08-18', 'rua da pipoca 456', 0005);
insert into alunos (nome, dt_nascimento, endereco, ra) values ('Reginaldo','2007-03-03', 'rua da pipoca 678', 0006);
insert into alunos (nome, dt_nascimento, endereco, ra) values ('Matheus','2007-07-03', 'rua da pipoca 100', 0007);
-- 8
insert into alunos (nome, dt_nascimento, endereco, ra) values ('Gustavo','2007-04-16', 'rua da pipoca 999', 0008);
insert into alunos (nome, dt_nascimento, endereco, ra) values ('Enzo','2006-11-19', 'rua da pipoca 888', 0009);
insert into alunos (nome, dt_nascimento, endereco, ra) values ('Claudio','2006-07-10', 'rua da pipoca 777', 0010);
insert into alunos (nome, dt_nascimento, endereco, ra) values ('joão','2006-06-04', 'rua da pipoca 666', 0011);
-- 12
insert into alunos (nome, dt_nascimento, endereco, ra) values ('roberto','2006-01-08', 'rua da pipoca 555', 0012);
insert into alunos (nome, dt_nascimento, endereco, ra) values ('Emilly Gabrielly','2006-10-10', 'rua da pipoca 444', 0013);
insert into alunos (nome, dt_nascimento, endereco, ra) values ('Ana Luiza','2007-02-15', 'rua da pipoca 333', 0014);
insert into alunos (nome, dt_nascimento, endereco, ra) values ('Ana vitoria','2007-07-01', 'rua da pipoca 1200', 0015);
-- 16
insert into alunos (nome, dt_nascimento, endereco, ra) values ('ferdinando','2006-04-28', 'rua da pipoca 111', 0016);
insert into alunos (nome, dt_nascimento, endereco, ra) values ('Alexy','2006-11-10', 'rua da pipoca 0967', 0017);
insert into alunos (nome, dt_nascimento, endereco, ra) values ('Ana Luiza','2007-02-15', 'rua da pipoca 9264', 0018);
insert into alunos (nome, dt_nascimento, endereco, ra) values ('Ana vitoria','2007-07-01', 'rua da pipoca 9354', 0019);
-- 20

-- pofessores 
insert into professores (nome,grau_academico,especialidade,rm) values ('Michel','Mestre','Matematica e fisica',1);
insert into professores (nome,grau_academico,especialidade,rm) values ('fabiano','doutor','historia e biologia',2);
insert into professores (nome,grau_academico,especialidade,rm) values ('Ana marcia','Mestre','química',3);

-- Diciplinas
insert into diciplinas (nome, professores_id) values ('matematica',1);
insert into diciplinas (nome, professores_id) values ('fisica',1);
insert into diciplinas (nome, professores_id) values ('historia',2);
insert into diciplinas (nome, professores_id) values ('biologia',2);
insert into diciplinas (nome, professores_id) values ('química',3);

-- Diciplina dos alunos
insert into notas (alunos_id, diciplinas_id, nota) values (1, 1, 7.0);
insert into notas (alunos_id, diciplinas_id, nota) values (1, 2, 8.0);
insert into notas (alunos_id, diciplinas_id, nota) values (1, 3, 5.0);
insert into notas (alunos_id, diciplinas_id, nota) values (1, 4, 3.0);
insert into notas (alunos_id, diciplinas_id, nota) values (1, 5, 1.0);



insert into notas (alunos_id, diciplinas_id, nota) values (2, 1, 3.0);
insert into notas (alunos_id, diciplinas_id, nota) values (2, 2, 4.0);
insert into notas (alunos_id, diciplinas_id, nota) values (2, 3, 7.0);
insert into notas (alunos_id, diciplinas_id, nota) values (2, 4, 8.0);
insert into notas (alunos_id, diciplinas_id, nota) values (2, 5, 9.0);



insert into notas (alunos_id, diciplinas_id, nota) values (3, 1, 10.0);
insert into notas (alunos_id, diciplinas_id, nota) values (3, 2, 10.0);
insert into notas (alunos_id, diciplinas_id, nota) values (3, 3, 10.0);
insert into notas (alunos_id, diciplinas_id, nota) values (3, 4, 10.0);
insert into notas (alunos_id, diciplinas_id, nota) values (3, 5, 10.0);



insert into notas (alunos_id, diciplinas_id, nota) values (4, 1, 2.0);
insert into notas (alunos_id, diciplinas_id, nota) values (4, 2, 3.0);
insert into notas (alunos_id, diciplinas_id, nota) values (4, 3, 4.0);
insert into notas (alunos_id, diciplinas_id, nota) values (4, 4, 5.0);
insert into notas (alunos_id, diciplinas_id, nota) values (4, 5, 1.0);



insert into notas (alunos_id, diciplinas_id, nota) values (5, 1, 7.0);
insert into notas (alunos_id, diciplinas_id, nota) values (5, 2, 7.0);
insert into notas (alunos_id, diciplinas_id, nota) values (5, 3, 7.0);
insert into notas (alunos_id, diciplinas_id, nota) values (5, 4, 7.0);
insert into notas (alunos_id, diciplinas_id, nota) values (5, 5, 7.0);



insert into notas (alunos_id, diciplinas_id, nota) values (6, 1, 7.0);
insert into notas (alunos_id, diciplinas_id, nota) values (6, 2, 8.0);
insert into notas (alunos_id, diciplinas_id, nota) values (6, 3, 5.0);
insert into notas (alunos_id, diciplinas_id, nota) values (6, 4, 3.0);
insert into notas (alunos_id, diciplinas_id, nota) values (6, 5, 1.0);



insert into notas (alunos_id, diciplinas_id, nota) values (7, 1, 0.0);
insert into notas (alunos_id, diciplinas_id, nota) values (7, 2, 1.0);
insert into notas (alunos_id, diciplinas_id, nota) values (7, 3, 2.0);
insert into notas (alunos_id, diciplinas_id, nota) values (7, 4, 3.0);
insert into notas (alunos_id, diciplinas_id, nota) values (7, 5, 4.0);



insert into notas (alunos_id, diciplinas_id, nota) values (8, 1, 7.0);
insert into notas (alunos_id, diciplinas_id, nota) values (8, 2, 8.0);
insert into notas (alunos_id, diciplinas_id, nota) values (8, 3, 5.0);
insert into notas (alunos_id, diciplinas_id, nota) values (8, 4, 3.0);
insert into notas (alunos_id, diciplinas_id, nota) values (8, 5, 1.0);



insert into notas (alunos_id, diciplinas_id, nota) values (9, 1, 7.0);
insert into notas (alunos_id, diciplinas_id, nota) values (9, 2, 8.0);
insert into notas (alunos_id, diciplinas_id, nota) values (9, 3, 5.0);
insert into notas (alunos_id, diciplinas_id, nota) values (9, 4, 3.0);
insert into notas (alunos_id, diciplinas_id, nota) values (9, 5, 1.0);



insert into notas (alunos_id, diciplinas_id, nota) values (10, 1, 8.0);
insert into notas (alunos_id, diciplinas_id, nota) values (10, 2, 8.0);
insert into notas (alunos_id, diciplinas_id, nota) values (10, 3, 8.0);
insert into notas (alunos_id, diciplinas_id, nota) values (10, 4, 8.0);
insert into notas (alunos_id, diciplinas_id, nota) values (10, 5, 8.0);



insert into notas (alunos_id, diciplinas_id, nota) values (11, 1, 7.0);
insert into notas (alunos_id, diciplinas_id, nota) values (11, 2, 8.0);
insert into notas (alunos_id, diciplinas_id, nota) values (11, 3, 5.0);
insert into notas (alunos_id, diciplinas_id, nota) values (11, 4, 3.0);
insert into notas (alunos_id, diciplinas_id, nota) values (11, 5, 1.0);



insert into notas (alunos_id, diciplinas_id, nota) values (12, 1, 3.0);
insert into notas (alunos_id, diciplinas_id, nota) values (12, 2, 3.0);
insert into notas (alunos_id, diciplinas_id, nota) values (12, 3, 3.0);
insert into notas (alunos_id, diciplinas_id, nota) values (12, 4, 3.0);
insert into notas (alunos_id, diciplinas_id, nota) values (12, 5, 3.0);



insert into notas (alunos_id, diciplinas_id, nota) values (13, 1, 7.0);
insert into notas (alunos_id, diciplinas_id, nota) values (13, 2, 8.0);
insert into notas (alunos_id, diciplinas_id, nota) values (13, 3, 9.0);
insert into notas (alunos_id, diciplinas_id, nota) values (13, 4, 8.0);
insert into notas (alunos_id, diciplinas_id, nota) values (13, 5, 10.0);



insert into notas (alunos_id, diciplinas_id, nota) values (14, 1, 7.0);
insert into notas (alunos_id, diciplinas_id, nota) values (14, 2, 7.0);
insert into notas (alunos_id, diciplinas_id, nota) values (14, 3, 7.0);
insert into notas (alunos_id, diciplinas_id, nota) values (14, 4, 7.0);
insert into notas (alunos_id, diciplinas_id, nota) values (14, 5, 7.0);



insert into notas (alunos_id, diciplinas_id, nota) values (15, 1, 6.0);
insert into notas (alunos_id, diciplinas_id, nota) values (15, 2, 6.0);
insert into notas (alunos_id, diciplinas_id, nota) values (15, 3, 6.0);
insert into notas (alunos_id, diciplinas_id, nota) values (15, 4, 6.0);
insert into notas (alunos_id, diciplinas_id, nota) values (15, 5, 6.0);



insert into notas (alunos_id, diciplinas_id, nota) values (16, 1, 8.0);
insert into notas (alunos_id, diciplinas_id, nota) values (16, 2, 8.0);
insert into notas (alunos_id, diciplinas_id, nota) values (16, 3, 5.0);
insert into notas (alunos_id, diciplinas_id, nota) values (16, 4, 3.0);
insert into notas (alunos_id, diciplinas_id, nota) values (16, 5, 1.0);



insert into notas (alunos_id, diciplinas_id, nota) values (17, 1, 7.0);
insert into notas (alunos_id, diciplinas_id, nota) values (17, 2, 8.0);
insert into notas (alunos_id, diciplinas_id, nota) values (17, 3, 5.0);
insert into notas (alunos_id, diciplinas_id, nota) values (17, 4, 3.0);
insert into notas (alunos_id, diciplinas_id, nota) values (17, 5, 1.0);



insert into notas (alunos_id, diciplinas_id, nota) values (18, 1, 7.0);
insert into notas (alunos_id, diciplinas_id, nota) values (18, 2, 8.0);
insert into notas (alunos_id, diciplinas_id, nota) values (18, 3, 5.0);
insert into notas (alunos_id, diciplinas_id, nota) values (18, 4, 3.0);
insert into notas (alunos_id, diciplinas_id, nota) values (18, 5, 1.0);



insert into notas (alunos_id, diciplinas_id, nota) values (19, 1, 7.0);
insert into notas (alunos_id, diciplinas_id, nota) values (19, 2, 8.0);
insert into notas (alunos_id, diciplinas_id, nota) values (19, 3, 5.0);
insert into notas (alunos_id, diciplinas_id, nota) values (19, 4, 3.0);
insert into notas (alunos_id, diciplinas_id, nota) values (19, 5, 1.0);



insert into notas (alunos_id, diciplinas_id, nota) values (20, 1, 7.0);
insert into notas (alunos_id, diciplinas_id, nota) values (20, 2, 8.0);
insert into notas (alunos_id, diciplinas_id, nota) values (20, 3, 5.0);
insert into notas (alunos_id, diciplinas_id, nota) values (20, 4, 3.0);
insert into notas (alunos_id, diciplinas_id, nota) values (20, 5, 1.0);



insert into alunos_has_disciplinas  (alunos_id, disciplinas_id)

select a.id as alunos_id, d.id as disciplinas_id from  disciplinas d cross join alunos a; 

-- Questão 1



select d.id ,d.nome, a.nome,  a.id  from alunos a 
inner join alunos_has_diciplinas ad on a.id = ad.alunos_id 
inner join diciplinas d on d.id = ad.diciplinas_id 
where d.nome = 'matematica';



-- Questão 2



select d.id ,d.nome, p.nome,  p.id  from diciplinas d
inner join professores p  on d.id = p.id 
where d.nome = 'matematica';    



-- Questão 3



select a.nome, a.id, d.nome, d.id  from alunos a inner join diciplinas d ;



-- Questão 4
-- Questão 5
-- Questão 5
-- Questão 6
-- Questão 7
-- Questão 8
-- Questão 9
-- Questão 10
-- Questão 11
-- Questão 12
-- Questão 13
-- Questão 14
-- Questão 15
-- Determine a soma total das notas dos alunos na disciplina de Física

select sum(nota) as total from notas n   
where diciplinas_id = 1  ;

-- Questão 16
-- Encontre a maior nota alcançada por um aluno na disciplina de História
select d.nome,  max(nota) as maior from notas n 
inner join diciplinas d on n.diciplinas_id = d.id 
where d.nome = 'fisica';

-- Questão 17
--  Descubra a menor nota obtida por um aluno na disciplina de Química
select d.nome,  min(nota) as menor from notas n 
inner join diciplinas d on n.diciplinas_id = d.id 
where d.nome = 'química';
-- Questão 18
-- Calcule a média das notas dos alunos na disciplina de Biologia

select d.nome,  avg(nota)  as preco_medio from notas n 
inner join diciplinas d on n.diciplinas_id = d.id 
where d.nome = 'biologia';

-- Questão 19
-- Conte quantos alunos estão matriculados em cada disciplina
select   d.nome,  count(ahd.alunos_id) as total from alunos_has_diciplinas ahd  
inner join diciplinas d  on diciplinas_id = ahd.diciplinas_id 
group by d.nome;
p.cliente_id = c.cliente_id  group  by c.cliente_id , c.nome ; 
-- Questão 20
 -- Calcule a soma total das notas de todos os alunos em todas as disciplinas.

-- Questão 21
-- Questão 22

select min(nota) as menor_nota from notas where diciplinas_id;

-- Questão 23

-- Questão 24
-- Questão 25
-- Questão 26
-- Questão 27
-- Questão 28
-- Questão 29
-- Questão 30



