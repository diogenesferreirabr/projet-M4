CREATE TABLE `alunos` (
  `id` int PRIMARY KEY,
  `nome` varchar(100),
  `matricula_aluno` int(20),
);

CREATE TABLE `estuda` (
  `id` int PRIMARY KEY,
  `codigo_disciplina` int(20),
  `matricula_aluno_id` int
);

CREATE TABLE `disciplina` (
  `id` int PRIMARY KEY,
  `cpf_professor` int(20),
  `nome` varchar(60),
  `sala` int(20)
  `horario` time (4)
  `codigo_disciplina` int(20),
);

CREATE TABLE `professor` (
  `id` int PRIMARY KEY,
  `nome` varchar(70),
  `disciplina_id` int,
);

ALTER TABLE `aluno` ADD FOREIGN KEY (`id`) REFERENCES `estuda` (`aluno_id`);

ALTER TABLE `estuda` ADD FOREIGN KEY (`id`) REFERENCES `disciplina` (`codigo_disciplina_id`);

ALTER TABLE `disciplina` ADD FOREIGN KEY (`professores_id`) REFERENCES `professor` (`id`);

ALTER TABLE `estuda` ADD FOREIGN KEY (`id`) REFERENCES `alunos` (`turmas_id`);
