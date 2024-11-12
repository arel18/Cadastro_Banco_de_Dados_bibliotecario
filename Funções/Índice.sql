-- Indices	

/* Estruturas utilizadas para otimizar a recuperação de dados de tabelas.
Permitem que os registros relevantes sejam encontrados mais rapidamente com
base em determinados critérios de pesquisas. */

CREATE INDEX int_nome_livro ON Livro(NomeLivro);

SELECT NomeLivro FROM Livro;

EXEC sp_helpindex Livro;

-- Desabilitando o indice 

ALTER INDEX ind_nome_livro ON Livro DISABLE;

-- Habilitando o índice 
ALTER INDEX ind_nome_livro ON Livro REBUILD;

-- Desabilitando todos os indices  
ALTER INDEX ALL ON Livro DISABLE;

-- Habilitando todos os itens
 ALTER INDEX ALL ON Livro REBUILD;

-- Excluindo o índice 
  DROP INDEX Livro.ind_nome_livro;