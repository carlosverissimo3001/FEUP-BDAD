PRAGMA foreign_keys=ON;

--------------------PAIS-------------------------

INSERT INTO PAIS VALUES (1, 'Portugal');
INSERT INTO PAIS VALUES (2, 'United States');
INSERT INTO PAIS VALUES (3, 'Brazil');
INSERT INTO PAIS VALUES (4, 'United Kingdoom');
INSERT INTO PAIS VALUES (5, 'Spain');
INSERT INTO PAIS VALUES (6, 'France');
INSERT INTO PAIS VALUES (7, 'Australia');
INSERT INTO PAIS VALUES (8, 'Italy');
INSERT INTO PAIS VALUES (9, 'Germany');
INSERT INTO PAIS VALUES (10, 'Canada');


--------------------PESSOA-------------------------

INSERT INTO PESSOA(Id_Pessoa, Ip, Id_Pais) VALUES (1, '152.78.204.183', 2);
INSERT INTO PESSOA(Id_Pessoa, Id_Pais) VALUES (2, 1);
INSERT INTO PESSOA(Id_Pessoa, Ip, Id_Pais) VALUES (3, '79.42.181.219', 2);
INSERT INTO PESSOA(Id_Pessoa, TipoDispositivo, Id_Pais) VALUES (4, 'Tablet Android', 10);
INSERT INTO PESSOA(Id_Pessoa, TipoDispositivo, Id_Pais) VALUES (5, 'Computador Ios', 6);
INSERT INTO PESSOA VALUES (6, '250.62.149.132', 'Computador Windows', 1);
INSERT INTO PESSOA(Id_Pessoa, Ip, Id_Pais) VALUES (7, '173.92.220.86', 6);
INSERT INTO PESSOA VALUES (8, '217.72.241.180', 'Tablet Android', 4);
INSERT INTO PESSOA VALUES (9, '245.126.98.79', 'Smartphone Android', 2);
INSERT INTO PESSOA(Id_Pessoa, Ip, Id_Pais) VALUES (10, '184.41.220.177', 10);

INSERT INTO PESSOA VALUES (11, '162.104.21.219', 'Computador Windows', 6);
INSERT INTO PESSOA(Id_Pessoa, Ip, Id_Pais) VALUES (12, '41.44.37.30', 8);
INSERT INTO PESSOA VALUES (13, '102.250.238.21', 'Tablet Android', 9);
INSERT INTO PESSOA(Id_Pessoa, TipoDispositivo, Id_Pais) VALUES (14, 'Tablet Ios', 10);
INSERT INTO PESSOA VALUES (15, '238.37.25.158', 'Tablet Ios', 3);  


--------------------USERIDENTIFICADO-------------------------

INSERT INTO USERIDENTIFICADO(LogUser_Id, Ip, NomeCanal, Password, EmailAssociado, DataCriacao, NumSubscritores) VALUES(1, '152.78.204.183', 'FunnyVids', '09OP56473', '123@gmail.com', "2014-05-05", 2);
INSERT INTO USERIDENTIFICADO(LogUser_Id, NomeCanal, Password, EmailAssociado, DataCriacao, NumSubscritores) VALUES(2, 'SchoolAcademy', '15469785695A', '234@gmail.com', "2017-12-05", 2);
INSERT INTO USERIDENTIFICADO(LogUser_Id, Ip, NomeCanal, Password, EmailAssociado, DataCriacao, NumSubscritores) VALUES(3, '79.42.181.219', 'Pewdiepie', '54teydbwu762', 'pewds@gmail.com', "2010-04-29", 3);
INSERT INTO USERIDENTIFICADO(LogUser_Id, TipoDispositivo, NomeCanal, Password, EmailAssociado, DataCriacao, NumSubscritores) VALUES(4, 'Tablet Android', 'NatureVids', 'ajsfbf8673', '345@gmail.com', "2017-06-08", 2);
INSERT INTO USERIDENTIFICADO(LogUser_Id, TipoDispositivo, NomeCanal, Password, DataCriacao, NumSubscritores) VALUES (5, 'Computador Ios', 'MrBeast', 'mVjz9SM9P*^UAtF$', '2014/04/03', 9);
INSERT INTO USERIDENTIFICADO VALUES (6, '250.62.149.132', 'Computador Windows', 'RicFazeres', 'ZBRg#TBf7^J=8rSV', 'aehabhoba449l@laldo.com', '2006/17/05', 1);
INSERT INTO USERIDENTIFICADO(LogUser_Id, Ip, NomeCanal, Password, EmailAssociado, DataCriacao, NumSubscritores) VALUES (7, '173.92.220.86', 'Unbox Therapy', 'nV4puxC*hw5xDPaK', 'jedward.afm@findoasis.com', '2011/16/05', 4);
INSERT INTO USERIDENTIFICADO(LogUser_Id, Ip, TipoDispositivo, NomeCanal, Password, EmailAssociado,  NumSubscritores) VALUES (8, '217.72.241.180', 'Tablet Android', 'Sidemen','n#L8xmbFu*8Q*GS^', 'goldhamboxingpdcf@oanghika.com', 8);
INSERT INTO USERIDENTIFICADO VALUES (9, '245.126.98.79', 'Smartphone Android', 'Marques Brownlee', '5pLWtt?yK=d$^BRP', 'iste@pesssink.com', '2011/16/05', 7);
INSERT INTO USERIDENTIFICADO(LogUser_Id, Ip, NomeCanal, Password, EmailAssociado, NumSubscritores) VALUES (10, '184.41.220.177', 'Vox', '8&35pRNc##?M2Xph', 'fhemdi.ali.10r@shirtsthatshouldexist.com', 4);   


