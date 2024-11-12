-- Fun��es de Manipula��o de Strings 

-- Fun��o LEN 

SELECT NomeLivro, LEN(NomeLivro) 'Comprimento do Nome'
FROM Livro;

-- Fun��es LOWER e UPPER

SELECT LOWER(NomeAssunto) 'Nome min�sculo' FROM Assunto;

SELECT UPPER (NomeAssunto) Assunto FROM Assunto;

-- Fun��es LTRIM, RTRIM e TRIM

SELECT LTRIM (NomeLivro) 'Livro sem espa�o no come�o' FROM Livro;

SELECT RTRIM (NomeLivro) 'Livro sem espa�o no Final' FROM Livro;

 INSERT INTO Autor (NomeAutor, SobrenomeAutor) 
VALUES (TRIM('     Samantha  '), TRIM( '     Lenin   '));

SELECT NomeAutor, SobrenomeAutor FROM Autor;

-- Fun��o Replace 

UPDATE Livro 
SET NomeLivro = REPLACE(NomeLivro, '2016', '2022') 
WHERE NomeLivro LIKE '%Server 2016%';

SELECT * FROM Livro;

-- Fun��o SUBSTRING

SELECT SUBSTRING(NomeLivro, 1, 3) AS Codigo FROM Livro;

UPDATE Editora SET NomeEditora = UPPER(NomeEditora);

SELECT * FROM Editora;

-- Fun��o RIGHT 

SELECT ISBN13, RIGHT(ISBN13, 4) 'Titulo d DV' FROM Livro;

-- Fun��o CONCAT 

SELECT CONCAT (NomeAutor, ' ', SobrenomeAutor) 'Nome Completo' FROM Autor;