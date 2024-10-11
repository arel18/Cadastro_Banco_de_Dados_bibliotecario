-- Filtros Combinados Operadores lógicos AND, OR, NOT

SELECT * FROM Livro 
where IdLivro > 102 and IdEditora < 4;

SELECT * FROM Livro 
where IdLivro > 110 or IdEditora < 4;

SELECT * FROM Livro 
where IdLivro > 110 or not IdEditora < 4;

-- Between: seleção de intervalos 

-- Sintaxe:
-- SELECT colunas FROM tabela WHERE coluna BETWEEN valor1 AND valor2..;

select * from Livro where DataPub between '20040507' and '20140507';