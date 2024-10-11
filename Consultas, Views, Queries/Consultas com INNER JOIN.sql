/* INNER JOIN - Retornar dados de duas ou mais tabelas 

Sintaxe: 

SELECT colunas FROM tabela 1 INNER JOIN tabela 2 ON tabela1.coluna INNER JOIN tabelaN ON tabela1.coluna = tabelaN.coluna

*/

-- Exemplos: 

SELECT * FROM Livro  INNER JOIN Assunto ON Livro.IdAssunto = Assunto.IdAssunto;

SELECT NomeLivro, NomeAssunto FROM Livro INNER JOIN Assunto ON Livro.IdAssunto = Assunto.IdAssunto;

SELECT NomeLivro AS Livros, NomeEditora AS Editoras FROM Livro L INNER JOIN Editora E ON L.IdEditora = E.IdEditora
WHERE E.NomeEditora LIKE '[MH]%' ORDER  BY L.NomeLivro;


SELECT L.NomeLivro Livro, A.NomeAutor Autor, A.SobrenomeAutor Sobrenome, E.NomeEditora Editora 
FROM LivroAutor LA
INNER JOIN Autor A
ON LA.IdAutor = A.IdAutor
INNER JOIN Livro L 
ON L.IdLivro = LA.IdLivro
JOIN Editora E 
ON L.IdEditora = E.IdEditora
ORDER BY Livro;


