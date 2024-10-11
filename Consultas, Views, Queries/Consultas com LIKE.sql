-- Clausula LIKE (e NOT LIKE)

/* Sintaxe 
SELECT colunas FROM tabela WHERE coluna LIKE padr�o;

Metacaracteres
% qualquer cadeia de 0 ou mais caracteres 

_ qualquer caractere �nico 
[] caracteres �nicos no intervalo ou conjunto especificado
[^] caracteres �nicos N�O no intervalo ou conjunto especificado


*/

-- Exemplos:

SELECT * FROM Livro WHERE NomeLivro LIKE 'F%';

SELECT NomeAutor FROM Autor WHERE NomeAutor NOT LIKE 'S%';

SELECT * FROM Livro WHERE NomeLivro LIKE '[FD]%';

SELECT * FROM Livro WHERE NomeLivro LIKE '[^F^D]%';

SELECT * FROM Livro WHERE NomeLivro LIKE '[aeiou]%'

SELECT * FROM Livro WHERE NomeLivro LIKE '[0-9]%'



