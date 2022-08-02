CREATE TRIGGER checkDateInfoVideoLista
BEFORE INSERT ON INFOVIDEOLISTA
FOR EACH ROW    
WHEN( 
    (SELECT DataPublicacao
    FROM CRIADOR
    WHERE Id_Video = NEW.Id_Video)
    > NEW.DataAdicao
)
BEGIN
    SELECT RAISE(ABORT, "Erro, video nao publicado!");
END;