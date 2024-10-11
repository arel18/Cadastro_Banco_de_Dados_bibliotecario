--  Atualizar registros: Cl�sula UPDATE

-- Sintaxe: UPDATE tabela SET coluna = novo valor WHERE coluna = filtro;

SELECT IdLivro, NomeLivro, Pre�oLivro from Livro;

UPDATE Livro
SET NomeLivro = 'Eu, Rob�'
WHERE IdLivro = 116;

UPDATE Livro
SET Pre�oLivro = 60.00
WHERE IdLivro = 105;

UPDATE Livro
SET Pre�oLivro = Pre�oLivro * 1.1
WHERE IdLivro = 105;

UPDATE Livro
SET Pre�oLivro = Pre�oLivro * 0.8
WHERE IdLivro = 105;