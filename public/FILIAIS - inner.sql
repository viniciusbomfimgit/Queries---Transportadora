USE LBDT_G01


SELECT a.codigo  AS C�digo_Pa�s ,a.nome AS Nome_Pa�s,b.codigo AS C�digo_Filial

FROM  G01_P01_PAISES a
INNER JOIN G01_P02_FILIAIS b  ON a.codigo = b.cod_pais 