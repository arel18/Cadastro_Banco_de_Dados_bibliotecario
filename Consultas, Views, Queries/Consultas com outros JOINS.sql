-- LEFT JOIN - SINTAXE 

-- SELECT colunas FROM tabela_esquerda LEFT JOIN Tabela_direita ON tabela_esquerda.coluna = Tabela_direita.coluna 

SELECT * FROM Editora E LEFT JOIN Livro L ON L.IdEditora = E.IdEditora;


-- RIGHT JOIN - SINTAXE

-- -- SELECT colunas FROM tabela_esquerda RIGHT JOIN Tabela_direita ON tabela_esquerda.coluna = Tabela_direita.coluna 

SELECT * FROM Editora E RIGHT JOIN Livro L ON L.IdEditora = E.IdEditora;

-- FULL JOIN - SINTAXE

-- SELECT colunas FROM tabela1 FULL JOIN Tabela2 ON tabela1.coluna = Tabela2.coluna 

SELECT * FROM Editora E FULL JOIN Livro L ON L.IdEditora = E.IdEditora;

-- CROSS JOIN - SINTAXE

-- SELECT colunas FROM tabela1 CROSS JOIN Tabela2 

SELECT * FROM Editora CROSS JOIN Livro ;













