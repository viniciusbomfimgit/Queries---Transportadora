USE LBDT_G01;

If  exists 
 (Select *
   From  sys.check_constraints
   Where object_id  =  OBJECT_ID(N'dbo.CK_G01_P02_PEDAGIOS') 
     and parent_object_id = OBJECT_ID(N'dbo.G01_P02_PEDAGIOS'))
   ALTER TABLE  dbo.G01_P02_PEDAGIOS
      DROP CONSTRAINT CK_G01_P02_PEDAGIOS;
IF  EXISTS
  (select *
    From  sys.objects
    Where object_id = OBJECT_ID(N'dbo.G01_P02_PEDAGIOS') 
      and type in (N'U'))
   DROP TABLE dbo.G01_P02_PEDAGIOS;

CREATE TABLE dbo.G01_P02_PEDAGIOS (
  codigo            numeric (3, 0)  NOT NULL ,
  valor             numeric (15,2)  NULL ,
  ultima_atualizacao time			NOT NULL,
  obs               varchar (72)        NULL ,

  CONSTRAINT PK_G01_P02_PEDAGIOS PRIMARY KEY CLUSTERED 
   (codigo  asc)
   WITH
    FILLFACTOR = 10,
  CONSTRAINT CK_G01_P02_PEDAGIOS_codigo CHECK
   (codigo between 1 and 250),


);