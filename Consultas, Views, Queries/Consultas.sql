-- Consultas Simples com Select 

-- Sintaxe:

-- SELECT colune(s) FROM tabela;

SELECT NomeLivro from livro; 

select * from Autor;

select NomeLivro, PreçoLivro
from Livro;

select distinct IdEditora 
from Livro;

-- SELECT INTO: criar uma tabela com dados de outra
-- SELECT coluna(s)
-- INTO nova_tabela
-- FROM tabela_atual;

SELECT NomeLivro, ISBN13
INTO LivroISBN
FROM Livro;

SELECT * FROM LivroISBN

drop table LivrosFiccao;

select NomeLivro, PreçoLivro, Datapub
from Livro;

select * into LivrosFiccao
From Livro
where IdAssunto =1;

select * from LivrosFiccao