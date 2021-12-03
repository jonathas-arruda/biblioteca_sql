DROP SCHEMA IF EXISTS Biblioteca ;

CREATE SCHEMA IF NOT EXISTS Biblioteca 
	DEFAULT CHARACTER SET  utf8mb4;
	
USE Biblioteca ;

DROP TABLE IF EXISTS editora ;
CREATE TABLE IF NOT EXISTS editora (
    id_editora INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45) NOT NULL,
    cidade VARCHAR(45) NULL
);

DROP TABLE IF EXISTS genero ;
CREATE TABLE IF NOT EXISTS genero (
    id_genero INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45) NULL
);

DROP TABLE IF EXISTS autor ;
CREATE TABLE IF NOT EXISTS autor (
    id_autor INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45) NOT NULL
);

DROP TABLE IF EXISTS livro ;
CREATE TABLE IF NOT EXISTS livro (
    id_livro INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    isbn VARCHAR(45) NOT NULL UNIQUE,
    titulo VARCHAR(45) NOT NULL,
    edicao VARCHAR(45) NOT NULL,
    volume VARCHAR(45) NULL,
    genero_id INT NOT NULL,
    editora_id INT NOT NULL,
    autor_id INT NOT NULL,
    FOREIGN KEY (genero_id) REFERENCES genero(id_genero),
    FOREIGN KEY (editora_id) REFERENCES editora(id_editora),
    FOREIGN KEY (autor_id) REFERENCES autor(id_autor)
);

DROP TABLE IF EXISTS exemplar ;
CREATE TABLE IF NOT EXISTS exemplar (
    id_exemplar INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    isbn VARCHAR(45) NOT NULL,
    numero_exemplar VARCHAR(45) NULL,
    FOREIGN KEY (isbn) REFERENCES livro(isbn)
);

DROP TABLE IF EXISTS usuario ;
CREATE TABLE IF NOT EXISTS usuario (
    id_usuario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cpf VARCHAR(45) NOT NULL,
    nome VARCHAR(45) NOT NULL,
    endereco VARCHAR(45) NOT NULL,
    telefone VARCHAR(45) NOT NULL,
    email VARCHAR(45) NOT NULL
);

DROP TABLE IF EXISTS emprestimo ;
CREATE TABLE IF NOT EXISTS emprestimo (
    id_emprestimo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT NOT NULL,
    exemplar_id INT NOT NULL,
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuario (id_usuario),
    FOREIGN KEY (exemplar_id) REFERENCES exemplar (id_exemplar)
);