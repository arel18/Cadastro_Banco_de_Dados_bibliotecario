-- Subqueries (sub-consultas)

-- Exemplos 

SELECT NomeLivro, IdEditora FROM Livro WHERE IdEditora = (

SELECT IdEditora FROM Editora  WHERE NomeEditora = 'Aleph'
)
ORDER BY NomeLivro;


SELECT NomeEditora FROM Editora WHERE IdEditora IN (
SELECT IdEditora FROM Livro WHERE IdAssunto IN (1,3,7)

)
ORDER BY NomeEditora