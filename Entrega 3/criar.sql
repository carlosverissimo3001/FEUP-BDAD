PRAGMA foreign_keys=ON;

-- Tabela referente a classe: PESSOA
DROP TABLE IF EXISTS PESSOA;
CREATE TABLE PESSOA (
    Id_Pessoa INTEGER NOT NULL UNIQUE,
    Ip TEXT DEFAULT 'NULL',
    TipoDispositivo TEXT DEFAULT 'NULL',
    Id_Pais INTEGER,

    CHECK (Id_Pessoa > 0),
    
    CONSTRAINT PESSOA_PK PRIMARY KEY(Id_Pessoa),
    CONSTRAINT PESSOA_PAIS_FK FOREIGN KEY(Id_Pais) REFERENCES PAIS(Id_Pais) ON DELETE SET NULL ON UPDATE CASCADE
);

-------------------------------------------------------------------

-- Tabela referente a classe: USERIDENTIFICADO
DROP TABLE IF EXISTS USERIDENTIFICADO;
CREATE TABLE USERIDENTIFICADO (
    LogUser_Id  INTEGER NOT NULL UNIQUE,
    Ip TEXT DEFAULT 'NULL',
    TipoDispositivo TEXT DEFAULT 'NULL',
    
    NomeCanal TEXT NOT NULL UNIQUE,
    Password TEXT NOT NULL CHECK(LENGTH(Password) > 8),
    EmailAssociado TEXT UNIQUE,
    DataCriacao DATE DEFAULT 'NULL',
    NumSubscritores INTEGER NOT NULL, 

    CHECK (NumSubscritores > 0),

    CONSTRAINT USERID_PK PRIMARY KEY(LogUser_Id),
    CONSTRAINT USERID_FK FOREIGN KEY(LogUser_Id) REFERENCES PESSOA(Id_Pessoa) ON DELETE CASCADE ON UPDATE CASCADE
);

-------------------------------------------------------------------

-- Tabela referente a classe: USERNAOIDENTIFICADO
DROP TABLE IF EXISTS USERNAOIDENTIFICADO;
CREATE TABLE USERNAOIDENTIFICADO (
    NotLogUser_Id  INTEGER NOT NULL UNIQUE,
    Ip TEXT DEFAULT 'NULL',
    TipoDispositivo TEXT DEFAULT 'NULL',
    
    CONSTRAINT USERNID_PK PRIMARY KEY(NotLogUser_Id),
    CONSTRAINT USERNID_FK FOREIGN KEY(NotLogUser_Id) REFERENCES PESSOA(Id_Pessoa) ON DELETE CASCADE ON UPDATE CASCADE
);

-------------------------------------------------------------------

-- Tabela referente a classe: PAIS
DROP TABLE IF EXISTS PAIS;
CREATE TABLE PAIS (
    Id_Pais INTEGER NOT NULL UNIQUE,          
    Nome TEXT NOT NULL, /* not unique since countries like Republic of Congo and Democratic Republic of Congo/Republic of China (aka Taiwan) and Peoples Republic of China have really similar names */
    
    CHECK (Id_pais >= 1 AND Id_Pais <= 10), /* nota: id´s de países começam em 1, e terminam em 10 */
    

    CONSTRAINT PAIS_PK PRIMARY KEY(Id_Pais)
);

-------------------------------------------------------------------

-- Tabela referente a classe: VIDEO
DROP TABLE IF EXISTS VIDEO;
CREATE TABLE VIDEO (
    Id_Video INTEGER NOT NULL UNIQUE,
    Link TEXT NOT NULL UNIQUE,
    Titulo Text NOT NULL CHECK (LENGTH(Titulo) < 70), 
    GeneroPrincipal TEXT DEFAULT 'Miscellaneous',
    NumVisualizacoes INTEGER CHECK (NumVisualizacoes >= 0),
    NumLikes INTEGER CHECK (NumLikes >= 0),
    NumDislikes INTEGER CHECK (NumDislikes >= 0),
    NumComentarios INTEGER CHECK (NumComentarios >= 0),
    NumPartilhas INTEGER CHECK (NumPartilhas >= 0),
    Duracao INTEGER NOT NULL CHECK (Duracao >= 0),
    
    CONSTRAINT VIDEO_PK PRIMARY KEY(Id_Video)
);

-------------------------------------------------------------------

