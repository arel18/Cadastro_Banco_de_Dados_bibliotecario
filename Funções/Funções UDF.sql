-- Fun��es escalares 

-- Sintaxe:
CREATE FUNCTION nome_funcao(parametros)
RETURNS tipo_dado_retorno
AS
 BEGIN 
   bloco_de_codigos
   RETURN valor_retorno
END;


-- Exemplos 


CREATE FUNCTION valor_total(@inferior SMALLINT, @superior SMALLINT)
RETURNS REAL 
AS
 BEGIN 
   DECLARE @media REAL 
   SELECT @media = AVG(Pre�oLivro)
   FROM Livro
   WHERE IdLivro BETWEEN @inferior AND @superior
   RETURN @media 

END;

SELECT dbo.valor_total(101,105) Total;

-- Fun��o com Valor de Tabela

CREATE FUNCTION retorna_itens(@valor REAL)
RETURNS TABLE 
AS RETURN (
      SELECT L.NomeLivro, A.NomeAssunto, E.NomeEditora 
	  FROM Livro L
	  INNER JOIN Assunto A 
	  ON L.IdAssunto = A.IdAssunto
	  INNER JOIN Editora E  ON L.IdEditora = E.IdEditora
	  WHERE L.Pre�oLivro > @valor );

	  SELECT NomeLivro, NomeAssunto FROM dbo.retorna_itens(62.00);

	  Drop FUNCTION valor_total;



