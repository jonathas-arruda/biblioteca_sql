-- Inserção de dados em uma das tabelas.
INSERT INTO autor VALUES
(DEFAULT, 'DANIEL'),
(DEFAULT, 'SANGELO'),
(DEFAULT, 'PASSOS'),
(DEFAULT, 'RAPHAEL'),
(DEFAULT, 'JONATHAS')
;

-- visualizando alteração tabela autor.
SELECT *
FROM autor
;

-- Atualização de dados em uma das tabelas.
UPDATE autor 
SET nome = 'DIOGO'
WHERE id_autor =1 
;

-- visualizando alteração tabela autor.
SELECT *
FROM autor
;

-- Exclusão de dados em uma das tabelas.
DELETE FROM autor 
WHERE id_autor = 5 
;

-- visualizando alteração tabela autor .
SELECT *
FROM autor
;

-- Seleção de dados de uma das tabelas.
SELECT nome
FROM autor
;