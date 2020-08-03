USE LBDT_G01;

If  exists 
 (Select *
   From  sys.check_constraints
   Where object_id  =  OBJECT_ID(N'dbo.CK_G01_P02_FICHAS_MEDICAS') 
     and parent_object_id = OBJECT_ID(N'dbo.G01_P02_FICHAS_MEDICAS'))
   ALTER TABLE  dbo.G01_P02_FICHAS_MEDICAS
      DROP CONSTRAINT CK_G01_P02_FICHAS_MEDICAS;
IF  EXISTS
  (select *
    From  sys.objects
    Where object_id = OBJECT_ID(N'dbo.G01_P02_FICHAS_MEDICAS') 
      and type in (N'U'))
   DROP TABLE dbo.G01_P02_FICHAS_MEDICAS;

CREATE TABLE dbo.G01_P02_FICHAS_MEDICAS (
  cod_motorista numeric (3,0) NOT NULL,
  codigo_ficha numeric (3,0) NOT NULL,
  codigo            numeric (3, 0)  NOT NULL ,
  data_Autorizacao     char    (10)    Not Null ,
  sexo				    char   (1)     Not Null,
  naturalidade           char  (30)    Not Null,
  ultima_atualizacao     char (255)     Not Null,
  cidade			char (45)    NOT NULL ,
  uf                char    (3)     NOT NULL ,
  cod_pais			numeric (3, 0)  NOT NULL ,
  

  CONSTRAINT PK_G01_P02_FICHAS_MEDICAS PRIMARY KEY CLUSTERED 
   (cod_motorista, codigo_ficha asc, codigo  asc)
   WITH
    FILLFACTOR = 10,


   CONSTRAINT FK_G01_P02_FICHAS_MEDICAS FOREIGN KEY (cod_motorista, codigo, cod_pais, uf,cidade )
   References G01_P02_FICHA_CADASTRAL (cod_motorista, codigo, cod_pais, uf,cidade )
   
);