create database eleicao;

CREATE TABLE Eleicao.Partido (
  cd_partido INT NOT NULL,
  nm_partido VARCHAR(7) NOT NULL,
  qt_candidato_partido INT NULL,
  PRIMARY KEY (cd_partido));
  
  select * from eleicao.partido;
  
  CREATE TABLE Eleicao.Cargo (
  nm_cargo VARCHAR(27) NOT NULL,
  PRIMARY KEY (nm_cargo));
  
  select * from eleicao.cargo;
  
  CREATE TABLE Eleicao.Candidato (
  cd_candidato INT NOT NULL,
  cd_cpf_candidato INT NOT NULL,
  nm_candidato VARCHAR(120) NOT NULL,
  partido_cd_partido INT NOT NULL,
  Cargo_nm_cargo VARCHAR(27) NOT NULL,
  PRIMARY KEY (cd_candidato, cd_cpf_candidato),
  INDEX fk_Candidato_Partido_idx (partido_cd_partido ASC),
  INDEX fk_Candidato_Cargo1_idx (Cargo_nm_cargo ASC) ,
  CONSTRAINT fk_Candidato_Partido
    FOREIGN KEY (partido_cd_partido)
    REFERENCES Eleicao.Partido (cd_partido)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_Candidato_Cargo1
    FOREIGN KEY (Cargo_nm_cargo)
    REFERENCES Eleicao.Cargo (nm_cargo)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

select * from eleicao.candidato;


CREATE TABLE Eleicao.ZonaEleitoral (
  cd_zona INT NOT NULL,
  qt_zona INT NOT NULL,
  PRIMARY KEY (cd_zona));
  
select * from eleicao.zonaeleitoral;

CREATE TABLE Eleicao.Municipio (
  nm_municipio VARCHAR(28) NOT NULL,
  sg_municipio CHAR(2) NULL,
  Cargo_nm_cargo VARCHAR(27) NOT NULL,
  ZonaEleitoral_cd_zona INT NOT NULL,
  PRIMARY KEY (nm_municipio),
  INDEX fk_Estado_Cargo1_idx (Cargo_nm_cargo ASC),
  INDEX fk_Municipio_ZonaEleitoral1_idx (ZonaEleitoral_cd_zona ASC),
  CONSTRAINT fk_Estado_Cargo1
    FOREIGN KEY (Cargo_nm_cargo)
    REFERENCES Eleicao.Cargo (nm_cargo)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_Municipio_ZonaEleitoral1
    FOREIGN KEY (ZonaEleitoral_cd_zona)
    REFERENCES Eleicao.ZonaEleitoral (cd_zona)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
 select * from eleicao.municipio;
 
 CREATE TABLE Eleicao.Eleitor (
  cd_ttl_eleitor INT NOT NULL,
  nm_eleitor VARCHAR(120) NULL,
  ja_votou TEXT(10) NULL,
  ZonaEleitoral_cd_zona INT NOT NULL,
  PRIMARY KEY (cd_ttl_eleitor),
  INDEX fk_Eleitor_ZonaEleitoral1_idx (ZonaEleitoral_cd_zona ASC),
  CONSTRAINT fk_Eleitor_ZonaEleitoral1
    FOREIGN KEY (ZonaEleitoral_cd_zona)
    REFERENCES Eleicao.ZonaEleitoral (cd_zona)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
 select * from eleicao.eleitor;
 
CREATE TABLE Eleicao.Apurador (
  eleicao_finalizada VARCHAR(5) NOT NULL,
  PRIMARY KEY (eleicao_finalizada));
  
 select * from eleicao.apurador;
 
 select * from eleicao.candidato;
 
 select * from Eleicao.ZonaEleitoral;
 
 select * from Eleicao.Municipio;
 
 select * from Eleicao.Eleitor;
 
 select * from Eleicao.Apurador;
 
INSERT INTO Eleicao.Partido (cd_partido, nm_partido, qt_candidato_partido)
VALUES (013, 'PSDB', 4);

INSERT INTO Eleicao.Cargo (nm_cargo)
VALUES ('Presidente');

INSERT INTO eleicao.Candidato (cd_candidato, cd_cpf_candidato, nm_candidato, partido_cd_partido, Cargo_nm_cargo)
VALUES (040, 493867356, 'Fabiana', 013, 'Presidente');

INSERT INTO Eleicao.ZonaEleitoral (cd_zona, qt_zona)
VALUES (54, 400);

INSERT INTO Eleicao.Municipio (nm_municipio, sg_municipio, Cargo_nm_cargo, ZonaEleitoral_cd_zona)
VALUES ('Santos', 'SA', 'Presidente', 54);

INSERT INTO Eleicao.Eleitor (cd_ttl_eleitor, nm_eleitor, ja_votou, ZonaEleitoral_cd_zona)
VALUES (890, 'José', 'Sim', 54);

INSERT INTO Eleicao.Apurador (eleicao_finalizada)
VALUES ('Não');