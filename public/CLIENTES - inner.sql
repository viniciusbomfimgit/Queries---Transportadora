USE LBDT_G01
/*
SELECT a.codigo  AS C�digo,a.tempo_motorista AS Tempo, a.obs AS Observa��o,
b.nome AS Nome,b.logradouro AS Logradouro,b.email AS Email,b.cpf 
AS CPF,b.sexo AS Sexo FROM 
G01_P02_MOTORISTA_PRIMARIO a
INNER JOIN G01_P02_CLIENTES b ON 
a.codigo=b.cod_motorista_primario 
*/

SELECT a.codigo  AS C�digo,a.nome AS Nome,a.logradouro AS Logradouro,
d.uf AS Estado, e.cidade AS Cidade, c.nome AS Pa�s, a.email AS Email,
a.cpf AS CPF, a.obs AS Observa��o

FROM  G01_P02_CLIENTES a
INNER JOIN 
 G01_P01_PAISES c
 ON 
c.codigo = a.cod_pais 

INNER JOIN

G01_P01_UF d
 ON 
d.uf = a.uf 

INNER JOIN

G01_P01_CIDADES e
 ON 
e.cidade = a.cidade 





