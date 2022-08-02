CREATE TRIGGER verificaExistenciaPessoa
BEFORE INSERT ON USERIDENTIFICADO
WHEN NOT EXISTS ( 
    SELECT Id_Pessoa
    FROM PESSOA
    WHERE Id_Pessoa  = NEW.LogUser_Id
)
BEGIN
    INSERT INTO PESSOA (Id_Pessoa) VALUES (NEW.LogUser_Id);
END; 