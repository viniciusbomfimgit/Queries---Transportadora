USE LBDT_G01;

If  exists 
 (Select *
   From  sys.check_constraints
   Where object_id  =  OBJECT_ID(N'dbo.CK_G01_P02_MERCADORIAS') 
     and parent_object_id = OBJECT_ID(N'dbo.G01_P02_MERCADORIAS'))
   ALTER TABLE  dbo.G01_P02_MERCADORIAS
      DROP CONSTRAINT CK_G01_P02_MERCADORIAS;
IF  EXISTS
  (select *
    From  sys.objects
    Where object_id = OBJECT_ID(N'dbo.G01_P02_MERCADORIAS') 
      and type in (N'U'))
   DROP TABLE dbo.G01_P02_MERCADORIAS;

CREATE TABLE dbo.G01_P02_MERCADORIAS (
  codigo            numeric (3, 0)  NOT NULL ,
  obs               varchar (72)        NULL ,
  CONSTRAINT PK_G01_P02_MERCADORIAS PRIMARY KEY CLUSTERED 
   (codigo  asc)
   WITH
    FILLFACTOR = 10,
  CONSTRAINT CK_G01_P02_MERCADORIAS_codigo CHECK
   (codigo between 1 and 250),
  
);