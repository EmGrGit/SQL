/*this is happening automatically first on master database*/
CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'hopeFul123!';

CREATE CERTIFICATE encrypted WITH SUBJECT = 'Random Certificate';
/*Switch to the database we want to encrypt this this certificate*/
use randomDB;

CREATE DATABASE ENCRYPTION KEY WITH ALGORITHM = AES_256
ENCRYPTION BY SERVER CERTIFICATE encrypted;

ALTER DATABASE randomDB SET ENCRYPTION ON;
