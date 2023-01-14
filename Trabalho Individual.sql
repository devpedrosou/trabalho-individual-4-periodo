CREATE TABLE `Cursos` (
`Id` int PRIMARY KEY,
`Tipo` varchar(100),
`Turnos` varchar(100),
`Duracao` varchar(50),
`turmas_id` int
);

CREATE TABLE `Turmas` (
`Id` int PRIMARY KEY,
`Turnos` varchar(100),
`Professores` varcha(100),
`Inicio` varchar(50),
`professores_id` int
);

CREATE TABLE `Professores` (
`Id` int PRIMARY KEY,
`Nome` varchar(100),
`Materia` varchar(100),
`Turmas` varchar(100),
`alunos_id` int
);

CREATE TABLE `Alunos` (
`Id` int PRIMARY KEY,
`Nome` varchar(100),
`Turmas` varchar(100),
`Professores` varchar(100)
);

ALTER TABLE `Turmas` ADD FOREIGN KEY (`Id`) REFERENCES `Cursos` (`turmas_id`);

ALTER TABLE `Professores` ADD FOREIGN KEY (`Id`) REFERENCES `Turmas` (`professores_id`);

