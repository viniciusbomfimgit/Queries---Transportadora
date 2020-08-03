
USE LBDT_G01;

Delete From dbo.G01_P02_FICHA_CADASTRAL

Insert into dbo.G01_P02_FICHA_CADASTRAL values
  (01,01,'Antonio José','Rua Inglaterra n° 35','Atibaia','SP',31,'2456-9687','antonio.jose@gmail.com','444.568.855-65','M','05-05-1960','Pernambucano',NULL),
  (02,02,'Joaquim Silva','Rua Adriana n° 96','Atibaia','SP',31,'2456-9895','joaquim.silva@gmail.com','526.568.858-65','M','09-10-1975','Alagoano',NULL),
  (03,03,'João Gomes','Rua Maria n° 47','Atibaia','SP',31,'2456-9895','joao@gmail.com','526.568.858-65','M','28-09-1949','Paulista',NULL);

Select *
  From dbo.G01_P02_FICHA_CADASTRAL;