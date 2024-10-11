-- Restrição de resultados: SELECT TOP 

-- Sintaxe

-- SELECT TOP (número | PERCENT) colunas FROM tabela ORDER BY 

-- EXEMPLOS 

SELECT TOP (2) NomeLivro FROM Livro ORDER BY NomeLivro;

SELECT TOP (15) PERCENT NomeLivro FROM Livro ORDER BY NomeLivro;

SELECT TOP (3) NomeLivro FROM Livro ORDER BY NomeLivro DESC;

SELECT TOP (4) NomeLivro, PreçoLivro FROM Livro ORDER BY PreçoLivro DESC;

-- WITH TIES

SELECT TOP (3)WITH TIES NomeLivro, IdAssunto FROM Livro ORDER BY IdAssunto DESC;