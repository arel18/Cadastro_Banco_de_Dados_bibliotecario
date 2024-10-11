-- Gerenciamento de tabelas

-- Alter, DROP, RENAME 

--Adcionar uma nova coluna a uma tabela existente
ALTER TABLE Livro
add Edi��o smallint 

-- Alterar o tipo de dados de uma coluna 

ALTER TABLE Livro

ALTER COLUMN Edi��o tinyint;

-- Adcionar chave prim�ria 
Alter table NomeTabela
ADD PRIMARY KEY (COLUNA);

--Excluir uma constraint de uma coluna
Alter table NomeTabela
drop constraint NomeConstraint;

-- Verificar nome das constraints: 
sp_help Livro;

-- Excluir uma coluna de uma tabela
ALTER TABLE Livro
DROP COLUMN Edi��o;

--Excluir uma tabela: 
DROP TABLE NomeTabela; 

-- Renomear uma tabela: sp_rename
-- sp_rename 'nome atual', 'novo nome';
sp_rename  'tbl_livros', 'Livro';

