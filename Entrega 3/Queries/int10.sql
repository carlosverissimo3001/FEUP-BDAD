PRAGMA foreign_keys = on;
.mode columns
.headers on
.nullvalue	NULL

-- TOP3 DE VIDEOS VISUALIZADOS POR PAIS
-- 10

CREATE VIEW Aux_View as 
SELECT PAIS.Nome as "Nome", VIDEO.Titulo as "Titulo", COUNT(*) as "# de visualizações", row_number() over (partition by PAIS.Nome order by PAIS.Nome, "# de visualizações" desc) as help
from VIDEO join VISUALIZACAO using (Id_Video) join PESSOA USING (Id_Pessoa) join PAIS using (Id_Pais)
WHERE Id_Pais in
(
    SELECT Id_Pais
    FROM PAIS
) 
GROUP BY Id_Pais, Id_Video;
    
SELECT "Nome", "Titulo", "# de visualizações"
from Aux_View
where help <= 3
order by Nome, "# de visualizações" desc;



DROP VIEW Aux_View;