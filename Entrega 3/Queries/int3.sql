PRAGMA foreign_keys = on;
.mode columns
.headers on
.nullvalue	NULL

-- Qual o criador do vídeo com upload este ano (2021) que tem mais do que 10 visualizações?
-- 3

SELECT NomeCanal as "Criador"
from USERIDENTIFICADO 
where LogUser_Id in
(
    SELECT LogUser_Id
    from (VIDEO join CRIADOR using(Id_Video)) 
    where NumVisualizacoes > 10 AND strftime('%Y', DataPublicacao) = '2021'
);

