-- Procedimentos armazenados (Stored Procedures)

CREATE PROCEDURE sp_teste 
AS 
SELECT 'Estudando SQL' AS Nome;

EXEC sp_teste;

CREATE PROCEDURE sp_LivroValor

AS 

BEGIN 
  SELECT NomeLivro Titulo, PreçoLivro Valor 
  FROM Livro;
 END 
 GO

 EXEC sp_LivroValor

ALTER PROCEDURE sp_LivroValor 
AS 
BEGIN 
  SELECT NomeLivro Titulo, PreçoLivro Valor 
  FROM Livro
  WHERE PreçoLivro >= 150.00;
 END 
 GO

EXEC sp_LivroValor

EXEC sp_helptext sp_LivroValor

CREATE PROCEDURE sp_LivroISBN	
WITH ENCRYPTION 
AS
BEGIN
   SELECT NomeLivro, ISBN13
   FROM Livro;
END
GO

EXEC sp_LivroISBN;


ALTER PROCEDURE sp_teste (@p1 AS INT)
AS 
SELECT CONCAT ('Valor: ', @p1) AS Valor;

EXEC sp_teste 63;

CREATE OR ALTER PROCEDURE sp_cadastra_editora( 
@nome	VARCHAR (50))
AS 
BEGIN
   SET NOCOUNT ON 
   INSERT INTO Editora(NomeEditora)
   VALUES (@nome);
END
GO

EXEC sp_cadastra_editora  'Makron Books';

SELECT * FROM Editora;

DROP PROCEDURE sp_LivroValor;