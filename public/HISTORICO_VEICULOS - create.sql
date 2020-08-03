USE LBDT_G01;

If  exists 
 (Select *
   From  sys.check_constraints
   Where object_id  =  OBJECT_ID(N'dbo.CK_G01_P02_HISTORICO_VEICULOS') 
     and parent_object_id = OBJECT_ID(N'dbo.G01_P02_HISTORICO_VEICULOS'))
   ALTER TABLE  dbo.G01_P02_HISTORICO_VEICULOS
      DROP CONSTRAINT CK_G01_P02_HISTORICO_VEICULOS;
IF  EXISTS
  (select *
    From  sys.objects
    Where object_id = OBJECT_ID(N'dbo.G01_P02_HISTORICO_VEICULOS') 
      and type in (N'U'))
   DROP TABLE dbo.G01_P02_HISTORICO_VEICULOS;

/*
CREATE TABLE dbo.G01_P02_HISTORICO_VEICULOS (
  codigo            numeric (3, 0)  NOT NULL ,
  cod_veiculo      numeric (3, 0)  NOT NULL ,
  cod_oficina      numeric (3, 0)  NOT NULL ,
  
  Constraint PK_G01_P02_HISTORICO_VEICULOS Primary Key Clustered
   (codigo asc)
   WITH
    FILLFACTOR = 10,
*/

	CREATE TABLE dbo.G01_P02_HISTORICO_VEICULOS (
	codigo            numeric (3, 0)  NOT NULL PRIMARY KEY,
  cod_veiculo      numeric (3, 0)  NOT NULL ,
  cod_oficina      numeric (3, 0)  NOT NULL ,
  descrição_histórico              varchar (72)   NULL ,

   CONSTRAINT FK_G01_P02_HISTORICO_VEICULOS_cod_oficina FOREIGN KEY (cod_oficina)
   References G01_P02_OFICINAS (codigo),

	CONSTRAINT fk_cod_veiculo FOREIGN KEY (cod_veiculo)
	REFERENCES G01_P02_VEICULOS(codigo)
	ON DELETE CASCADE
	ON UPDATE CASCADE
	 /*CONSTRAINT FK_G01_P02_HISTORICO_VEICULOS_cod_veiculo FOREIGN KEY (cod_veiculo)
   References G01_P02_VEICULOS (codigo),*/

 );

 
 

  
   