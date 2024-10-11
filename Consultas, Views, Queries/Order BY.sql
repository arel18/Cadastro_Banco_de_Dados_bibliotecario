-- Ordenação de Resultados em Consultas SQL: 
-- Clausula ORDER BY

-- Sintaxe
-- SELECT tabela ORDER BY coluna_a_ordenar [ASC | DESC] 

-- Exemplos

select * from Livro
order by NomeLivro;

select NomeLivro, IdEditora
from Livro order by IdEditora

select NomeLivro, PreçoLivro 
from Livro
order by PreçoLivro DESC;

select NomeLivro, PreçoLivro, IdEditora
from Livro
order by IdEditora ASC, PreçoLivro DESC;