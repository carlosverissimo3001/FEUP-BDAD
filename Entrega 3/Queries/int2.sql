PRAGMA foreign_keys = on;
.mode columns
.headers on
.nullvalue	NULL

-- Qual a média de visualizações e o número total de vídeos por categoria? (Ordenar por média de visualizações arrendondada ás unidades)
-- 2

SELECT GeneroPrincipal as "Categoria", Count(*) "Total de Vídeos", ROUND(AVG(NumVisualizacoes), 0) as "Média de Visualizações"
from VIDEO
group by GeneroPrincipal
order by "Média de Visualizações" desc, GeneroPrincipal desc;