DROP TABLE IF EXISTS ACHETE;
DROP TABLE IF EXISTS STATIONNE;
DROP TABLE IF EXISTS CONCERNE;
DROP TABLE IF EXISTS CONSTITUE;
DROP TABLE IF EXISTS SEPARE;
DROP TABLE IF EXISTS ARRET;
DROP TABLE IF EXISTS USAGER;
DROP TABLE IF EXISTS TRAIN;
DROP TABLE IF EXISTS LIGNE;
DROP TABLE IF EXISTS ZONE;
DROP TABLE IF EXISTS TITRE_TRANSPORT;


CREATE TABLE LIGNE(
    idLigne SERIAL,
    libelle VARCHAR(100),
    PRIMARY KEY(idLigne)


);

CREATE TABLE ZONE(
    idZone SERIAL,
    libelle varchar(100),
    PRIMARY KEY(idZone)
);
CREATE TABLE TITRE_TRANSPORT(
    idTitre SERIAL,
    type varchar(100),
    PRIMARY KEY(idTitre)

);


CREATE TABLE TRAIN(
    idTrain SERIAL,
    libelle VARCHAR(100),
    nbPlaces int,
    nbEtages int,
    idLigne int,
    PRIMARY KEY(idTrain),
    FOREIGN KEY(idLigne) references LIGNE(idLigne)


);

CREATE TABLE USAGER(
    idUsager SERIAL,
    prenom VARCHAR(100),
    nom VARCHAR(100),
    age int,
    idTrain int,
    PRIMARY KEY(idUsager),
    FOREIGN KEY(idTrain) references TRAIN(idTrain)

);

CREATE TABLE ARRET(
    idArret SERIAL,
    libelle varchar(100),
    addresse varchar(100),
    id_zone int,

    FOREIGN KEY(id_zone) references ZONE(idZone),
    PRIMARY KEY(idArret)
);



CREATE TABLE ACHETE(
    id_titre int,
    id_usager int,
    prix float,
    FOREIGN KEY(id_titre) references TITRE_TRANSPORT(idTitre),
    FOREIGN KEY(id_usager) references  USAGER(idUsager),
    PRIMARY KEY(id_titre,id_usager)

);

CREATE TABLE CONCERNE(
    id_titre int,
    id_arret_dep int,
    id_arret_arr int,
    FOREIGN KEY(id_titre) references TITRE_TRANSPORT(idTitre),
    FOREIGN KEY(id_arret_dep) references ARRET(idArret),
    FOREIGN KEY(id_arret_arr) references ARRET(idArret),
    PRIMARY KEY(id_titre,id_arret_dep,id_arret_arr)
);

CREATE TABLE STATIONNE(
    id_arret int,
    id_train int,
    horaire time,
    retard time,
    type_retard varchar(100),

    FOREIGN KEY(id_arret) references ARRET(idArret),
    FOREIGN KEY(id_train) references TRAIN(idTrain),
    PRIMARY KEY(id_arret,id_train)

);

CREATE TABLE SEPARE(
    id_arret1 int,
    id_arret2 int,
    distance float,
    CONSTRAINT fk_id_arret1
    FOREIGN KEY(id_arret1) references ARRET(idArret),
    CONSTRAINT fk_id_arret2
    FOREIGN KEY(id_arret2) references ARRET(idArret),
    PRIMARY KEY(id_arret1,id_arret2)


);

CREATE TABLE CONSTITUE(
    id_arret int,
    id_ligne int,
    FOREIGN KEY(id_arret) references ARRET(idArret),
    FOREIGN KEY(id_ligne) references LIGNE(idLigne),
    PRIMARY KEY(id_arret,id_ligne)

);
/*insert into ZONE values(default, 'zone 1');
insert into ZONE values(default, 'zone 2');
insert into ZONE values(default, 'zone 3');
insert into ZONE values(default, 'zone 4');

insert into LIGNE values(default, 'ligne H');
insert into LIGNE values(default, 'ligne 5');


insert into TRAIN values(default, 'RER',250,2,1);
insert into TRAIN values(default, 'RER',250,2,1);
insert into TRAIN values(default, 'RER',250,2,1);

insert into TRAIN values(default, 'métro',250,2,2);
insert into TRAIN values(default, 'métro',250,2,2);

insert into USAGER values(default, 'Jean','Doe',10,1);
insert into USAGER values(default, 'Jeanne','Doe',18,NULL);
insert into USAGER values(default, 'Kyle','Doe',15,1);

insert into TITRE_TRANSPORT values(default,'ticket');
insert into TITRE_TRANSPORT values(default,'ticket');
insert into TITRE_TRANSPORT values(default,'pass NAVIGO');

insert into ARRET values(default,'Pontoise','rue de la gare',4);
insert into ARRET values(default,'Cernay','rue de la gare',3);
insert into ARRET values(default,'Genevilliers','rue de la gare',2);
insert into ARRET values(default,'Paris Nord','rue de la gare',1);


insert into SEPARE values(1,2,25);
insert into SEPARE values(2,3,30);
insert into SEPARE values(3,4,35);

insert into ACHETE values(1,1,4.45);
insert into ACHETE values(2,2,4.45);

insert into CONCERNE values(1,1,4);
insert into CONCERNE values(2,4,1);

insert into CONSTITUE values(1,1);
insert into CONSTITUE values(2,1);
insert into CONSTITUE values(3,1);
insert into CONSTITUE values(4,1);

insert into STATIONNE values(4,1,'12:20',NULL,NULL);
insert into STATIONNE values(3,1,'12:40','00:05','personne sur la voie');
insert into STATIONNE values(2,1,'12:50',NULL,NULL);
insert into STATIONNE values(1,1,'13:00',NULL,NULL);*/