-- Tabela referente a classe: COMENTARIO
DROP TABLE IF EXISTS COMENTARIO;
CREATE TABLE COMENTARIO (
    Id_Coment INTEGER NOT NULL UNIQUE,
    String TEXT NOT NULL,
    NumLikes INTEGER CHECK (NumLikes >= 0),
    NumDislikes INTEGER CHECK (NumDislikes >= 0),
    Id_Video INTEGER NOT NULL,
    LogUser_Id  INTEGER NOT NULL,

    CHECK (LENGTH(String) < 1000),

    CONSTRAINT COM_PK PRIMARY KEY(Id_Coment),
    CONSTRAINT COM_VIDEO_FK FOREIGN KEY(Id_Video) REFERENCES VIDEO(Id_Video) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT COM_USER_FK FOREIGN KEY(LogUser_Id) REFERENCES USERIDENTIFICADO(LogUser_Id) ON DELETE SET NULL ON UPDATE CASCADE
);

-------------------------------------------------------------------

-- Tabela referente a classe: LISTADEREPRODUCAO
DROP TABLE IF EXISTS LISTADEREPRODUCAO;
CREATE TABLE LISTADEREPRODUCAO (
    Id_Lista INTEGER NOT NULL UNIQUE,
    Nome TEXT NOT NULL, 
    NumVideos INTEGER CHECK (NumVideos >= 0),
    DuracaoTotal INTEGER CHECK (DuracaoTotal >= 0),
    Estado TEXT NOT NULL CHECK(Estado = "Pública" OR Estado = "Privada"),
    LogUser_Id  INTEGER NOT NULL,

    CHECK (LENGTH(Nome) < 100),

    CONSTRAINT LISTA_PK PRIMARY KEY (Id_Lista),
    CONSTRAINT LISTA_USER_FK FOREIGN KEY(LogUser_Id) REFERENCES USERIDENTIFICADO(LogUser_Id) ON DELETE CASCADE ON UPDATE CASCADE
);

-------------------------------------------------------------------

-- Tabela referente a classe: PARTILHA
DROP TABLE IF EXISTS PARTILHA;
CREATE TABLE PARTILHA (
    LogUser_Id  INTEGER NOT NULL,
    Id_Video INTEGER NOT NULL,
    Local TEXT DEFAULT 'NULL',
    
    CONSTRAINT PARTILHA_PK PRIMARY KEY (LogUser_Id, Id_Video),
    CONSTRAINT PARTILHA_USER_FK FOREIGN KEY(LogUser_Id) REFERENCES USERIDENTIFICADO(LogUser_Id) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT PARTILHA_VIDEO_FK FOREIGN KEY(Id_Video) REFERENCES VIDEO(Id_Video) ON DELETE CASCADE ON UPDATE CASCADE
);

-------------------------------------------------------------------

-- Tabela referente a classe: CLASSIFICACAO
DROP TABLE IF EXISTS CLASSIFICACAO;
CREATE TABLE CLASSIFICACAO (
    LogUser_Id  INTEGER NOT NULL,
    Id_Video INTEGER NOT NULL,
    Tipo TEXT NOT NULL CHECK (Tipo = 'Like' OR Tipo = 'Dislike'),
    
    CONSTRAINT CLASSIFICACAO_PK PRIMARY KEY (LogUser_Id, Id_Video),
    CONSTRAINT CLASSIFICACAO_USER_FK FOREIGN KEY(LogUser_Id) REFERENCES USERIDENTIFICADO(LogUser_Id) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT CLASSIFICACAO_VIDEO_FK FOREIGN KEY(Id_Video) REFERENCES VIDEO(Id_Video) ON DELETE CASCADE ON UPDATE CASCADE
);

-------------------------------------------------------------------

-- Tabela referente a classe: VISUALIZACAO
DROP TABLE IF EXISTS VISUALIZACAO;
CREATE TABLE VISUALIZACAO (
    Id_Pessoa INTEGER NOT NULL,
    Id_Video INTEGER NOT NULL,
    TempoDeVisualizacao INTEGER NOT NULL CHECK (TempoDeVisualizacao >= 10),
    
    CONSTRAINT VISUALIZACAO_PK PRIMARY KEY (Id_Pessoa, Id_Video),
    CONSTRAINT VISUALIZACAO_PESSOA_FK FOREIGN KEY(Id_Pessoa) REFERENCES PESSOA(Id_Pessoa) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT VISUALIZACAO_VIDEO_FK FOREIGN KEY(Id_Video) REFERENCES VIDEO(Id_Video) ON DELETE CASCADE ON UPDATE CASCADE
);

-------------------------------------------------------------------

