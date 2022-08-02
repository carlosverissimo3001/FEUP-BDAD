PRAGMA foreign_keys = on;
.mode columns
.headers on
.nullvalue	NULL

-- Quais são os vídeos que foram adicionados a listas de reprodução com o estado "Publico"
-- 8

SELECT  Titulo as "Título", Id_Lista as "Lista nº", DataAdicao as "Data em que foi adicionado"
FROM    (VIDEO JOIN INFOVIDEOLISTA USING(ID_VIDEO)) join LISTADEREPRODUCAO USING (Id_Lista)
WHERE   LISTADEREPRODUCAO.Estado = "Pública" 