--------------------USERNAOIDENTIFICADO-------------------------

INSERT INTO USERNAOIDENTIFICADO VALUES (11, '162.104.21.219', 'Computador Windows');
INSERT INTO USERNAOIDENTIFICADO(NotLogUser_Id, Ip) VALUES (12, '41.44.37.30');
INSERT INTO USERNAOIDENTIFICADO VALUES (13, '102.250.238.21', 'Tablet Android');
INSERT INTO USERNAOIDENTIFICADO(NotLogUser_Id, TipoDispositivo) VALUES (14, 'Tablet Ios');
INSERT INTO USERNAOIDENTIFICADO VALUES (15, '238.37.25.158', 'Tablet Ios');  


--------------------VIDEO---------------------------------------

INSERT INTO VIDEO(Id_Video, Link, Titulo, GeneroPrincipal, NumVisualizacoes , NumLikes, NumDislikes, NumComentarios, NumPartilhas, Duracao) VALUES(1, 'https://platfo.rm/egh-cpostjg', 'Basic python', 'Learning', 0, 2, 1, 2, 3, 320);
INSERT INTO VIDEO(Id_Video, Link, Titulo, GeneroPrincipal, NumVisualizacoes , NumLikes, NumDislikes, NumComentarios, NumPartilhas, Duracao) VALUES(2, 'https://platfo.rm/3tgyoiekrsv', 'Helloworld java', 'Learning', 8, 2, 1, 0, 2, 1563);
INSERT INTO VIDEO(Id_Video, Link, Titulo, GeneroPrincipal, NumVisualizacoes , NumLikes, NumDislikes, NumComentarios, NumPartilhas, Duracao) VALUES(3, 'https://platfo.rm/fup98y4uihv', 'Best pranks of the decade', 'Entertainment', 0, 3, 4, 0, 0, 164);
INSERT INTO VIDEO(Id_Video, Link, Titulo, GeneroPrincipal, NumVisualizacoes , NumLikes, NumDislikes, NumComentarios, NumPartilhas, Duracao) VALUES(4, 'https://platfo.rm/pqflenfi7t3', 'Try not to laugh challenge', 'Entertainment', 0, 2, 0, 0, 0, 4856);
INSERT INTO VIDEO(Id_Video, Link, Titulo, GeneroPrincipal, NumVisualizacoes , NumLikes, NumDislikes, NumComentarios, NumPartilhas, Duracao) VALUES(5, 'https://platfo.rm/fepwih@pifb', 'Aerial view of Oporto', 'Nature', 4, 2, 1, 2, 1, 478);
INSERT INTO VIDEO(Id_Video, Link, Titulo, GeneroPrincipal, NumVisualizacoes , NumLikes, NumDislikes, NumComentarios, NumPartilhas, Duracao) VALUES(6, 'https://platfo.rm/epofwuadvfh', 'Awesome game', 'Gaming', 0, 2, 1, 0, 3, 1456);
INSERT INTO VIDEO(Id_Video, Link, Titulo, GeneroPrincipal, NumVisualizacoes , NumLikes, NumDislikes, NumComentarios, NumPartilhas, Duracao) VALUES(7, 'https://platfo.rm/qwefoiygi3s', 'The one vs the other', 'Gaming', 2, 2, 1, 2, 1, 2249);
INSERT INTO VIDEO VALUES (8, 'https://platfo.rm/9bqk6ZUsKyA',  'I Spent 50 Hours Buried Alive', 'Entertainment', 15, 5, 0, 1, 1, 759);
INSERT INTO VIDEO VALUES (9, 'https://platfo.rm/c-c7KO2MaRE', 'GTA SAN ANDREAS | O INICIO EM HD (PORTUGUÊS/HD MOD)', 'Gaming', 3, 0, 0, 0, 0, 1315);
INSERT INTO VIDEO VALUES (10, 'https://platfo.rm/Mm27tNiOqdg', 'OnePlus 9 and OnePlus 9 Pro Unboxing...', 'Technology', 1, 0, 0, 0, 0, 593);
INSERT INTO VIDEO VALUES (11, 'https://platfo.rm/TP4VQTUbypM', 'The Best Mac I''ve Ever Reviewed!', 'Technology', 1, 0, 0, 0, 0, 540);
INSERT INTO VIDEO (Id_Video, Link, Titulo, NumVisualizacoes, NumLikes, NumDislikes, NumComentarios, NumPartilhas, Duracao) VALUES (12, 'https://platfo.rm/vGQQbulRUjY', '2020, in 7 minutes', 5, 1, 0, 1, 0, 402);
INSERT INTO VIDEO VALUES (13, 'https://platfo.rm/5NxKNrfqUjs', 'SIDEMEN $20,000 VS $200 HOLIDAY (EUROPE EDITION)', 'Entertainment', 15, 5, 1, 1, 1, 7993);


