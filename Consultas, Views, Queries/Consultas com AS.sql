--Nomes alternativos: AS (ALIAS)

-- Sintaxe 
-- SELECT coluna1 [AS] nome_alterantivo1 FROM tabela [AS] nome_alternativo_tabela

select NomeLivro as Livros from Livro;

select A.NomeAutor as Nome, A.SobrenomeAutor as Sobrenome from Autor as A;

select top(3) NomeLivro AS 'Livros mais caros', PreçoLivro AS '	Preço do livro' 
from Livro as L;

