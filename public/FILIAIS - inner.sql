USE LBDT_G01


SELECT a.codigo  AS Código_País ,a.nome AS Nome_País,b.codigo AS Código_Filial

FROM  G01_P01_PAISES a
INNER JOIN G01_P02_FILIAIS b  ON a.codigo = b.cod_pais 