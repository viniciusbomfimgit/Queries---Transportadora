USE LBDT_G01;

If  exists 
 (Select *
   From  sys.check_constraints
   Where object_id  =  OBJECT_ID(N'dbo.CK_G01_P02_FILIAIS') 
     and parent_object_id = OBJECT_ID(N'dbo.G01_P02_FILIAIS'))
   ALTER TABLE  dbo.G01_P02_FILIAIS
      DROP CONSTRAINT CK_G01_P02_FILIAIS;
IF  EXISTS
  (select *
    From  sys.objects
    Where object_id = OBJECT_ID(N'dbo.G01_P02_FILIAIS') 
      and type in (N'U'))
   DROP TABLE dbo.G01_P02_FILIAIS;

/*CREATE TABLE dbo.G01_P02_FILIAIS (
  codigo            numeric (3, 0)  NOT NULL ,
  cod_pais       numeric (3, 0)  NOT NULL ,

  CONSTRAINT PK_G01_P02_FILIAIS PRIMARY KEY CLUSTERED 
   (codigo  asc)
   WITH
    FILLFACTOR = 10,

  CONSTRAINT FK_G01_P02_FILIAIS_cod_pais FOREIGN KEY (cod_pais)
   References dbo.G01_P01_PAISES (codigo)
);
*/

CREATE TABLE dbo.G01_P02_FILIAIS (
 codigo    numeric (3, 0)  NOT NULL  PRIMARY KEY,
 cod_pais numeric (3, 0)  NOT NULL,
 CONSTRAINT fk_cod_pais FOREIGN KEY (cod_pais)
 REFERENCES G01_P01_PAISES(codigo)
 ON DELETE CASCADE
 ON UPDATE CASCADE
);