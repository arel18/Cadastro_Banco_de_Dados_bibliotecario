-- Ordena��o de Resultados em Consultas SQL: 
-- Clausula ORDER BY

-- Sintaxe
-- SELECT tabela ORDER BY coluna_a_ordenar [ASC | DESC] 

-- Exemplos

select * from Livro
order by NomeLivro;

select NomeLivro, IdEditora
from Livro order by IdEditora

select NomeLivro, Pre�oLivro 
from Livro
order by Pre�oLivro DESC;

select NomeLivro, Pre�oLivro, IdEditora
from Livro
order by IdEditora ASC, Pre�oLivro DESC;