-------------COMENTARIO------------------------------------------

INSERT INTO COMENTARIO(Id_Coment, String, NumLikes, NumDislikes, Id_Video, LogUser_Id) VALUES(1, 'Don´t forget to subscribe!', 1, 1, 1, 1);
INSERT INTO COMENTARIO(Id_Coment, String, NumLikes, NumDislikes, Id_Video, LogUser_Id) VALUES(2, 'Nice video', 0, 0, 1, 2);
INSERT INTO COMENTARIO(Id_Coment, String, NumLikes, NumDislikes, Id_Video, LogUser_Id) VALUES(3, 'Cringe', 0, 0, 3, 4);
INSERT INTO COMENTARIO(Id_Coment, String, NumLikes, NumDislikes, Id_Video, LogUser_Id) VALUES(4, 'Interesting video', 0, 0, 3, 3);
INSERT INTO COMENTARIO(Id_Coment, String, NumLikes, NumDislikes, Id_Video, LogUser_Id) VALUES(5, 'very good', 0, 0, 7, 2);
INSERT INTO COMENTARIO(Id_Coment, String, NumLikes, NumDislikes, Id_Video, LogUser_Id) VALUES(6, 'another one', 1, 1, 5, 1);
INSERT INTO COMENTARIO(Id_Coment, String, NumLikes, NumDislikes, Id_Video, LogUser_Id) VALUES(7, 'ahahahahahah', 3, 1, 5, 1);
INSERT INTO COMENTARIO(Id_Coment, String, NumLikes, NumDislikes, Id_Video, LogUser_Id) VALUES(8, 'great match!!!!', 4, 0, 7, 1);
INSERT INTO COMENTARIO VALUES(9, 'Bro, you are crazy!', 1, 0, 8, 8); 
INSERT INTO COMENTARIO(Id_Coment, NumLikes, NumDislikes, Id_Video, LogUser_Id) VALUES(10, 0, 0, 12, 3);
INSERT INTO COMENTARIO VALUES(11, 'Poor Ethan', 1, 0, 13, 1); 


-------------LISTA DE REPRODUCAO---------------------------------

INSERT INTO LISTADEREPRODUCAO(Id_Lista, Nome, NumVideos, DuracaoTotal, Estado, LogUser_Id) VALUES(1, 'in the zone', 2, 484, 'Pública', 4);
INSERT INTO LISTADEREPRODUCAO(Id_Lista, Nome, NumVideos, DuracaoTotal, Estado, LogUser_Id) VALUES(2, 'to show later', 2, 6903, 'Privada', 4);
INSERT INTO LISTADEREPRODUCAO(Id_Lista, Nome, NumVideos, DuracaoTotal, Estado, LogUser_Id) VALUES(3, 'my favorite', 2, 1934, 'Privada', 3);
INSERT INTO LISTADEREPRODUCAO(Id_Lista, Nome, NumVideos, DuracaoTotal, Estado, LogUser_Id) VALUES(4, 'from me', 2, 3705, 'Privada', 2);
INSERT INTO LISTADEREPRODUCAO(Id_Lista, Nome, NumVideos, DuracaoTotal, Estado, LogUser_Id) VALUES(5, 'want to go there', 1, 320, 'Privada', 1);
INSERT INTO LISTADEREPRODUCAO(Id_Lista, Nome, NumVideos, DuracaoTotal, Estado, LogUser_Id) VALUES(6, 'from them', 1, 320, 'Pública', 2); 


-------------PARTILHA------------------------------------------

