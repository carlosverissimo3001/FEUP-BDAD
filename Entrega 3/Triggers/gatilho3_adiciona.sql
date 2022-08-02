CREATE TRIGGER updateReacaoComentario
Before UPDATE ON CLASSIFICACAOCOMENT
FOR EACH ROW
WHEN (
    (Select Tipo
    FROM CLASSIFICACAOCOMENT
    WHERE CLASSIFICACAOCOMENT.LogUser_Id =  NEW.LogUser_Id AND CLASSIFICACAOCOMENT.Id_Coment = NEW.Id_Coment
    ) <> NEW.Tipo 
    AND 
    NEW.Tipo = "Like")
BEGIN
    UPDATE COMENTARIO
    SET NumDislikes = (Select NumDislikes From COMENTARIO Where COMENTARIO.Id_Coment = Id_Coment) - 1
    WHERE COMENTARIO.Id_Coment = Id_Coment;
    UPDATE COMENTARIO
    SET NumLikes = (Select NumLikes From COMENTARIO Where COMENTARIO.Id_Coment = Id_Coment) + 1
    WHERE COMENTARIO.Id_Coment = Id_Coment;
END;