PRAGMA foreign_keys = on;
.mode columns
.headers on
.nullvalue	NULL

-- Quais os comentários do vídeo com upload mais recente.
-- 7

SELECT NomeCanal as "User", String as "Comentário", Titulo as "Título", DataPublicacao as "Data de Upload"
FROM   ((USERIDENTIFICADO join COMENTARIO using (LogUser_Id)) join VIDEO using (Id_Video)) join CRIADOR C1 using (Id_Video)
WHERE  not EXISTS
(
    SELECT * FROM CRIADOR C2
    WHERE C2.DataPublicacao > C1.DataPublicacao
);