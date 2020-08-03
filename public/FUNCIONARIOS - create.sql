USE LBDT_G01;

If  exists 
 (Select *
   From  sys.check_constraints
   Where object_id  =  OBJECT_ID(N'dbo.CK_G01_P02_FUNCIONARIOS') 
     and parent_object_id = OBJECT_ID(N'dbo.G01_P02_FUNCIONARIOS'))
   ALTER TABLE  dbo.G01_P02_FUNCIONARIOS
      DROP CONSTRAINT CK_G01_P02_FUNCIONARIOS;
IF  EXISTS
  (select *
    From  sys.objects
    Where object_id = OBJECT_ID(N'dbo.G01_P02_FUNCIONARIOS') 
      and type in (N'U'))
   DROP TABLE dbo.G01_P02_FUNCIONARIOS;

CREATE TABLE dbo.G01_P02_FUNCIONARIOS (
  codigo            numeric (3, 0)  NOT NULL ,
  

  CONSTRAINT PK_G01_P02_FUNCIONARIOS PRIMARY KEY CLUSTERED 
   (codigo  asc)
   WITH
    FILLFACTOR = 10,
  CONSTRAINT CK_G01_P02_FUNCIONARIOS_codigo CHECK
   (codigo between 1 and 250),


);