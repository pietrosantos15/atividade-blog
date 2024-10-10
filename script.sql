CREATE DATABASE blog;

USE BLOG;

CREATE TABLE usuario (
id_usuario INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
senha VARCHAR(255) NOT NULL
);

CREATE TABLE post (
	id_post INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT,
    conteudo TEXT NOT NULL,
    data_post DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(id_usuario) REFERENCES usuario(id_usuario)
);

INSERT INTO usuario (nome,email,senha) VALUES
('Alice Silva', 'alice.silva@exemplo.com', 'senha123'),
('Bob Santos', 'bob.santos@exemplo.com', 'senha456'),
('Carlos Oliveira', 'carlos.oliveira@exemplo.com', 'senha789');

INSERT INTO post (id_usuario, conteudo) VALUES
(1, 'Estou animada para compartilhar minhas ideias de projeto.'),
(2, 'Hoje vou falar sobre programção em Python.'),
(3, 'Este é meu primeiro post sobre BackEnd.'),
(2, 'Hoje compartilho um pouco sobre FrontEnd.');
