
USE LBDT_G01;

Delete From dbo.G01_P02_FICHAS_MEDICAS;

Insert into dbo.G01_P02_FICHAS_MEDICAS values
  (01, 01,01,'01-06-2020','M','PE','05-06-2020','Atibaia','SP',31),
  (02, 02,02,'04-06-1976','M','AL','05-06-2020','Atibaia','SP',31),
  (03, 03,03, '09-06-1976','M','SP','05-06-2020','Atibaia','SP',31);


Select *
  From dbo.G01_P02_FICHAS_MEDICAS;