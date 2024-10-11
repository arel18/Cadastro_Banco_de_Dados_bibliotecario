-- Fun��es de Hora e Data

SELECT getdate() AS 'DATA e hora atuais';
SELECT getutcdate() AS 'DATA e hora atuais';
SELECT CURRENT_TIMESTAMP;

SELECT YEAR(getdate()) AS Ano;
SELECT MONTH(getdate()) AS Mes;
SELECT DAY(getdate()) AS Dia;

-- DATEDIFF
/*
Sintaxe:
DATEDIFF (parte, data_inicial, data_inicial) */

-- Exemplos: 

SELECT DATEDIFF (hh, getutcdate(), getdate()) AS 'UTC S�o Paulo';
SELECT DATEDIFF (dd, '1980-12-15', getdate());

SELECT DATEPART (YYYY, DataPub) AS 'Ano de Lan�amento',
DATEPART(DD, DataPub) AS 'Dia',
DATENAME(MM, DataPub) AS 'M�s'
FROM Livro WHERE IdLivro = 105;

-- DATEADD 
/* 
DATEADD(parte, n�mero, data) */

SELECT DataPub 'Publica��o EUA', DATEADD(dd,50,DataPub) as 'Brasil' FROM Livro WHERE IdLivro = 104;

-- CONVERT(tipo_dados, express�o, estilo)

SELECT CONVERT (VARCHAR(10), GETDATE(), 108) Hoje;
SELECT NomeLivro Titulo, CONVERT(VARCHAR(10), DataPub, 103) Publica��o
FROM Livro WHERE DataPub >= CONVERT(VARCHAR(10), '10/10/2015', 103);

