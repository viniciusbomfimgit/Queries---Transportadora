USE LBDT_G01;

If  exists 
 (Select *
   From  sys.check_constraints
   Where object_id  =  OBJECT_ID(N'dbo.CK_G01_P02_FICHA_CADASTRAL') 
     and parent_object_id = OBJECT_ID(N'dbo.G01_P02_FICHA_CADASTRAL'))
   ALTER TABLE  dbo.G01_P02_FICHA_CADASTRAL
      DROP CONSTRAINT CK_G01_P02_FICHA_CADASTRAL;
IF  EXISTS
  (select *
    From  sys.objects
    Where object_id = OBJECT_ID(N'dbo.G01_P02_FICHA_CADASTRAL') 
      and type in (N'U'))
   DROP TABLE dbo.G01_P02_FICHA_CADASTRAL;

CREATE TABLE dbo.G01_P02_FICHA_CADASTRAL (
  cod_motorista     numeric (3, 0)  NOT NULL ,
  codigo            numeric (3, 0)  NOT NULL ,
  nome              varchar (50)    NOT NULL ,
  logradouro        varchar (75)    NOT NULL ,
  cidade			char (45)    NOT NULL ,
  uf                char    (3)     NOT NULL ,
  cod_pais			numeric (3, 0)  NOT NULL ,
  telefone          varchar (15)    NOT NULL ,
  email             varchar (30)         NULL ,
  cpf               char    (14)    NOT NULL ,
  sexo				char    (1)     NOT NULL,
  data_comem		char    (10)    NOT NUll ,
  naturalidade      varchar (30)    NOT NULL,
  obs               varchar (72)        NULL ,

  CONSTRAINT PK_G01_P02_FICHA_CADASTRAL PRIMARY KEY CLUSTERED 
   (cod_motorista asc, codigo asc, cod_pais asc, uf asc,cidade asc)
   WITH
    FILLFACTOR = 10,
  CONSTRAINT CK_G01_P02_FICHA_CADASTRAL_codigo CHECK
   (cod_motorista between 1 and 250),

  CONSTRAINT FK_G01_P02_FICHA_CADASTRAL_cod_motorista FOREIGN KEY (cod_motorista)
   References dbo.G01_P02_MOTORISTA (codigo),
 

    CONSTRAINT FK_G01_P02_FICHA_CADASTRAL_cidade FOREIGN KEY (cod_pais, uf, cidade)
   References G01_P01_CIDADES (cod_pais, uf,cidade)
);