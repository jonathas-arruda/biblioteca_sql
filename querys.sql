
-- VIZUALIZANDO TABELA AUTOR.
SELECT *
FROM autor
;

-- Inserção de dados em uma das tabelas.
INSERT INTO autor VALUES
(DEFAULT, 'DANIEL'),
(DEFAULT, 'SANGELO'),
(DEFAULT, 'PASSOS'),
(DEFAULT, 'RAPHAEL'),
(DEFAULT, 'JONATHAS')
;
-- Atualização de dados em uma das tabelas.
UPDATE autor 
SET nome = 'DIOGO'
WHERE id_autor =1 
;
-- Exclusão de dados em uma das tabelas.
DELETE FROM autor 
WHERE id_autor = 5 
;

-- Seleção de dados de uma das tabelas.
SELECT nome
FROM autor
;