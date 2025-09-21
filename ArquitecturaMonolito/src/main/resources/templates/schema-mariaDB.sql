create table libro(
    id int primary key auto_increment,
    nombre varchar(200) not null,
    descripcion varchar(1000),
    imagen_url varchar(500)
);

-- Insertar libros
insert into libro
(nombre,descripcion,imagen_url) values
('El ritmo y la palabra o para una poética de la música salsa',
'La salsa se ha desarrollado ampliamente como estilo musical del Caribe hispánico. El propósito de este libro es analizar la relación entre el ritmo y la palabra en la música salsa.',
'https://simehbucket.s3.amazonaws.com/images/eb99f18bd6fd3173a377c82e1265fff4-medium.jpg');

insert into libro
(nombre,descripcion,imagen_url) values
('Tesoros fósiles de Firavitoba.',
'En esta obra de divulgación científica converge la ciencia y el arte en la interpretación patrimonial de los fósiles.',
'https://simehbucket.s3.amazonaws.com/images/7a665c7977e7b9df2eee119f35ce13f2-medium.jpg');

insert into libro
(nombre,descripcion,imagen_url) values
('Análisis de la velocidad en la interceptación del balón en porteros de fútbol de salón, basado en el uso de tecnología de captura de movimiento.',
'La tecnología constituye un apoyo al entrenamiento deportivo que influye en la preparación de los atletas.',
'https://simehbucket.s3.amazonaws.com/images/7a665c7977e7b9df2eee119f35916563-medium.jpg');

insert into libro
(nombre,descripcion,imagen_url) values
('Simulación basada en dinámica de sistemas y agentes inteligentes, aplicada a un sistema complejo de salud pública',
'Esta investigación propone una forma de integrar dos técnicas de simulación, una basada en agentes y otra en dinámica de sistemas.',
'https://simehbucket.s3.amazonaws.com/images/a43a8974b98583f5163181f5fd7de661-medium.jpg');

insert into libro
(nombre,descripcion,imagen_url) values
('Metamodelo de medición de esfuerzo en proyectos de desarrollo de software',
'En este libro se propone un metamodelo basado en las características generales de los procesos de desarrollo de software.',
'https://simehbucket.s3.amazonaws.com/images/a43a8974b98583f5163181f5fd7db64d-medium.jpg');

insert into libro
(nombre,descripcion,imagen_url) values
('Prácticas de laboratorio en química general',
'En el proceso de formación en ciencias naturales la práctica en el laboratorio es fundamental.',
'https://simehbucket.s3.amazonaws.com/images/523c1d5ee7c38c0eb8aac7b18cc8ebdb-medium.jpg');

insert into libro
(nombre,descripcion,imagen_url) values
('Mujeres en la investigación matemática, escenarios de visibilización',
'Esta investigación muestra formas de participación de las mujeres en avance del desarrollo científico.',
'https://simehbucket.s3.amazonaws.com/images/ecbf39cc05c48884b1f7d533b116b9dc-medium.jpg');

insert into libro
(nombre,descripcion,imagen_url) values
('Métodos para la caracterización de la cerámica arqueológica',
' Esta obra reúne un conjunto de técnicas para la caracterización de la cerámica arqueológica',
'https://simehbucket.s3.amazonaws.com/images/523c1d5ee7c38c0eb8aac7b18c6fa0fe-medium.jpg');


create table editorial(
    id int primary key auto_increment,
    nombre varchar(200) not null,
    sitio_web varchar(500)
);

-- Insertar editoriales
insert into editorial
(id,nombre,sitio_web) values
(1,'Planeta','https://www.planetadelibros.com/');

insert into editorial
(id,nombre,sitio_web) values
(2,'Mirahadas','https://www.mirahadas.com/');

insert into editorial
(id,nombre,sitio_web) values
(3,'Pre-Textos','https://www.pre-textos.com/');

insert into editorial
(id,nombre,sitio_web) values
(4,'Sexto Piso','https://sextopiso.es/');

insert into editorial
(id,nombre,sitio_web) values
(5,'Nordica','https://www.nordicalibros.com/');

insert into editorial
(id,nombre,sitio_web) values
(6,'Acantilado','https://www.acantilado.es/');

insert into editorial
(id,nombre,sitio_web) values
(7,'La Huerta Grande','https://www.lahuertagrande.com/');


alter table libro
add column editorial_id int,
add foreign key (editorial_id) references editorial(id);

update libro set editorial_id = 1 where id in (1, 5);
update libro set editorial_id = 2 where id in (2);
update libro set editorial_id = 3 where id in (3);
update libro set editorial_id = 4 where id in (4);
update libro set editorial_id = 5 where id in (6);
update libro set editorial_id = 6 where id in (7);
update libro set editorial_id = 7 where id in (8);

alter table libro
modify editorial_id int not null;

