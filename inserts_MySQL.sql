INSERT INTO kategoria(id_kategoria,nazwa) VALUES (1,'osobowy 2-drzwiowy');
INSERT INTO kategoria(id_kategoria,nazwa) VALUES (2,'osobowy 4-drzwiowy');
INSERT INTO kategoria(id_kategoria,nazwa) VALUES (3,'dostawczy');

INSERT INTO producent VALUES(1,'BMW','Niemcy');
INSERT INTO producent VALUES(2,'Audi','Niemcy');
INSERT INTO producent VALUES(3,'Renault','Francja');
INSERT INTO producent VALUES(4,'Dogde','USA');
INSERT INTO producent VALUES(5,'Fiat','Wlochy');


INSERT INTO pracownik VALUES(1,'Adam','Poniedzialek','2011-04-22','Polna',5,NULL,'00-001','Warszawa',NULL);
INSERT INTO pracownik VALUES(2,'Adrian','Wtorek','2012-05-12','Polna',5,NULL,'00-001','Warszawa',NULL);

INSERT INTO pracownik VALUES(3,'Antoni','Kowalski','2003-05-12','Slowackiego',8,NULL,'00-002','Radzymin',NULL);

INSERT INTO pracownik VALUES(4,'Anna','Pomorska','2012-01-21','Wolna',5,NULL,'20-201','Plock',NULL);

INSERT INTO pracownik VALUES(5,'Olaf','Sreberko','2002-02-23','Starowislana',5,5,'44-001','Warszawa',NULL);

INSERT INTO klient VALUES(1,'Stanislaw','Schabowy','Wszystko i nic','123456789','Stara',5,NULL,'00-001','Warszawa');

INSERT INTO klient VALUES(2,'Stanislaw','Wolny',NULL,NULL,'Pochodnia',15,NULL,'00-222','Warszawa');

INSERT INTO klient VALUES(3,'Piotr','£otr','Stare i nowe','121212121','Nowa',5,5,'11-001','Warszawa');

INSERT INTO klient VALUES(4,'Jan','Doskonaly','Mydlo i powidlo','123456123','Mydlana',7,NULL,'00-111','Wolomin');

INSERT INTO klient VALUES(5,'Anna','Panna',NULL,NULL,'Piekna',7,NULL,'00-001','Warszawa');

INSERT INTO platnosc VALUES(1,'gotowka');

INSERT INTO platnosc VALUES(2,'karta platnicza');
INSERT INTO platnosc VALUES(3,'karta podarunkowa');

INSERT INTO dostawca VALUES(1,'SuperBryka','123123123','Wlochata',5,'55-555','Krakow');
INSERT INTO dostawca VALUES(2,'Tania Fura','000000001','Sama',15,'00-555','Poznan');

INSERT INTO dostawca VALUES(3,'Fura i komora','123123111','Przemyslana',95,'55-000','Gdansk');
INSERT INTO dostawca VALUES(4,'Porsche za grosze','123456712','Wlochata',55,'55-555','Krakow');

INSERT INTO dostawca VALUES(5,'Samochodzik','023123123','Stara',45,'00-000','Warszawa');

INSERT INTO samochod VALUES(1,'m5',2,500,2017,300000,15,1,1);

INSERT INTO samochod VALUES(2,'A6',5,600,2016,500000,10,2,2);

INSERT INTO samochod VALUES(3,'Megane',5,200,2016,100000,0,2,3);

INSERT INTO samochod VALUES(4,'Premiere',7,1000,2018,700000,15,2,4);

INSERT INTO samochod VALUES(5,'Uno',5,100,2014,50000,5,2,5);

INSERT INTO samochod VALUES(6,'Master',3,300,2016,100000,10,3,3);

INSERT INTO dodatkowe_wyposa¿enie VALUES(1,'aluminiowe felgi',5000);
INSERT INTO dodatkowe_wyposa¿enie VALUES(2,'klimatyzacja',2000);
INSERT INTO dodatkowe_wyposa¿enie VALUES(3,'nawigacja',1000);
INSERT INTO dodatkowe_wyposa¿enie VALUES(4,'system audio',5000);
INSERT INTO dodatkowe_wyposa¿enie VALUES(5,'system parkowania',1500);

INSERT INTO dostawa VALUES(1,2, '2018-01-02');

INSERT INTO dostawa VALUES(2,1, '2018-01-02');

INSERT INTO dostawa VALUES(3,5, '2018-01-22');

INSERT INTO dostawa VALUES(4,1, '2018-01-25');

INSERT INTO dostawa VALUES(5,2, '2018-01-11');

INSERT INTO dostawa VALUES(6,3, '2018-01-06');

INSERT INTO dostawa VALUES(7,4, '2018-01-07');

INSERT INTO dostawa_pozycja VALUES(1,1);

INSERT INTO dostawa_pozycja VALUES(1,2);

INSERT INTO dostawa_pozycja VALUES(1,3);

INSERT INTO dostawa_pozycja VALUES(2,4);

INSERT INTO dostawa_pozycja VALUES(3,5);

INSERT INTO dostawa_pozycja VALUES(3,6);

INSERT INTO samochod_wyposazenie VALUES(1,1);
INSERT INTO samochod_wyposazenie VALUES(1,2);
INSERT INTO samochod_wyposazenie VALUES(1,4);
INSERT INTO samochod_wyposazenie VALUES(2,5);
INSERT INTO samochod_wyposazenie VALUES(2,1);
INSERT INTO samochod_wyposazenie VALUES(3,2);
INSERT INTO samochod_wyposazenie VALUES(4,5);
INSERT INTO samochod_wyposazenie VALUES(4,4);
INSERT INTO samochod_wyposazenie VALUES(5,5);

INSERT INTO samochod_wyposazenie VALUES(1,1);

INSERT INTO samochod_wyposazenie VALUES(1,2);

INSERT INTO samochod_wyposazenie VALUES(1,4);

INSERT INTO samochod_wyposazenie VALUES(2,5);

INSERT INTO samochod_wyposazenie VALUES(2,1);

INSERT INTO samochod_wyposazenie VALUES(3,2);

INSERT INTO samochod_wyposazenie VALUES(4,5);

INSERT INTO samochod_wyposazenie VALUES(4,4);

INSERT INTO samochod_wyposazenie VALUES(5,5);

INSERT INTO zamowienie VALUES(1,'2018-01-19',1,1,5);

INSERT INTO zamowienie VALUES(2,'2018-01-12',1,2,4);

INSERT INTO zamowienie VALUES(3,'2018-01-11',3,3,3);

INSERT INTO zamowienie VALUES(4,'2018-01-22',1,4,2);

INSERT INTO zamowienie VALUES(5,'2018-01-31',2,5,1);

INSERT INTO zamowienie VALUES(6,'2018-01-20',3,5,1);

INSERT INTO zamowienie_pozycja VALUES(1,1);

INSERT INTO zamowienie_pozycja VALUES(1,2);

INSERT INTO zamowienie_pozycja VALUES(2,3);

INSERT INTO zamowienie_pozycja VALUES(2,4);

INSERT INTO zamowienie_pozycja VALUES(3,5);

INSERT INTO zamowienie_pozycja VALUES(4,3);

INSERT INTO zamowienie_pozycja VALUES(5,6);

INSERT INTO zamowienie_pozycja VALUES(6,2);