-- Tabela referente a classe: INFOVIDEOLISTA
DROP TABLE IF EXISTS INFOVIDEOLISTA;
CREATE TABLE INFOVIDEOLISTA (
    Id_Lista INTEGER NOT NULL,
    Id_Video INTEGER NOT NULL,
    DataAdicao DATE DEFAULT 'NULL',
    
    CONSTRAINT INFOVIDLISTA_PK PRIMARY KEY (Id_Lista, Id_Video),
    CONSTRAINT INFOVIDLISTA_PESSOA_FK FOREIGN KEY(Id_Lista) REFERENCES LISTADEREPRODUCAO(Id_Lista) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT INFOVIDLISTA_VIDEO_FK FOREIGN KEY(Id_Video) REFERENCES VIDEO(Id_Video) ON DELETE CASCADE ON UPDATE CASCADE
);

-------------------------------------------------------------------

-- Tabela referente a classe: VIDEOTENDENCIA
DROP TABLE IF EXISTS VIDEOTENDENCIA;
CREATE TABLE VIDEOTENDENCIA (
    Id_Pais INTEGER NOT NULL,
    Id_Video INTEGER NOT NULL,
    Posicao TEXT NOT NULL,
    
    CONSTRAINT VIDEOTENDENCIA_PK PRIMARY KEY (Id_Pais, Id_Video),
    CONSTRAINT VIDEOTENDENCIA_PAIS_FK FOREIGN KEY(Id_Pais) REFERENCES PAIS(Id_Pais) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT VIDEOTENDENCIA_VIDEO_FK FOREIGN KEY(Id_Video) REFERENCES VIDEO(Id_Video) ON DELETE CASCADE ON UPDATE CASCADE
);

-------------------------------------------------------------------

-- Tabela referente a classe: SUBSCRICAO
DROP TABLE IF EXISTS SUBSCRICAO;
CREATE TABLE SUBSCRICAO (
    LogUser_Id1  INTEGER NOT NULL,
    LogUser_Id2  INTEGER NOT NULL,
    Tipo TEXT NOT NULL CHECK (Tipo = 'Premium' or TIPO = 'Basic'),
    
    CONSTRAINT SUBSCRICAO_PK PRIMARY KEY (LogUser_Id1, LogUser_Id2),
    CONSTRAINT SUBSCRICAO_USER1_FK FOREIGN KEY(LogUser_Id1) REFERENCES USERIDENTIFICADO(LogUser_Id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT SUBSCRICAO_USER2__FK FOREIGN KEY(LogUser_Id2) REFERENCES USERIDENTIFICADO(LogUser_Id) ON DELETE CASCADE ON UPDATE CASCADE
);

-------------------------------------------------------------------

-- Tabela referente a classe: CLASSIFICACAOCOMENT
DROP TABLE IF EXISTS CLASSIFICACAOCOMENT;
CREATE TABLE CLASSIFICACAOCOMENT (
    LogUser_Id  INTEGER,
    Id_Coment INTEGER NOT NULL,
    Tipo TEXT NOT NULL CHECK (Tipo = 'Like' OR Tipo = 'Dislike'),
    
    CONSTRAINT CLASSCOMENT_PK PRIMARY KEY (LogUser_Id, Id_Coment),
    CONSTRAINT CLASSCOMENT_COM_PK FOREIGN KEY(Id_Coment) REFERENCES COMENTARIO(Id_Coment) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT CLASSCOMENT_USER_PK FOREIGN KEY(LogUser_Id) REFERENCES USERIDENTIFICADO(LogUser_Id) ON DELETE SET NULL ON UPDATE CASCADE
    
);

-------------------------------------------------------------------

-- Tabela referente a classe: CRIADOR
DROP TABLE IF EXISTS CRIADOR;
CREATE TABLE CRIADOR (
    DataCarregamento DATE NOT NULL,
    DataPublicacao DATE NOT NULL,
    TransmissaoDireto TEXT NOT NULL CHECK (TransmissaoDireto = 'Sim' OR TransmissaoDireto = 'Não'),
    Id_Video INTEGER NOT NULL,
    LogUser_Id  INTEGER NOT NULL,

    CONSTRAINT DATA_VALID CHECK (DataCarregamento <= DataPublicacao),
    
    CONSTRAINT CRIADOR_PK PRIMARY KEY (Id_Video),
    CONSTRAINT CRIADOR_VIDEO_FK FOREIGN KEY(Id_Video) REFERENCES VIDEO(Id_Video) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT CRIADOR_USER_FK FOREIGN KEY(LogUser_Id) REFERENCES USERIDENTIFICADO(LogUser_Id) ON DELETE CASCADE ON UPDATE CASCADE
    
    
);



