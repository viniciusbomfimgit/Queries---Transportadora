
USE LBDT_G01;

Delete From dbo.G01_P02_CLIENTES

Insert into dbo.G01_P02_CLIENTES values
  (01,'Juliana Silva', 'Rua nove','Atibaia',31,'SP','2456-9658', 'juliana.silva@hotmail.com','526.658.958-20',NULL),
   (02,'Anderson Silva', 'Rua dez','Atibaia',31,'SP','2456-9528', 'anderson.silva@hotmail.com','746.968.958-20',NULL);


Select *
  From dbo.G01_P02_CLIENTES;