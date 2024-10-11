-- Views 

-- Sintaxes: 
/*
CREATE [OR ALTER] VIEW nomeView AS 
SELECT colunas FROM tabelas WHERE condições
*/

CREATE OR ALTER VIEW vwLivroPreco AS 
SELECT TOP 5 NomeLivro, PreçoLivro From Livro ORDER BY PreçoLivro;

SELECT * FROM vwLivroPreco;

EXEC sp_helptext vwLivroPreco;

-- Exemplo 2 
IF OBJECT_ID ('vmLivroAssunto', 'view' ) IS NOT NULL
    DROP VIEW vwLivroAssunto;
GO

CREATE VIEW vwLivroAssunto AS

   SELECT L.NomeLivro Livro, A.NomeAssunto Assunto 
   FROM Livro L 
   INNER JOIN Assunto A ON L.idAssunto = A.IdAssunto;
GO

SELECT Livro, Assunto FROM vwLivroAssunto;