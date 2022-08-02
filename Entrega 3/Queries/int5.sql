PRAGMA foreign_keys = on;
.mode columns
.headers on
.nullvalue	NULL

-- Quais os vídeos que estão nas tendências em Portugal?
-- 5

SELECT Titulo as "Título", GeneroPrincipal as "Categoria", Posicao as "Posição"
from Video join VIDEOTENDENCIA using (Id_Video)
where Id_Pais in
(
    Select Id_Pais
    from PAIS
    where nome = "Portugal"
);