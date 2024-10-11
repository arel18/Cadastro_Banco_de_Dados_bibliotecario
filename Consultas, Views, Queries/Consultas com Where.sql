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


SELECT NomeLivro, PrešoLivro
FROM Livro 
WHERE PrešoLivro > 100.00 
ORDER BY PrešoLivro;