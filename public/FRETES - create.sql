USE LBDT_G01;

If  exists 
 (Select *
   From  sys.check_constraints
   Where object_id  =  OBJECT_ID(N'dbo.CK_G01_P02_FRETES') 
     and parent_object_id = OBJECT_ID(N'dbo.G01_P02_FRETES'))
   ALTER TABLE  dbo.G01_P02_FRETES
      DROP CONSTRAINT CK_G01_P02_FRETES;
IF  EXISTS
  (select *
    From  sys.objects
    Where object_id = OBJECT_ID(N'dbo.G01_P02_FRETES') 
      and type in (N'U'))
   DROP TABLE dbo.G01_P02_FRETES;

CREATE TABLE dbo.G01_P02_FRETES (
  codigo            numeric (3, 0)  NOT NULL ,
  

  CONSTRAINT PK_G01_P02_FRETES PRIMARY KEY CLUSTERED 
   (codigo  asc)
   WITH
    FILLFACTOR = 10,
  CONSTRAINT CK_G01_P02_FRETES_codigo CHECK
   (codigo between 1 and 250),


);