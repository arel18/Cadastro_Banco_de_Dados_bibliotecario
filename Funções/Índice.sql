-- Indices	

/* Estruturas utilizadas para otimizar a recupera��o de dados de tabelas.
Permitem que os registros relevantes sejam encontrados mais rapidamente com
base em determinados crit�rios de pesquisas. */

CREATE INDEX int_nome_livro ON Livro(NomeLivro);

SELECT NomeLivro FROM Livro;

EXEC sp_helpindex Livro;

-- Desabilitando o indice 

ALTER INDEX ind_nome_livro ON Livro DISABLE;

-- Habilitando o �ndice 
ALTER INDEX ind_nome_livro ON Livro REBUILD;

-- Desabilitando todos os indices  
ALTER INDEX ALL ON Livro DISABLE;

-- Habilitando todos os itens
 ALTER INDEX ALL ON Livro REBUILD;

-- Excluindo o �ndice 
  DROP INDEX Livro.ind_nome_livro;