USE LBDT_G01;

If  exists 
 (Select *
   From  sys.check_constraints
   Where object_id  =  OBJECT_ID(N'dbo.CK_G01_P02_MOTORISTA') 
     and parent_object_id = OBJECT_ID(N'dbo.G01_P02_MOTORISTA'))
   ALTER TABLE  dbo.G01_P02_MOTORISTA
      DROP CONSTRAINT CK_G01_P02_MOTORISTA;
IF  EXISTS
  (select *
    From  sys.objects
    Where object_id = OBJECT_ID(N'dbo.G01_P02_MOTORISTA') 
      and type in (N'U'))
   DROP TABLE dbo.G01_P02_MOTORISTA;

CREATE TABLE dbo.G01_P02_MOTORISTA (
  codigo            numeric (3, 0)  NOT NULL ,
  tempo_motorista   time            NULL ,
 
  obs               varchar (72)        NULL ,
  CONSTRAINT PK_G01_P02_MOTORISTA PRIMARY KEY CLUSTERED 
   (codigo  asc)
   WITH
    FILLFACTOR = 10,
  CONSTRAINT CK_G01_P02_MOTORISTA_codigo CHECK
   (codigo between 1 and 250),
 
);