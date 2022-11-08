insert into ZONE values(default, 'zone 1');
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
insert into STATIONNE values(1,1,'13:00',NULL,NULL);