INSERT INTO PARTILHA(LogUser_Id, Id_Video, Local)VALUES(4, 5 , 'Twitter');
INSERT INTO PARTILHA(LogUser_Id, Id_Video, Local)VALUES(3, 1 , 'Tumblr');
INSERT INTO PARTILHA(LogUser_Id, Id_Video, Local)VALUES(2, 1 , 'Facebook');
INSERT INTO PARTILHA(LogUser_Id, Id_Video, Local)VALUES(1, 1 , 'Copy Link');
INSERT INTO PARTILHA(LogUser_Id, Id_Video, Local) VALUES(1, 2 , 'Reddit');
INSERT INTO PARTILHA(LogUser_Id, Id_Video) VALUES(2, 2);
INSERT INTO PARTILHA(LogUser_Id, Id_Video, Local) VALUES(3, 6 , 'Facebook');
INSERT INTO PARTILHA(LogUser_Id, Id_Video, Local) VALUES(4, 6 , 'LinkedIn');
INSERT INTO PARTILHA(LogUser_Id, Id_Video, Local) VALUES(2, 5 , 'Facebook');
INSERT INTO PARTILHA(LogUser_Id, Id_Video, Local) VALUES(1, 7 , 'Facebook');
INSERT INTO PARTILHA VALUES(1, 8, 'Facebook');
INSERT INTO PARTILHA(LogUser_Id, Id_Video) VALUES(4, 13);


-------------CLASSIFICACAO-----------------------------------------

INSERT INTO CLASSIFICACAO(LogUser_Id, Id_Video, Tipo) VALUES(1, 1, 'LIKE');
INSERT INTO CLASSIFICACAO(LogUser_Id, Id_Video, Tipo) VALUES(2, 1, 'LIKE');
INSERT INTO CLASSIFICACAO(LogUser_Id, Id_Video, Tipo) VALUES(2, 2, 'LIKE');
INSERT INTO CLASSIFICACAO(LogUser_Id, Id_Video, Tipo) VALUES(1, 2, 'LIKE');
INSERT INTO CLASSIFICACAO(LogUser_Id, Id_Video, Tipo) VALUES(1, 3, 'LIKE');
INSERT INTO CLASSIFICACAO(LogUser_Id, Id_Video, Tipo) VALUES(2, 3, 'LIKE');
INSERT INTO CLASSIFICACAO(LogUser_Id, Id_Video, Tipo) VALUES(3, 3, 'LIKE');
INSERT INTO CLASSIFICACAO(LogUser_Id, Id_Video, Tipo) VALUES(4, 3, 'LIKE');
INSERT INTO CLASSIFICACAO(LogUser_Id, Id_Video, Tipo) VALUES(3, 4, 'LIKE');
INSERT INTO CLASSIFICACAO(LogUser_Id, Id_Video, Tipo) VALUES(4, 4, 'LIKE');
INSERT INTO CLASSIFICACAO(LogUser_Id, Id_Video, Tipo) VALUES(1, 5, 'LIKE');
INSERT INTO CLASSIFICACAO(LogUser_Id, Id_Video, Tipo) VALUES(2, 5, 'LIKE');
INSERT INTO CLASSIFICACAO(LogUser_Id, Id_Video, Tipo) VALUES(1, 6, 'LIKE');
INSERT INTO CLASSIFICACAO(LogUser_Id, Id_Video, Tipo) VALUES(2, 6, 'LIKE');
INSERT INTO CLASSIFICACAO(LogUser_Id, Id_Video, Tipo) VALUES(1, 7, 'LIKE');
INSERT INTO CLASSIFICACAO(LogUser_Id, Id_Video, Tipo) VALUES(2, 7, 'LIKE');
INSERT INTO CLASSIFICACAO VALUES(1, 8, 'LIKE');
INSERT INTO CLASSIFICACAO VALUES(3, 8, 'LIKE');
INSERT INTO CLASSIFICACAO VALUES(6, 8, 'LIKE');
INSERT INTO CLASSIFICACAO VALUES(7, 8, 'LIKE');
INSERT INTO CLASSIFICACAO VALUES(9, 8, 'LIKE');
INSERT INTO CLASSIFICACAO VALUES(2, 13, 'LIKE');
INSERT INTO CLASSIFICACAO VALUES(6, 13, 'LIKE');
INSERT INTO CLASSIFICACAO VALUES(8, 13, 'LIKE');
INSERT INTO CLASSIFICACAO VALUES(9, 13, 'LIKE');
INSERT INTO CLASSIFICACAO VALUES(10, 13, 'LIKE');

INSERT INTO CLASSIFICACAO(LogUser_Id, Id_Video, Tipo) VALUES(3, 2, 'DISLIKE');
INSERT INTO CLASSIFICACAO(LogUser_Id, Id_Video, Tipo) VALUES(3, 5, 'DISLIKE');
INSERT INTO CLASSIFICACAO(LogUser_Id, Id_Video, Tipo) VALUES(3, 6, 'DISLIKE');
INSERT INTO CLASSIFICACAO(LogUser_Id, Id_Video, Tipo) VALUES(3, 1, 'DISLIKE');
INSERT INTO CLASSIFICACAO(LogUser_Id, Id_Video, Tipo) VALUES(3, 7, 'DISLIKE');
INSERT INTO CLASSIFICACAO VALUES(7, 13, 'DISLIKE');


-------------VISUALIZACAO-----------------------------------------

