PRAGMA foreign_keys = on;
.mode columns
.headers on
.nullvalue	NULL

-- Quais são os utilizadores que assistiram, por completo, ao vídeo mais visualizado da plataforma?
-- 6

-- VIEW QUE CONTÉM O ID E A DURAÇÃO DO VIDEO MAIS LONGO
CREATE VIEW Video_View AS
SELECT Id_Video as "IDV", Duracao as "Length"
FROM VIDEO 
WHERE video.Duracao =
(
    SELECT MAX(VIDEO.Duracao) 
    FROM VIDEO
);

-- VIEW QUE CONTÉM OS USERS QUE ASSISTIRAM POR COMPLETO AO VIDEO MAIS LONGO
CREATE VIEW User_View AS
SELECT Id_Pessoa as "ID"
FROM   VISUALIZACAO, Video_View
WHERE  VISUALIZACAO.Id_Video = IDV and VISUALIZACAO.TempoDeVisualizacao = Length;


-- CASO EM QUE SÃO USERS IDENTIFICADOS
SELECT NomeCanal as "Nome", Length as "Tempo de Visualização"
from   USERIDENTIFICADO, User_View, Video_View
WHERE  USERIDENTIFICADO.LogUser_Id = ID

UNION

SELECT NotLogUser_Id as "Nome", Length as "Tempo de Visualização"
from   USERNAOIDENTIFICADO, User_View, Video_View
WHERE  USERNAOIDENTIFICADO.NotLogUser_Id = ID;

DROP VIEW Video_View;
DROP VIEW User_View;