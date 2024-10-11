--  Atualizar registros: Clásula UPDATE

-- Sintaxe: UPDATE tabela SET coluna = novo valor WHERE coluna = filtro;

SELECT IdLivro, NomeLivro, PreçoLivro from Livro;

UPDATE Livro
SET NomeLivro = 'Eu, Robô'
WHERE IdLivro = 116;

UPDATE Livro
SET PreçoLivro = 60.00
WHERE IdLivro = 105;

UPDATE Livro
SET PreçoLivro = PreçoLivro * 1.1
WHERE IdLivro = 105;

UPDATE Livro
SET PreçoLivro = PreçoLivro * 0.8
WHERE IdLivro = 105;