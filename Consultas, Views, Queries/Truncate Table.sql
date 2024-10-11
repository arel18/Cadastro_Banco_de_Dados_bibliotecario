-- TRUNCATE TABLE: Limpar uma tabela 

-- Sintaxe
-- TRUNCATE TABLE nome_tabela;

-- Criando tabela teste 

CREATE TABLE Teste(
IdTeste Smallint primary key identity,
ValorTeste Smallint not null 

);

-- Rotina para inserir dados na tabela 

DECLARE @Contador INT = 1 

WHILE @Contador <= 100
 BEGIN
    INSERT INTO Teste(ValorTeste) VALUES (@Contador *3)
	SET @Contador = @Contador + 1
END

SELECT * FROM Teste;

--Limpar a tabela
TRUNCATE TABLE Teste;

-- Verificar o valor atual IDENTITY
SELECT IDENT_CURRENT('Teste');