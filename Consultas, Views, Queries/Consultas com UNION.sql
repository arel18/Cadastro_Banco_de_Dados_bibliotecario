-- Combinar consultas com o operador UNION 

-- Sintaxe:

-- SELECT colunas FROM tabela1 UNION SELECT colunas from tabela2...

-- EXEMPLO 1
select NomeAutor Nome, 'Autor' as tipo from Autor
union 
select NomeEditora Nome, 'Editora' as Tipo from Editora; 

-- EXEMPLO 2

select NomeLivro as Nome, 'Livro' as tipo from Livro
union 
select NomeAssunto as  Nome, 'Assunto' as Tipo from Assunto; 
