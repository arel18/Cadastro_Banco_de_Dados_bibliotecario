/* Backup e restauração de banco de dados 

Sintaxe: 
BACKUP DATABASE nome_banco TO DISK = 'X:\CAMINHO\nome_banco.bak' GO 

RESTORE DATABASE nome_banco FROM DISK = 'X:\CAMINHO\nome_banco.bak' GO 

*/

-- Exemplos:

BACKUP DATABASE nome_banco TO DISK = 'C:\SQL\Biblioteca.bak'; GO 

RESTORE DATABASE nome_banco FROM DISK = 'C:\SQL\Biblioteca.bak'; GO 

