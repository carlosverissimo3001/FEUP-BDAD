PRAGMA foreign_keys = on;
.mode columns
.headers on
.nullvalue NULL

-- Apresentar as estatísticas de todos os users.
-- (nºde subscritores, nº de vídeos carregados, nºde comentários feitos, nºde likes “feitos”, nºde dislikes “feitos”)  (VIEWS) 
-- 9

-----------------------------------------------
-- Devolve os users
CREATE VIEW User_View AS
SELECT      LogUser_Id as "ID_VIEW", NomeCanal as "Nome", PAIS.NOME as "País"
FROM        USERIDENTIFICADO join PESSOA on LogUser_Id = Id_Pessoa join PAIS using (Id_Pais);
--WHERE       NumSubscritores < 3;
-----------------------------------------------

-- Devolve o # de subscritores por user
CREATE VIEW Sub_View AS
SELECT      ID_VIEW, NumSubscritores as "Subscritores"
FROM        User_View, USERIDENTIFICADO
WHERE       ID_VIEW = USERIDENTIFICADO.LogUser_Id
GROUP BY    ID_VIEW;

-- Devolve o # de videos carregados por user
CREATE VIEW Upload_View AS
SELECT      ID_VIEW, COUNT(CRIADOR.LogUser_Id) AS "Uploads"
FROM        User_View LEFT JOIN CRIADOR ON ID_VIEW = CRIADOR.LogUser_Id
GROUP BY    ID_VIEW;

-- Devolve o # de comentários escritos por user
CREATE VIEW Comment_View AS
SELECT      ID_VIEW, COUNT(COMENTARIO.LogUser_Id) AS "Comentários"
FROM        User_View LEFT JOIN COMENTARIO ON ID_VIEW = COMENTARIO.LogUser_Id
GROUP BY    ID_VIEW;

-- Devolve o # de likes dados por user
CREATE VIEW Like_View AS
SELECT      ID_VIEW, COUNT(CLASSIFICACAO.LogUser_Id) AS "Likes"
FROM        User_View LEFT JOIN CLASSIFICACAO ON ID_VIEW = CLASSIFICACAO.LogUser_Id and CLASSIFICACAO.Tipo = "Like"
GROUP BY    ID_VIEW;

-- Devolve o # de Dislikes dados por user
CREATE VIEW Dislike_View AS
SELECT      ID_VIEW, COUNT(CLASSIFICACAO.LogUser_Id) AS "Dislikes"
FROM        User_View LEFT JOIN CLASSIFICACAO ON ID_VIEW = CLASSIFICACAO.LogUser_Id and CLASSIFICACAO.Tipo = "Dislike"
GROUP BY    ID_VIEW;

-- Devolve o # de Visualizacoes por user
CREATE VIEW View_View AS
SELECT      Id_Pessoa as "ID_VIEW", COUNT(VISUALIZACAO.Id_Pessoa) AS "Visualizações"
FROM        User_View LEFT JOIN VISUALIZACAO ON ID_VIEW = VISUALIZACAO.Id_Pessoa
GROUP BY    Id_Pessoa;


SELECT  ID_VIEW as "USER #", Nome, País, Subscritores, Uploads, Comentários, Likes, Dislikes, Visualizações
FROM    User_View 
        join Sub_View using (ID_VIEW)
        join Upload_View using (ID_VIEW) 
        join Comment_View using (ID_VIEW) 
        join Like_View using (ID_VIEW) 
        join Dislike_View using (ID_VIEW) 
        join View_View using (ID_VIEW)
GROUP BY ID_VIEW;


DROP VIEW User_View;
DROP VIEW Sub_View;
DROP VIEW Upload_View;
DROP VIEW Comment_View;
DROP VIEW Like_View;
DROP VIEW Dislike_View;
DROP VIEW View_View;