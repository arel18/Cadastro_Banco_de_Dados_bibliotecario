-- Filtrar Resultados de Consultas com Where 

-- Sixtaxe 

-- SELECT colunas FROM tabela WHERE coluna [operador] valor; 
-- [ORDER BY]

SELECT NomeLivro, DataPub
FROM Livro 
WHERE IdEditora = 3 



SELECT IdAutor,NomeAutor 
FROM Autor
WHERE SobrenomeAutor = 'Verne';


SELECT NomeLivro, PreçoLivro
FROM Livro 
WHERE PreçoLivro > 100.00 
ORDER BY PreçoLivro;