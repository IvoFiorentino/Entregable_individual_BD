CREATE TABLE `usuarios` (
   `id` INT AUTO_INCREMENT,
   `nombre ` VARCHAR(100),
   `email` VARCHAR(100),
   PRIMARY KEY (`id`)
);

CREATE TABLE `notas` (
   `id ` INT NOT NULL,
   `usuario_id` INT NOT NULL,
   `titulo` VARCHAR(100) NOT NULL,
   `fecha_creación` DATE,
   `fecha_actualización` DATE,
   `fecha_eliminación` TINYINT,
   `descripción` TEXT,
   PRIMARY KEY (`id `)
);

CREATE TABLE `categorias` (
   `id ` INT NOT NULL AUTO_INCREMENT,
   `nombre` VARCHAR(100) NOT NULL,
   PRIMARY KEY (`id `)
);

CREATE TABLE `categorias_notas` (
   `id` INT NOT NULL,
   `categorias_id` INT NOT NULL,
   `notas_id` INT NOT NULL,
   PRIMARY KEY (`id`)
);


ALTER TABLE `notas` ADD CONSTRAINT `FK_4e7301e2-0eb3-4505-b8ec-4f7ff262ee06` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios`(`id`)  ;

ALTER TABLE `categorias_notas` ADD CONSTRAINT `FK_d52b602a-ce43-4f6e-8ba3-f6d5a96bf408` FOREIGN KEY (`categorias_id`) REFERENCES `notas`(`id `)  ;

ALTER TABLE `categorias_notas` ADD CONSTRAINT `FK_6ee8e811-accd-4a4a-9bd9-63ccbdd02678` FOREIGN KEY (`notas_id`) REFERENCES `categorias`(`id `)  ;

insert into usuarios (id, first_name, email) values (1, 'Gina', 'gloyley0@house.gov');
insert into usuarios (id, first_name, email) values (2, 'Allayne', 'aottawell1@washingtonpost.com');
insert into usuarios (id, first_name, email) values (3, 'Theobald', 'tsnawdon2@netvibes.com');
insert into usuarios (id, first_name, email) values (4, 'Chickie', 'citzhak3@t.co');
insert into usuarios (id, first_name, email) values (5, 'Eloisa', 'ecrimmins4@foxnews.com');
insert into usuarios (id, first_name, email) values (6, 'Stormie', 'sboustred5@blinklist.com');
insert into usuarios (id, first_name, email) values (7, 'Norri', 'nbeadnell6@exblog.jp');
insert into usuarios (id, first_name, email) values (8, 'Percy', 'pgilyott7@phoca.cz');
insert into usuarios (id, first_name, email) values (9, 'Rozalie', 'rcalley8@sphinn.com');
insert into usuarios (id, first_name, email) values (10, 'Reese', 'rdome9@artisteer.com');

insert into notas (id, usuario_id, titulo, fecha_creación, fecha_actualización, fecha_eliminación, descripción) values (1, 1, '', '9/15/2021', '4/22/2021', '3/5/2021', '');
insert into notas (id, usuario_id, titulo, fecha_creación, fecha_actualización, fecha_eliminación, descripción) values (2, 2, '', '3/2/2021', '11/7/2021', '2/22/2021', '');
insert into notas (id, usuario_id, titulo, fecha_creación, fecha_actualización, fecha_eliminación, descripción) values (3, 3, '', '9/22/2021', '12/6/2020', '11/17/2021', '');
insert into notas (id, usuario_id, titulo, fecha_creación, fecha_actualización, fecha_eliminación, descripción) values (4, 4, '', '9/8/2021', '8/14/2021', '1/12/2021', '');
insert into notas (id, usuario_id, titulo, fecha_creación, fecha_actualización, fecha_eliminación, descripción) values (5, 5, '', '10/19/2021', '2/27/2021', '5/8/2021', '');
insert into notas (id, usuario_id, titulo, fecha_creación, fecha_actualización, fecha_eliminación, descripción) values (6, 6, '', '10/24/2021', '2/22/2021', '5/1/2021', '');
insert into notas (id, usuario_id, titulo, fecha_creación, fecha_actualización, fecha_eliminación, descripción) values (7, 7, '', '2/24/2021', '4/6/2021', '9/26/2021', '');
insert into notas (id, usuario_id, titulo, fecha_creación, fecha_actualización, fecha_eliminación, descripción) values (8, 8, '', '4/6/2021', '3/12/2021', '12/19/2020', '');
insert into notas (id, usuario_id, titulo, fecha_creación, fecha_actualización, fecha_eliminación, descripción) values (9, 9, '', '8/31/2021', '3/21/2021', '6/14/2021', '');
insert into notas (id, usuario_id, titulo, fecha_creación, fecha_actualización, fecha_eliminación, descripción) values (10, 10, '', '12/25/2020', '9/11/2021', '9/12/2021', '');

insert into categorias_notas (id, categorias_id, notas_id) values (1, 1, 1);
insert into categorias_notas (id, categorias_id, notas_id) values (2, 2, 2);
insert into categorias_notas (id, categorias_id, notas_id) values (3, 3, 3);
insert into categorias_notas (id, categorias_id, notas_id) values (4, 4, 4);
insert into categorias_notas (id, categorias_id, notas_id) values (5, 5, 5);
insert into categorias_notas (id, categorias_id, notas_id) values (6, 6, 6);
insert into categorias_notas (id, categorias_id, notas_id) values (7, 7, 7);
insert into categorias_notas (id, categorias_id, notas_id) values (8, 8, 8);
insert into categorias_notas (id, categorias_id, notas_id) values (9, 9, 9);
insert into categorias_notas (id, categorias_id, notas_id) values (10, 10, 10);

insert into categorias (id, nombre) values (1, 'Alano');
insert into categorias (id, nombre) values (2, 'Georgie');
insert into categorias (id, nombre) values (3, 'Rance');
insert into categorias (id, nombre) values (4, 'Beverlee');
insert into categorias (id, nombre) values (5, 'Melly');
insert into categorias (id, nombre) values (6, 'Janetta');
insert into categorias (id, nombre) values (7, 'Sorcha');
insert into categorias (id, nombre) values (8, 'Markus');
insert into categorias (id, nombre) values (9, 'Adams');
insert into categorias (id, nombre) values (10, 'Jude');

