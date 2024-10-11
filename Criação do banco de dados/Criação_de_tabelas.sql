create table Autor (
IdAutor SMALLINT IDENTITY,
NomeAutor Varchar(50) NOT NULL,
SobrenomeAutor Varchar(60) NOT NULL,
CONSTRAINT pk_id_autor PRIMARY KEY (IdAutor)

);

sp_help Autor;

create table Editora(
IdEditora SMALLINT PRIMARY KEY IDENTITY,
NomeEditora VARCHAR(50) NOT NULL,

);

CREATE TABLE Assunto(
IdAssunto TINYINT PRIMARY KEY IDENTITY,
NomeAssunto Varchar(25)NOT NULL

);

CREATE TABLE Livro(
IdLivro SMALLINT NOT NULL PRIMARY KEY IDENTITY(100,1),
NomeLivro VARCHAR(70) NOT NULL, 
ISBN13 CHAR(13) UNIQUE NOT NULL,
DataPub DATE,
PreçoLivro Money not null,
NumeroPaginas smallint not null, 
IdAssunto TINYINT NOT NULL,
IdEditora SMALLINT NOT NULL,
CONSTRAINT fk_id_editora FOREIGN KEY(IdEditora)REFERENCES Editora(IdEditora) on delete cascade,
CONSTRAINT fk_id_assunto FOREIGN KEY(IdAssunto) REFERENCES Assunto(IdAssunto) on delete cascade,
CONSTRAINT verificar_preco CHECK(PreçoLivro >= 0) 

);

CREATE TABLE LivroAutor(
IdLivro SMALLINT NOT NULL,
IdAutor SMALLINT NOT NULL,
CONSTRAINT fk_id_livros FOREIGN KEY (IdLivro)REFERENCES Livro(IdLivro),
CONSTRAINT fk_id_autores FOREIGN KEY (IdAutor)REFERENCES Autor(IdAutor),
CONSTRAINT pk_livro_autor PRIMARY KEY(IdLivro, IdAutor)
);

Select name from Biblioteca.sys.tables;