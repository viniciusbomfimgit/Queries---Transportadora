USE LBDT_G01;

If  exists 
 (Select *
   From  sys.check_constraints
   Where object_id  =  OBJECT_ID(N'dbo.CK_G01_P02_TRANSACOES_VEICULOS') 
     and parent_object_id = OBJECT_ID(N'dbo.G01_P02_TRANSACOES_VEICULOS'))
   ALTER TABLE  dbo.G01_P02_TRANSACOES_VEICULOS
      DROP CONSTRAINT CK_G01_P02_TRANSACOES_VEICULOS;
IF  EXISTS
  (select *
    From  sys.objects
    Where object_id = OBJECT_ID(N'dbo.G01_P02_TRANSACOES_VEICULOS') 
      and type in (N'U'))
   DROP TABLE dbo.G01_P02_TRANSACOES_VEICULOS;

CREATE TABLE dbo.G01_P02_TRANSACOES_VEICULOS (
  codigo            numeric (3, 0)  NOT NULL ,
  

  CONSTRAINT PK_G01_P02_TRANSACOES_VEICULOS PRIMARY KEY CLUSTERED 
   (codigo  asc)
   WITH
    FILLFACTOR = 10,
  CONSTRAINT CK_G01_P02_TRANSACOES_VEICULOS_codigo CHECK
   (codigo between 1 and 250),


);