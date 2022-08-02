.mode	columns
.headers	on
.nullvalue	NULL

SELECT * FROM PESSOA;

INSERT INTO USERIDENTIFICADO(LogUser_Id, Ip, NomeCanal, Password, EmailAssociado, NumSubscritores) VALUES (30, '184.41.777.177', 'Dude Perfect', '8&35pRNc##?o  wiqhef', 'dude.perfect@besttricks.com', 4);   

SELECT * FROM USERIDENTIFICADO WHERE LogUser_Id = 30;
SELECT * FROM PESSOA;