CREATE TABLE Route (
cRoute varchar(30) NOT NULL,
nLatOri NUMBER(8,5) NOT NULL,
nLongOri NUMBER (8,5) NOT NULL,
nLatDes NUMBER(8,5) NOT NULL,
nLongDes NUMBER (8,5) NOT NULL,
nDistance NUMBER(38) NOT NULL,
CONSTRAINT pk_cRoute PRIMARY KEY (cRoute)
);/


CREATE TABLE TypeEquipement (
cTypeEquipement varchar(30),
CONSTRAINT pk_cTypeEquipement PRIMARY KEY(cTypeEquipement)
);/

CREATE TABLE Remorque (
remorque_id NUMBER(38),
cTypeEquipement varchar(30),
CONSTRAINT pk_remorque_id PRIMARY KEY (remorque_id),
CONSTRAINT fk_cTypeEquipement FOREIGN KEY (cTypeEquipement) REFERENCES TypeEquipement(cTypeEquipement)
);/

CREATE TABLE Tosition (
cPosition varchar(30) NOT NULL,
nLat NUMBER(8,5) NOT NULL,
nLong NUMBER(8,5) NOT NULL,
camion_id NUMBER(38) NOT NULL,
CONSTRAINT pk_cPosition PRIMARY KEY (cPosition)
                        --CONSTRAINT fk_camion_id FOREIGN KEY (camion_id) REFERENCES Camion(camion_id)
);/

CREATE TABLE Camion (
camion_id NUMBER (38) NOT NULL,
cPosition varchar(30) NOT NULL,
remorque_id NUMBER(38) NOT NULL,
CONSTRAINT pk_camion_id PRIMARY KEY (camion_id),
CONSTRAINT fk_cPosition FOREIGN KEY (cPosition) REFERENCES Tosition(cPosition),
CONSTRAINT fk_remorque_id FOREIGN KEY (remorque_id) REFERENCES Remorque(remorque_id)
);/

