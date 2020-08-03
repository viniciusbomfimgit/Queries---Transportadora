USE LBDT_G01;

If  exists 
 (Select *
   From  sys.check_constraints
   Where object_id  =  OBJECT_ID(N'dbo.CK_G01_P02_AUTORIZACOES') 
     and parent_object_id = OBJECT_ID(N'dbo.G01_P02_AUTORIZACOES'))
   ALTER TABLE  dbo.G01_P02_AUTORIZACOES
      DROP CONSTRAINT CK_G01_P02_AUTORIZACOES;
IF  EXISTS
  (select *
    From  sys.objects
    Where object_id = OBJECT_ID(N'dbo.G01_P02_AUTORIZACOES') 
      and type in (N'U'))
   DROP TABLE dbo.G01_P02_AUTORIZACOES;

CREATE TABLE dbo.G01_P02_AUTORIZACOES (
  codigo            numeric (3, 0)  NOT NULL ,
  cod_funcionario_supervisor      numeric (3, 0)  NOT NULL ,
  data_Autorizacao     char    (10)    Not Null ,
  hora_Autorizacao     char    (10)    Not Null ,
  local_Autorizacao     char    (30)    Not Null ,

  CONSTRAINT PK_G01_P02_AUTORIZACOES PRIMARY KEY CLUSTERED 
   (codigo  asc)
   WITH
    FILLFACTOR = 10,

  CONSTRAINT FK_G01_P02_AUTORIZACOES_funcionario_supervisor FOREIGN KEY (cod_funcionario_supervisor)
   References dbo.G01_P02_FUNCIONARIOS_SUPERVISOR (codigo)
);