INSERT INTO VISUALIZACAO(Id_pessoa, Id_Video, TempoDeVisualizacao) VALUES(1, 2, 20);
INSERT INTO VISUALIZACAO(Id_pessoa, Id_Video, TempoDeVisualizacao) VALUES(5, 2, 20);
INSERT INTO VISUALIZACAO(Id_pessoa, Id_Video, TempoDeVisualizacao) VALUES(3, 2, 25);
INSERT INTO VISUALIZACAO(Id_pessoa, Id_Video, TempoDeVisualizacao) VALUES(9, 2, 25);
INSERT INTO VISUALIZACAO(Id_pessoa, Id_Video, TempoDeVisualizacao) VALUES(7, 2, 25);
INSERT INTO VISUALIZACAO(Id_pessoa, Id_Video, TempoDeVisualizacao) VALUES(8, 2, 20);
INSERT INTO VISUALIZACAO(Id_pessoa, Id_Video, TempoDeVisualizacao) VALUES(10, 2, 20);
INSERT INTO VISUALIZACAO(Id_pessoa, Id_Video, TempoDeVisualizacao) VALUES(11, 2, 25);
INSERT INTO VISUALIZACAO(Id_pessoa, Id_Video, TempoDeVisualizacao) VALUES(1, 5, 20);
INSERT INTO VISUALIZACAO(Id_pessoa, Id_Video, TempoDeVisualizacao) VALUES(3, 5, 25);
INSERT INTO VISUALIZACAO(Id_pessoa, Id_Video, TempoDeVisualizacao) VALUES(5, 5, 20);
INSERT INTO VISUALIZACAO(Id_pessoa, Id_Video, TempoDeVisualizacao) VALUES(7, 5, 25);
INSERT INTO VISUALIZACAO(Id_pessoa, Id_Video, TempoDeVisualizacao) VALUES(11, 7, 20);
INSERT INTO VISUALIZACAO(Id_pessoa, Id_Video, TempoDeVisualizacao) VALUES(10, 7, 25);
INSERT INTO VISUALIZACAO VALUES (1, 8, 759);
INSERT INTO VISUALIZACAO VALUES (2, 8, 759);
INSERT INTO VISUALIZACAO VALUES (3, 8, 759);
INSERT INTO VISUALIZACAO VALUES (4, 8, 759);
INSERT INTO VISUALIZACAO VALUES (5, 8, 759);
INSERT INTO VISUALIZACAO VALUES (6, 8, 759);
INSERT INTO VISUALIZACAO VALUES (7, 8, 759);
INSERT INTO VISUALIZACAO VALUES (8, 8, 759);
INSERT INTO VISUALIZACAO VALUES (9, 8, 759);
INSERT INTO VISUALIZACAO VALUES (10, 8, 759);
INSERT INTO VISUALIZACAO VALUES (11, 8, 758);
INSERT INTO VISUALIZACAO VALUES (12, 8, 752);
INSERT INTO VISUALIZACAO VALUES (13, 8, 732);
INSERT INTO VISUALIZACAO VALUES (14, 8, 723);
INSERT INTO VISUALIZACAO VALUES (15, 8, 53);
INSERT INTO VISUALIZACAO VALUES (3, 9, 1315);
INSERT INTO VISUALIZACAO VALUES (10, 9, 1315);
INSERT INTO VISUALIZACAO VALUES (11, 9, 1314);
INSERT INTO VISUALIZACAO VALUES (4, 10, 590);
INSERT INTO VISUALIZACAO VALUES (9, 11, 540);
INSERT INTO VISUALIZACAO VALUES (1, 12, 402);
INSERT INTO VISUALIZACAO VALUES (4, 12, 400);
INSERT INTO VISUALIZACAO VALUES (8, 12, 388);
INSERT INTO VISUALIZACAO VALUES (12, 12, 300);
INSERT INTO VISUALIZACAO VALUES (14, 12, 53);
INSERT INTO VISUALIZACAO VALUES (1, 13, 7985);
INSERT INTO VISUALIZACAO VALUES (2, 13, 7951);
INSERT INTO VISUALIZACAO VALUES (3, 13, 7912);
INSERT INTO VISUALIZACAO VALUES (4, 13, 7853);
INSERT INTO VISUALIZACAO VALUES (5, 13, 7849);
INSERT INTO VISUALIZACAO VALUES (6, 13, 7772);
INSERT INTO VISUALIZACAO VALUES (7, 13, 7651);
INSERT INTO VISUALIZACAO VALUES (8, 13, 5723);
INSERT INTO VISUALIZACAO VALUES (9, 13, 7582);
INSERT INTO VISUALIZACAO VALUES (10, 13, 7521);
INSERT INTO VISUALIZACAO VALUES (11, 13, 7492);
INSERT INTO VISUALIZACAO VALUES (12, 13, 7281);
INSERT INTO VISUALIZACAO VALUES (13, 13, 6892);
INSERT INTO VISUALIZACAO VALUES (14, 13, 6432);
INSERT INTO VISUALIZACAO VALUES (15, 13, 3453);

