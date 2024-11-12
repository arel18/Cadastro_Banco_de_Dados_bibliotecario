-- Funções de Manipulação de Strings 

-- Função LEN 

SELECT NomeLivro, LEN(NomeLivro) 'Comprimento do Nome'
FROM Livro;

-- Funções LOWER e UPPER

SELECT LOWER(NomeAssunto) 'Nome minúsculo' FROM Assunto;

SELECT UPPER (NomeAssunto) Assunto FROM Assunto;

-- Funções LTRIM, RTRIM e TRIM

SELECT LTRIM (NomeLivro) 'Livro sem espaço no começo' FROM Livro;

SELECT RTRIM (NomeLivro) 'Livro sem espaço no Final' FROM Livro;

 INSERT INTO Autor (NomeAutor, SobrenomeAutor) 
VALUES (TRIM('     Samantha  '), TRIM( '     Lenin   '));

SELECT NomeAutor, SobrenomeAutor FROM Autor;

-- Função Replace 

UPDATE Livro 
SET NomeLivro = REPLACE(NomeLivro, '2016', '2022') 
WHERE NomeLivro LIKE '%Server 2016%';

SELECT * FROM Livro;

-- Função SUBSTRING

SELECT SUBSTRING(NomeLivro, 1, 3) AS Codigo FROM Livro;

UPDATE Editora SET NomeEditora = UPPER(NomeEditora);

SELECT * FROM Editora;

-- Função RIGHT 

SELECT ISBN13, RIGHT(ISBN13, 4) 'Titulo d DV' FROM Livro;

-- Função CONCAT 

SELECT CONCAT (NomeAutor, ' ', SobrenomeAutor) 'Nome Completo' FROM Autor;