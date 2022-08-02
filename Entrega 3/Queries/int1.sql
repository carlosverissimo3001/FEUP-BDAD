PRAGMA foreign_keys = on;
.mode columns
.headers on
.nullvalue	NULL

-- Quais os utilizadores que fizeram upload de vídeos com duração superior 
-- a cinco minutos e cujo gênero principal/categoria é ‘Entertainment’? 
-- (Apresentar duração do vídeo no formato hh:mm:ss).
-- 1

SELECT titulo as "Título", NomeCanal as "Criador", time(Duracao,'unixepoch') as "Duração (hh:mm:ss)"
from VIDEO, USERIDENTIFICADO, CRIADOR
where Duracao > 600 AND CRIADOR.LogUser_Id = USERIDENTIFICADO.LogUser_Id AND VIDEO.Id_Video = CRIADOR.Id_Video and GeneroPrincipal == "Entertainment"



-- Disclaimer:
-- Code for hours and minutes was taken from
-- https://stackoverflow.com/questions/2685956/how-would-you-convert-secs-to-hhmmss-format-in-sqlite
