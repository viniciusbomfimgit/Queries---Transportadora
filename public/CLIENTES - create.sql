USE LBDT_G01;

If  exists 
 (Select *
   From  sys.check_constraints
   Where object_id  =  OBJECT_ID(N'dbo.CK_G01_P02_CLIENTES') 
     and parent_object_id = OBJECT_ID(N'dbo.G01_P02_CLIENTES'))
   ALTER TABLE  dbo.G01_P02_CLIENTES
      DROP CONSTRAINT CK_G01_P02_CLIENTES;
IF  EXISTS
  (select *
    From  sys.objects
    Where object_id = OBJECT_ID(N'dbo.G01_P02_CLIENTES') 
      and type in (N'U'))
   DROP TABLE dbo.G01_P02_CLIENTES;

USE LBDT_G01;

If  exists 
 (Select *
   From  sys.check_constraints
   Where object_id  =  OBJECT_ID(N'dbo.CK_G01_P02_CLIENTES') 
     and parent_object_id = OBJECT_ID(N'dbo.G01_P02_CLIENTES'))
   ALTER TABLE  dbo.G01_P02_CLIENTES
      DROP CONSTRAINT CK_G01_P02_CLIENTES;
IF  EXISTS
  (select *
    From  sys.objects
    Where object_id = OBJECT_ID(N'dbo.G01_P02_CLIENTES') 
      and type in (N'U'))
   DROP TABLE dbo.G01_P02_CLIENTES;

CREATE TABLE dbo.G01_P02_CLIENTES (
  codigo            numeric (3, 0)  NOT NULL ,
  nome              varchar (50)    NOT NULL ,
  logradouro        varchar (75)    NOT NULL ,
  cidade			char (45)    NOT NULL ,
  cod_pais			numeric (3, 0)  NOT NULL ,
  uf				char    (3)     NOT NULL ,
  telefone          varchar (15)    NOT NULL ,
  email             varchar (30)         NULL ,
  cpf               char    (14)    NOT NULL ,
  obs               varchar (72)        NULL ,
  CONSTRAINT PK_G01_P02_CLIENTES PRIMARY KEY CLUSTERED 
   (codigo  asc)
   WITH
    FILLFACTOR = 10,
  CONSTRAINT CK_G01_P02_CLIENTES_codigo CHECK
   (codigo between 1 and 250),

   CONSTRAINT FK_G01_P02_CLIENTES_cidade FOREIGN KEY (cod_pais, uf, cidade)
   References G01_P01_CIDADES (cod_pais, uf,cidade)
  
);