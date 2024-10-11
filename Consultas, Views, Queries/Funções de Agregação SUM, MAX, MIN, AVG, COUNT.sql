-- Funções de agregação 

--MIN = Valor Mínimo
--MAX = Valor Máximo
--AVG = Média Aritmética
--SUM = Total (Soma)
-- COUNT = Contar quantidade de itens

-- Exemplos

SELECT COUNT(*)Total 
FROM  AUTOR;

SELECT MAX(PreçoLivro)'Mais Caro ' From Livro;

SELECT MIN (NumeroPaginas) From Livro;

SELECT AVG(PreçoLivro)'Preço Médio ' From Livro;

SELECT SUM(PreçoLivro)' Valor Total ' From Livro;