--------------------INFOVIDEOLISTA-----------------------

INSERT INTO INFOVIDEOLISTA(Id_Lista, Id_Video, DataAdição) VALUES(1, 1, "2019-05-09");
INSERT INTO INFOVIDEOLISTA(Id_Lista, Id_Video, DataAdição) VALUES(1, 3, "2018-06-09");
INSERT INTO INFOVIDEOLISTA(Id_Lista, Id_Video, DataAdição) VALUES(2, 1, "2017-05-09");
INSERT INTO INFOVIDEOLISTA(Id_Lista, Id_Video, DataAdição) VALUES(2, 2, "2018-06-09");
INSERT INTO INFOVIDEOLISTA(Id_Lista, Id_Video, DataAdição) VALUES(2, 3, "2016-05-09");
INSERT INTO INFOVIDEOLISTA(Id_Lista, Id_Video, DataAdição) VALUES(2, 4, "2018-11-09");
INSERT INTO INFOVIDEOLISTA(Id_Lista, Id_Video, DataAdição) VALUES(3, 5, "2019-05-09");
INSERT INTO INFOVIDEOLISTA(Id_Lista, Id_Video, DataAdição) VALUES(3, 6, "2018-06-09");
INSERT INTO INFOVIDEOLISTA(Id_Lista, Id_Video, DataAdição) VALUES(4, 6, "2019-05-09");
INSERT INTO INFOVIDEOLISTA(Id_Lista, Id_Video, DataAdição) VALUES(4, 7, "2018-06-09");
INSERT INTO INFOVIDEOLISTA(Id_Lista, Id_Video, DataAdição) VALUES(5, 1, "2020-05-09");
INSERT INTO INFOVIDEOLISTA(Id_Lista, Id_Video, DataAdição) VALUES(6, 1, "2020-06-09");


-------------------VIDEOTENDENCIA-------------------------

INSERT INTO VIDEOTENDENCIA(Id_Pais, Id_Video, Posicao) VALUES(1, 4, '1st');
INSERT INTO VIDEOTENDENCIA(Id_Pais, Id_Video, Posicao) VALUES(1, 7, '2nd');
INSERT INTO VIDEOTENDENCIA(Id_Pais, Id_Video, Posicao) VALUES(1, 8, '3rd');
INSERT INTO VIDEOTENDENCIA(Id_Pais, Id_Video, Posicao) VALUES(2, 4, '1st');
INSERT INTO VIDEOTENDENCIA(Id_Pais, Id_Video, Posicao) VALUES(2, 2, '2nd');
INSERT INTO VIDEOTENDENCIA(Id_Pais, Id_Video, Posicao) VALUES(2, 8, '3rd');
INSERT INTO VIDEOTENDENCIA(Id_Pais, Id_Video, Posicao) VALUES(3, 3, '1st');
INSERT INTO VIDEOTENDENCIA(Id_Pais, Id_Video, Posicao) VALUES(3, 5, '2nd');
INSERT INTO VIDEOTENDENCIA(Id_Pais, Id_Video, Posicao) VALUES(3, 6, '3rd');
INSERT INTO VIDEOTENDENCIA(Id_Pais, Id_Video, Posicao) VALUES(4, 5, '1st');
INSERT INTO VIDEOTENDENCIA(Id_Pais, Id_Video, Posicao) VALUES(4, 12, '2nd');
INSERT INTO VIDEOTENDENCIA(Id_Pais, Id_Video, Posicao) VALUES(4, 11, '3rd');
INSERT INTO VIDEOTENDENCIA(Id_Pais, Id_Video, Posicao) VALUES(5, 10, '1st');
INSERT INTO VIDEOTENDENCIA(Id_Pais, Id_Video, Posicao) VALUES(5, 9, '2nd');
INSERT INTO VIDEOTENDENCIA(Id_Pais, Id_Video, Posicao) VALUES(5, 4, '3rd');
INSERT INTO VIDEOTENDENCIA(Id_Pais, Id_Video, Posicao) VALUES(6, 4, '1st');
INSERT INTO VIDEOTENDENCIA(Id_Pais, Id_Video, Posicao) VALUES(6, 5, '2nd');
INSERT INTO VIDEOTENDENCIA(Id_Pais, Id_Video, Posicao) VALUES(6, 7, '3rd');
INSERT INTO VIDEOTENDENCIA(Id_Pais, Id_Video, Posicao) VALUES(7, 9, '1st');
INSERT INTO VIDEOTENDENCIA(Id_Pais, Id_Video, Posicao) VALUES(7, 10, '2nd');
INSERT INTO VIDEOTENDENCIA(Id_Pais, Id_Video, Posicao) VALUES(7, 12, '3rd');
INSERT INTO VIDEOTENDENCIA(Id_Pais, Id_Video, Posicao) VALUES(8, 4, '1st');
INSERT INTO VIDEOTENDENCIA(Id_Pais, Id_Video, Posicao) VALUES(8, 6, '2nd');
INSERT INTO VIDEOTENDENCIA(Id_Pais, Id_Video, Posicao) VALUES(8, 8, '3rd');
INSERT INTO VIDEOTENDENCIA(Id_Pais, Id_Video, Posicao) VALUES(9, 3, '1st');
INSERT INTO VIDEOTENDENCIA(Id_Pais, Id_Video, Posicao) VALUES(9, 6, '2nd');
INSERT INTO VIDEOTENDENCIA(Id_Pais, Id_Video, Posicao) VALUES(9, 8, '3rd');
INSERT INTO VIDEOTENDENCIA(Id_Pais, Id_Video, Posicao) VALUES(10, 4, '1st');
INSERT INTO VIDEOTENDENCIA(Id_Pais, Id_Video, Posicao) VALUES(10, 6, '2nd');
INSERT INTO VIDEOTENDENCIA(Id_Pais, Id_Video, Posicao) VALUES(10, 3, '3rd');


