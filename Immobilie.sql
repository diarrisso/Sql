create table Immobilie (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	baujahr VARCHAR(50)NOT NULL,
	einstellungsdatum DATE NOT NULL,
	wohnfläche INT NOT NULL,
	anzahl_der_zimmer INT NOT NULL,
	preis INT NOT NULL,
	verkaufsdatun DATE NOT NULL,
	strasse VARCHAR(50) NOT NULL,
	hausnummer VARCHAR(50) NOT NULL,
	stadt VARCHAR(50) NOT NULL,
	plz INT NOT NULL,
	land VARCHAR(50) NOT NULL,
	immobilientyp_ID BIGSERIAL NOT NULL PRIMARY KEY
);
insert into Immobilie (id, baujahr, einstellungsdatum, wohnfläche, anzahl_der_zimmer, preis, verkaufsdatun, strasse, hausnummer, stadt, plz, land, immobilientyp_ID) values (1, 2012, '8.3.2021', 120, 5, 125171, '7.10.2020', 'Korner', '30', 'Bremen', 28195, 'Deutschland', 1);
insert into Immobilie (id, baujahr, einstellungsdatum, wohnfläche, anzahl_der_zimmer, preis, verkaufsdatun, strasse, hausnummer, stadt, plz, land, immobilientyp_ID) values (2, 1983, '27.5.2021', 774, 3, 1000000, '26.2.2021', 'Wartburgerstrasse', '14', 'Walle', 28217, 'Deutschland ', 2);
insert into Immobilie (id, baujahr, einstellungsdatum, wohnfläche, anzahl_der_zimmer, preis, verkaufsdatun, strasse, hausnummer, stadt, plz, land, immobilientyp_ID) values (3, 2011, '18.8.2021', 985, 8, 1000000, '3.11.2020', 'tanenkampstrasse', '45', 'Oldenburg', 26758, ' Deutschland', 3);

create table Gebot (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	datum DATE NOT NULL,
	preisangebot INT NOT NULL,
	angenommen VARCHAR(50) NOT NULL,
	interessent_ID BIGSERIAL NOT NULL FOREIKEY KEY,
	immobilie_ID  BIGSERIAL NOT NULL FOREIKEY KEY
);
insert into Gebot (id, datum, preisangebot, angenommen, interessent_ID, immobilie_ID) values (1, '15/08/2021', 913117, false, 1, 1);
insert into Gebot (id, datum, preisangebot, angenommen, interessent_ID, immobilie_ID) values (2, '08/02/2021', 2276, false, 2, 2);
insert into Gebot (id, datum, preisangebot, angenommen, interessent_ID, immobilie_ID) values (3, '21/12/2021', 910754, true, 3, 3);



create table Besuchstermin (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	datum DATE NOT NULL,
	uhrzeit VARCHAR(50) NOT NULL,
	makler_ID BIGSERIAL NOT NULL,
	interessent_ID BIGSERIAL  NOT NULL,
	immobilie_ID  BIGSERIAL NOT NULL
);
insert into Besuchstermin (id, datum, uhrzeit, makler_ID, interessent_ID, immobilie_ID) values (1, '4/6/2021', '10:17 AM', 1, 1, 1);
insert into Besuchstermin (id, datum, uhrzeit, makler_ID, interessent_ID, immobilie_ID) values (2, '12/13/2020', '11:43 PM', 2, 2, 2);
insert into Besuchstermin (id, datum, uhrzeit, makler_ID, interessent_ID, immobilie_ID) values (3, '8/11/2021', '7:16 AM', 3, 3, 3);

create table Interessent (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	vorname VARCHAR(50) NOT NULL,
	nahname VARCHAR(50) NOT NULL,
	telefonnummer VARCHAR(50)NOT NULL,
	strasse VARCHAR(50)NOT NULL,
	hausnummer VARCHAR(50)NOT NULL,
	Stadt VARCHAR(50)NOT NULL,
	plz INT NOT NULL,
	land VARCHAR(50) NOT NULL
);
insert into interessent (id, vorname, nahname, telefonnummer, strasse, hausnummer, Stadt, plz, land) values (1, 'John', 'Doe', '017344218664', 'Am becketal', '80', 'bremen', 28755, 'Deutschland');
insert into interessent (id, vorname, nahname, telefonnummer, strasse, hausnummer, Stadt, plz, land) values (2, 'Madelene', 'Liversage', '0173390776423', 'dorfstrasse', '7', 'hamburg',21487, 'Deutschland');
insert into interessent (id, vorname, nahname, telefonnummer, strasse, hausnummer, Stadt, plz, land) values (3, 'Olly', 'Preskett', '017328937737', 'rembertiring', '40', 'bremen', 28195, 'Deutschland');




create table Immobilientyp (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(50)
);
insert into immobilientyp (id, name) values (1, 'Einfamilienhaus');
insert into immobilientyp (id, name) values (2, 'Mehrfamilienhaus');
insert into immobilientyp (id, name) values (3, 'Reihenendhaus ');



create table Eigentürmer (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	vorname VARCHAR(50)NOT NULL,
	nachname VARCHAR(50)NOT NULL,
	telefonnummer VARCHAR(50)NOT NULL
   
);
insert into eigentürmer (id, vorname, nachname, telefonnummer) values (1, 'Mamadi', 'Diarrisso', '017675823089');
insert into eigentürmer (id, vorname, nachname, telefonnummer) values (2, 'jesper', 'lundqvist', '017816945061');
insert into eigentürmer (id, vorname, nachname, telefonnummer) values (3, 'Antons', 'Elmhurst', '017816945062');



create table Makler (
	id  BIGSERIAL NOT NULL PRIMARY KEY,
	vorname VARCHAR(50) NOT NULL,
	nachname VARCHAR(50) NOT NULL,
	telefonnummer VARCHAR(50)NOT NULL
);

insert into Makler (id, vorname, nachname, telefonnummer) values (1, 'lewis', 'Hamilton', '018915858001');
insert into Makler (id, vorname, nachname, telefonnummer) values (2, 'Max', 'Verstapen', '017233448505');
insert into Makler (id, vorname, nachname, telefonnummer) values (3, 'Angela', 'Merkel', '015642620461');




create table Immobilie_Eigenturmer (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	immobilie_ID BIGSERIAL NOT NULL PRIMARY KEY,
	eigentürmer_ID BIGSERIAL NOT NULL PRIMARY KEY
);
insert into Immobilie_Eigenturmer (id, immobilie_ID, eigentürmer_ID) values (1, 1, 1);
insert into Immobilie_Eigenturmer (id, immobilie_ID, eigentürmer_ID) values (2, 2, 2);
insert into Immobilie_Eigenturmer (id, immobilie_ID, eigentürmer_ID) values (3, 3, 3);


create table Immobilie_Makler (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	immobilie_ID BIGSERIAL NOT NULL PRIMARY KEY,
	makler_ID BIGSERIAL NOT NULL PRIMARY KEY
);
insert into Immobilie_Makler (id, immobilie_ID, makler_ID) values (1, 1, 1);
insert into Immobilie_Makler (id, immobilie_ID, makler_ID) values (2, 2, 2);
insert into Immobilie_Makler (id, immobilie_ID, makler_ID) values (3, 3, 3);
