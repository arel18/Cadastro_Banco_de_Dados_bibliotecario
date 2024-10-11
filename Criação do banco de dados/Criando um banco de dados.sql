create database teste01 ON PRIMARY 
( NAME = teste01,
filename = 'C:\SQL\teste01.mdf',
size = 6MB, 
MAXSIZE = 15MB,
FILEGROWTH = 10%)
LOG ON (
NAME = teste01_log,
filename = 'C:\SQL\teste01.ldf',
size = 1MB,
FILEGROWTH = 1MB)
GO 

-- Consultar banco existentes 
select name 
from master.sys.datebase
order by name;

EXEC sp_databases;

--Selecionar banco a usar
USE teste01;

-- Obter informações sobre um banco específico 
exec sp_helpdb teste01;

-- Excluir banco de dados 
DROP DATABASE IF EXISTS teste02

-- Excluir banco em uso 
USE master 
GO 
ALTER DATABASE teste01 SET SINGLE_USER WITH ROLLBACK IMMEDIATE 
DROP DATABASE teste01