--------------------SUBSCRICAO---------------------------

INSERT INTO SUBSCRICAO(LogUser_Id1, LogUser_Id2, Tipo) VALUES(2, 3, 'Premium');
INSERT INTO SUBSCRICAO(LogUser_Id1, LogUser_Id2, Tipo) VALUES(3, 1, 'Premium');
INSERT INTO SUBSCRICAO(LogUser_Id1, LogUser_Id2, Tipo) VALUES(1, 3, 'Premium');
INSERT INTO SUBSCRICAO(LogUser_Id1, LogUser_Id2, Tipo) VALUES(1, 2, 'Basic');
INSERT INTO SUBSCRICAO(LogUser_Id1, LogUser_Id2, Tipo) VALUES(3, 2, 'Basic');
INSERT INTO SUBSCRICAO(LogUser_Id1, LogUser_Id2, Tipo) VALUES(4, 1, 'Basic');
INSERT INTO SUBSCRICAO(LogUser_Id1, LogUser_Id2, Tipo) VALUES(4, 3, 'Basic');
INSERT INTO SUBSCRICAO(LogUser_Id1, LogUser_Id2, Tipo) VALUES(1, 4, 'Basic');
INSERT INTO SUBSCRICAO(LogUser_Id1, LogUser_Id2, Tipo) VALUES(3, 4, 'Basic');
INSERT INTO SUBSCRICAO VALUES(1, 5, 'Basic');
INSERT INTO SUBSCRICAO VALUES(2, 5, 'Basic');
INSERT INTO SUBSCRICAO VALUES(3, 5, 'Basic');
INSERT INTO SUBSCRICAO VALUES(4, 5, 'Basic');
INSERT INTO SUBSCRICAO VALUES(5, 5, 'Basic');
INSERT INTO SUBSCRICAO VALUES(6, 5, 'Basic');
INSERT INTO SUBSCRICAO VALUES(7, 5, 'Basic');
INSERT INTO SUBSCRICAO VALUES(8, 5, 'Basic');
INSERT INTO SUBSCRICAO VALUES(9, 5, 'Basic');
INSERT INTO SUBSCRICAO VALUES(5, 6, 'Basic');
INSERT INTO SUBSCRICAO VALUES(3, 7, 'Basic');
INSERT INTO SUBSCRICAO VALUES(6, 7, 'Basic');
INSERT INTO SUBSCRICAO VALUES(8, 7, 'Basic');
INSERT INTO SUBSCRICAO VALUES(9, 7, 'Basic');
INSERT INTO SUBSCRICAO VALUES(1, 8, 'Basic');
INSERT INTO SUBSCRICAO VALUES(2, 8, 'Basic');
INSERT INTO SUBSCRICAO VALUES(3, 8, 'Basic');
INSERT INTO SUBSCRICAO VALUES(4, 8, 'Basic');
INSERT INTO SUBSCRICAO VALUES(5, 8, 'Basic');
INSERT INTO SUBSCRICAO VALUES(6, 8, 'Basic');
INSERT INTO SUBSCRICAO VALUES(7, 8, 'Basic');
INSERT INTO SUBSCRICAO VALUES(9, 8, 'Basic');
INSERT INTO SUBSCRICAO VALUES(2, 9, 'Basic');
INSERT INTO SUBSCRICAO VALUES(3, 9, 'Basic');
INSERT INTO SUBSCRICAO VALUES(4, 9, 'Basic');
INSERT INTO SUBSCRICAO VALUES(5, 9, 'Basic');
INSERT INTO SUBSCRICAO VALUES(6, 9, 'Basic');
INSERT INTO SUBSCRICAO VALUES(7, 9, 'Basic');
INSERT INTO SUBSCRICAO VALUES(8, 9, 'Basic');
INSERT INTO SUBSCRICAO VALUES(2, 10, 'Basic');
INSERT INTO SUBSCRICAO VALUES(3, 10, 'Basic');
INSERT INTO SUBSCRICAO VALUES(7, 10, 'Basic');
INSERT INTO SUBSCRICAO VALUES(8, 10, 'Basic');


