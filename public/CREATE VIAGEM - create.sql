USE LBDT_G01;

If  exists 
 (Select *
   From  sys.check_constraints
   Where object_id  =  OBJECT_ID(N'dbo.CK_G01_P02_VIAGEM') 
     and parent_object_id = OBJECT_ID(N'dbo.G01_P02_VIAGEM'))
   ALTER TABLE  dbo.G01_P02_VIAGEM
      DROP CONSTRAINT CK_G01_P02_VIAGEM;
IF  EXISTS
  (select *
    From  sys.objects
    Where object_id = OBJECT_ID(N'dbo.G01_P02_VIAGEM') 
      and type in (N'U'))
   DROP TABLE dbo.G01_P02_VIAGEM;

CREATE TABLE dbo.G01_P02_VIAGEM (
  codigo_pedagio numeric (3,0) NOT NULL,
  id_viagem numeric (3,0) NOT NULL,
  cod_motorista numeric (3,0) NOT NULL,
  codigo_ficha numeric (3,0) NOT NULL,
  codigo            numeric (3, 0)  NOT NULL ,
  data_Autorizacao     char    (10)    Not Null ,
  valor_viagem char (10) NOT NULL,
  cidade			char (45)    NOT NULL ,
  uf                char    (3)     NOT NULL ,
  cod_pais			numeric (3, 0)  NOT NULL ,
  

  CONSTRAINT PK_G01_P02_VIAGEM PRIMARY KEY CLUSTERED 
   (cod_motorista, codigo_ficha asc, codigo  asc, id_viagem asc)

   WITH
    FILLFACTOR = 10,

/*
   CONSTRAINT FK_G01_P02_VIAGEM FOREIGN KEY (cod_motorista, codigo, cod_pais, uf,cidade )
   References G01_P02_FICHA_CADASTRAL (cod_motorista, codigo, cod_pais, uf,cidade ),
   
   CONSTRAINT FK_G01_P02_VIAGEM FOREIGN KEY (codigo_pedagio)
   References dbo.G01_P02_PEDAGIOS (codigo)*/
);