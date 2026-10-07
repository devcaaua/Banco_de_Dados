CREATE DATABASE Biblioteca

USE Biblioteca;

CREATE TABLE cliente(
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome_aluno VARCHAR(100) NOT NULL,
    email_aluno VARCHAR(100) NOT NULL,
    curso_aluno VARCHAR(100) NOT NULL 
);

CREATE TABLE livros(
    id_livro INT PRIMARY KEY AUTO_INCREMENT,
    titulo_livro VARCHAR(100) NOT NULL,
    autor_livro VARCHAR(100) NOT NULL
);

CREATE TABLE emprestimos(
    id_emprestimo INT PRIMARY KEY AUTO_INCREMENT,
    id_aluno INT NOT NULL,
    id_livro INT NOT NULL,
    data_retirada DATE NOT NULL,
    data_devolucao DATE NOT NULL
);


USE Biblioteca;

INSERT INTO aluno(nome_aluno, email_aluno, curso_aluno)
VALUES( "Hugo", "hugo@gmail.com", "Análise e Desenvolvimento de Sistemas");

INSERT INTO aluno(nome_aluno, email_aluno, curso_aluno)
VALUES( "Memphis", "memphis@gmail.com", "Sistemas de Informação");

INSERT INTO aluno(nome_aluno, email_aluno, curso_aluno)
VALUES("Bidon", "bidon@gmail.com", "Ciência da Computação");

USE Biblioteca;

INSERT INTO livros(titulo_livro, autor_livro, curso_aluno)
VALUES("Introdução a Programação", "André Camargo", "Análise e Desenvolvimento de Sistemas");

INSERT INTO livros(titulo_livro, autor_livro, curso_aluno)
VALUES( "Cálculo I", "Alexandre de Matos", "História");

INSERT INTO livros(titulo_livro, autor_livro, curso_aluno)
VALUES( "Pequeno Príncipe", "Andrew", "Medicina");

SELECT * FROM livros;

USE Biblioteca;

INSERT INTO emprestimos( id_aluno, id_livro, data_retirada, data_devolucao)
VALUES( 1, 1,  "2023-06-11", "2023-09-20");

INSERT INTO emprestimos(id_aluno, id_livro, data_retirada, data_devolucao)
VALUES(2, 2,  "2023-06-11", "2023-07-20");

INSERT INTO emprestimos(id_aluno, id_livro, data_retirada, data_devolucao)
VALUES(3, 3,  "2023-04-08", "2023-05-20");

SELECT * FROM emprestimos;

USE Biblioteca;

INSERT INTO livros(titulo_livro, autor_livro, curso_aluno)
VALUES( "Cálculo I", "Alexandre", "História");

UPDATE livros
SET titulo_livro = "Cálculo II"
WHERE id_livro = 4;

DELETE FROM aluno
WHERE id_aluno = 4;