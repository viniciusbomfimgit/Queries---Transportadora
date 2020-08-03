
USE LBDT_G01;

Delete From dbo.G01_P02_VEICULOS

Insert into dbo.G01_P02_VEICULOS values
  (01,'12 anos','Ford','Ranger','Vermelho','2008','Alienado'),
  (02,'11 anos','Ford','Ranger','Preto','2009',NULL),
  (03,'13 anos','Ford','Ranger','Branco','2007',NULL),
  (04,'2 anos','Ford','Ranger','Vermelho','2018',NULL);


Select *
  From dbo.G01_P02_VEICULOS;