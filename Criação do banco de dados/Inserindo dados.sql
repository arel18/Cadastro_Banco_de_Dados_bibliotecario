-- Inserir registros

-- tabela de assuntos 

insert into Assunto (NomeAssunto)
values 
('Fic��o Cient�fica'), ('Bot�nica'),
('Eletr�nico'), ('Matem�tica'), 
('Aventura'), ('Romance'),
('Finan�as'), ('Gastronomia'),
('Terror'), ('Administra��o'),
('Inform�tica'), ('Suspense');

--Verifica��o

Select * from Assunto;

-- Tabela de editoras

Insert into Editora (NomeEditora)
values
('Prentice Hall'), ('O Reilly');

-- Mais editoras 
Insert into Editora (NomeEditora)
values 
('Aleph'), ('Microsoft Press'),
('Wiley'),('HarperCollins'),
('�rica'),('Novatec'),
('McGraw-Hill'),('Apress'),
('Francisco Alves'),('Sybex'),
('Globo'),('Companhia das letras'),('Morro Branco'),
('Penquin Books'),('Martin Claret'),
('Record'),('Springer'),('Melhoramentos'),
('Oxford'),('Taschen'),('Ediouro'),('Bookman');

--Tabela de Autores
-- 1 Inserir uma linha �nica
insert into Autor (NomeAutor, SobrenomeAutor)
Values ('Umberto', 'Eco');

-- 2. Inserir m�ltiplas linhas distintas (v�rios registros):
INSERT INTO Autor (NomeAutor, SobrenomeAutor)
VALUES
('Daniel', 'Barret'), ('Gerald', 'Carter'), ('Mark', 'Sobell'),
('William', 'Stanek'), ('Christine', 'Bresnahan'), ('William', 'Gibson'),
('James', 'Joyce'), ('John', 'Emsley'), ('Jos�', 'Saramago'),
('Richard', 'Silverman'), ('Robert', 'Byrnes'), ('Jay', 'Ts'),
('Robert', 'Eckstein'), ('Paul', 'Horowitz'), ('Winfield', 'Hill'),
('Joel', 'Murach'), ('Paul', 'Scherz'), ('Simon', 'Monk'),
('George', 'Orwell'), ('�talo','Calvino'), ('Machado','de Assis'),
('Oliver', 'Sacks'), ('Ray', 'Bradbury'), ('Walter', 'Isaacson'),
('Benjamin','Graham'), ('J�lio','Verne'), ('Marcelo', 'Gleiser'),
('Harri','Lorenzi'), ('Humphrey', 'Carpenter'), ('Isaac', 'Asimov'),
('Aldous', 'Huxley'), ('Arthur','Conan Doyle'), ('Blaise', 'Pascal'),
('Jostein', 'Gaarder'), ('Stephen', 'Hawking'), ('Stephen', 'Jay Gould'),
('Neil', 'De Grasse Tyson'), ('Charles', 'Darwin'), ('Alan', 'Turing'), ('Arthur', 'C. Clarke');

-- Verifica��o
SELECT * FROM Autor;

-- Tabela de Livros
INSERT INTO Livro (NomeLivro, ISBN13, DataPub, Pre�oLivro,
NumeroPaginas, IdAssunto, IdEditora)
VALUES ('A Arte da Eletr�nica', '9788582604342',
'20170308', 300.74,  1160, 3, 24);

SELECT * FROM Livro;

INSERT INTO Livro (NomeLivro, ISBN13, DataPub, Pre�oLivro, NumeroPaginas, IdAssunto, IdEditora)
VALUES
	('Vinte Mil L�guas Submarinas', '9788582850022', '2014-09-16', 24.50, 448, 1, 16), -- J�lio Verne
	('O Investidor Inteligente', '9788595080805', '2016-01-25', 79.90, 450, 7, 6); -- Benjamin Graham	

-- Inserir em lote (bulk) a partir de arquivo CSV
INSERT INTO Livro (NomeLivro, ISBN13, DataPub, Pre�oLivro,
NumeroPaginas, IdEditora, IdAssunto)
SELECT 
    NomeLivro, ISBN13, DataPub, PrecoLivro, NumeroPaginas,
	IdEditora, IdAssunto
FROM OPENROWSET(
    BULK 'C:\SQL\Livros.CSV',
    FORMATFILE = 'C:\SQL\Formato.xml',
	CODEPAGE = '65001',  -- UTF-8
	FIRSTROW = 2
) AS LivrosCSV;

-- Verifica��o
SELECT * FROM Livro;

-- Tabela LivroAutor
INSERT INTO LivroAutor(IdLivro, IdAutor)
VALUES
(100,15),
(100,16),
(101,27),
(102,26),
(103,41),
(104,24),
(105,32),
(106,20),
(107,27),
(108,1),
(109,22),
(110,10),
(111,21),
(112,5),
(113,10),
(114,8),
(115,18),
(115,19),
(116,31),
(117,22);

-- Verifica��o
SELECT * FROM LivroAutor;

-- Verifica��o com INNER JOIN
SELECT NomeLivro, NomeAutor, SobrenomeAutor
FROM Livro
INNER JOIN LivroAutor
  ON Livro.IdLivro = LivroAutor.IdLivro
INNER JOIN Autor
  ON Autor.IdAutor = LivroAutor.IdAutor
ORDER BY NomeLivro;



