USE LBDT_G01;

If  exists 
 (Select *
   From  sys.check_constraints
   Where object_id  =  OBJECT_ID(N'dbo.CK_G01_P02_VEICULOS') 
     and parent_object_id = OBJECT_ID(N'dbo.G01_P02_VEICULOS'))
   ALTER TABLE  dbo.G01_P02_VEICULOS
      DROP CONSTRAINT CK_G01_P02_VEICULOS;
IF  EXISTS
  (select *
    From  sys.objects
    Where object_id = OBJECT_ID(N'dbo.G01_P02_VEICULOS') 
      and type in (N'U'))
   DROP TABLE dbo.G01_P02_VEICULOS;


CREATE TABLE dbo.G01_P02_VEICULOS (
  codigo              numeric (3, 0) NOT NULL ,
  tempo_utilizacao varchar	(20)          NULL ,
  marca            varchar (20)   NOT NULL ,
  modelo		   varchar (20)   NOT NULL ,
  cor		       varchar (20)   NOT NULL ,
  ano		       varchar (4)    NOT NULL ,
  obs              varchar (72)   NULL ,

  Constraint PK_G01_P02_VEICULOS Primary Key Clustered
   (codigo asc)
   WITH
    FILLFACTOR = 10,
	
	CONSTRAINT CK_G01_P02_VEICULOS_codigo CHECK
   (codigo between 1 and 250),
  
);
  