--------------------CLASSIFICACAOCOMENT------------------

INSERT INTO CLASSIFICACAOCOMENT(LogUser_Id, Id_Coment, Tipo) VALUES(1, 8, 'Like');
INSERT INTO CLASSIFICACAOCOMENT(LogUser_Id, Id_Coment, Tipo) VALUES(2, 8, 'Like');
INSERT INTO CLASSIFICACAOCOMENT(LogUser_Id, Id_Coment, Tipo) VALUES(3, 8, 'Like');
INSERT INTO CLASSIFICACAOCOMENT(LogUser_Id, Id_Coment, Tipo) VALUES(4, 8, 'Like');
INSERT INTO CLASSIFICACAOCOMENT(LogUser_Id, Id_Coment, Tipo)VALUES(1, 7, 'Like');
INSERT INTO CLASSIFICACAOCOMENT(LogUser_Id, Id_Coment, Tipo) VALUES(2, 7, 'Like');
INSERT INTO CLASSIFICACAOCOMENT(LogUser_Id, Id_Coment, Tipo) VALUES(3, 7, 'Like');
INSERT INTO CLASSIFICACAOCOMENT(LogUser_Id, Id_Coment, Tipo) VALUES(3, 6, 'Like');
INSERT INTO CLASSIFICACAOCOMENT(LogUser_Id, Id_Coment, Tipo) VALUES(3, 1, 'Like');
INSERT INTO CLASSIFICACAOCOMENT(LogUser_Id, Id_Coment, Tipo)VALUES(4, 9, 'Like');
INSERT INTO CLASSIFICACAOCOMENT(LogUser_Id, Id_Coment, Tipo)VALUES(7, 11, 'Like');
INSERT INTO CLASSIFICACAOCOMENT(LogUser_Id, Id_Coment, Tipo) VALUES(4, 6, 'Dislike');
INSERT INTO CLASSIFICACAOCOMENT(LogUser_Id, Id_Coment, Tipo) VALUES(4, 7, 'Dislike');
INSERT INTO CLASSIFICACAOCOMENT(LogUser_Id, Id_Coment, Tipo) VALUES(4, 1, 'Dislike');


--------------------CRIADOR-------------------------------

INSERT INTO CRIADOR(DataCarregamento, DataPublicacao, TransmissaoDireto, Id_Video, LogUser_Id) VALUES("2019-05-13", "2019-05-13", 'Não', 1, 2);
INSERT INTO CRIADOR(DataCarregamento, DataPublicacao, TransmissaoDireto, Id_Video, LogUser_Id) VALUES("2018-05-13", "2018-05-15", 'Não', 2, 3);
INSERT INTO CRIADOR(DataCarregamento, DataPublicacao, TransmissaoDireto, Id_Video, LogUser_Id) VALUES("2020-05-13", "2020-05-13", 'Sim', 3, 1);
INSERT INTO CRIADOR(DataCarregamento, DataPublicacao, TransmissaoDireto, Id_Video, LogUser_Id) VALUES("2021-01-13", "2021-01-13", 'Não', 4, 2);
INSERT INTO CRIADOR(DataCarregamento, DataPublicacao, TransmissaoDireto, Id_Video, LogUser_Id) VALUES("2021-03-0", "2021-03-01", 'Não', 5, 1);
INSERT INTO CRIADOR(DataCarregamento, DataPublicacao, TransmissaoDireto, Id_Video, LogUser_Id) VALUES("2020-07-13", "2020-07-29", 'Não', 6, 2);
INSERT INTO CRIADOR(DataCarregamento, DataPublicacao, TransmissaoDireto, Id_Video, LogUser_Id) VALUES("2021-02-16", "2021-02-16", 'Sim', 7, 4);
INSERT INTO CRIADOR VALUES('2021/27/03', '2021/27/03', 'Não', 8, 5);
INSERT INTO CRIADOR VALUES('2016/19/08', '2016/19/08', 'Não', 9, 6);
INSERT INTO CRIADOR VALUES('2021/23/03', '2021/23/03', 'Não', 10, 7);
INSERT INTO CRIADOR VALUES('2021/01/04', '2021/01/04', 'Não', 11, 9);
INSERT INTO CRIADOR VALUES('2020/31/12', '2020/31/12', 'Não', 12, 10);
INSERT INTO CRIADOR VALUES('2019/27/10', '2019/27/10', 'Sim', 13, 8);


