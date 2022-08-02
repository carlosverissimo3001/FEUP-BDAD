PRAGMA foreign_keys = on;
.mode columns
.headers on
.nullvalue	NULL

-- Quais são os utilizadores que não escreveram nenhum comentário. 
-- 4

SELECT LogUser_Id as "ID",  NomeCanal as "User" 
from USERIDENTIFICADO 
where LogUser_Id not in
(
    SELECT LogUser_Id 
    from USERIDENTIFICADO join COMENTARIO using (LogUser_Id)
)  
order by "ID" asc;

