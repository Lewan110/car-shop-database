INSERT INTO kategoria(id_kategoria,nazwa) VALUES (1,'osobowy 2-drzwiowy');
INSERT INTO kategoria(id_kategoria,nazwa) VALUES (2,'osobowy 4-drzwiowy');
INSERT INTO kategoria(id_kategoria,nazwa) VALUES (3,'dostawczy');

INSERT INTO producent VALUES(1,'BMW','Niemcy');
INSERT INTO producent VALUES(2,'Audi','Niemcy');
INSERT INTO producent VALUES(3,'Renault','Francja');
INSERT INTO producent VALUES(4,'Dogde','USA');
INSERT INTO producent VALUES(5,'Fiat','Wlochy');

INSERT INTO pracownik VALUES(1,'Adam','Poniedzialek',TO_DATE('22-Kwi-2011','DD-MON-YYYY'),'Polna',5,null,'00-001','Warszawa');
INSERT INTO pracownik VALUES(2,'Adrian','Wtorek',TO_DATE('12-Maj-2012','DD-MON-YYYY'),'Polna',5,null,'00-001','Warszawa');
INSERT INTO pracownik VALUES(3,'Antoni','Kowalski',TO_DATE('12-Maj-2003','DD-MON-YYYY'),'Slowackiego',8,null,'00-002','Radzymin');
INSERT INTO pracownik VALUES(4,'Anna','Pomorska',TO_DATE('12-Sty-2012','DD-MON-YYYY'),'Wolna',5,null,'20-201','Plock');
INSERT INTO pracownik VALUES(5,'Olaf','Sreberko',TO_DATE('12-Lut-2002','DD-MON-YYYY'),'Starowislana',5,5,'44-001','Warszawa');

INSERT INTO klient VALUES(1,'Stanislaw','Schabowy','Wszystko i nic','123456789','Stara',5,null,'00-001','Warszawa');
INSERT INTO klient VALUES(2,'Stanislaw','Wolny',null,null,'Pochodnia',15,null,'00-222','Warszawa');
INSERT INTO klient VALUES(3,'Piotr','£otr','Stare i nowe','121212121','Nowa',5,5,'11-001','Warszawa');
INSERT INTO klient VALUES(4,'Jan','Doskonaly','Mydlo i powidlo','123456123','Mydlana',7,null,'00-111','Wolomin');
INSERT INTO klient VALUES(5,'Anna','Panna',null,null,'Piekna',7,null,'00-001','Warszawa');

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

INSERT INTO dodatkowe_wyposazenie VALUES(1,'aluminiowe felgi',5000);
INSERT INTO dodatkowe_wyposazenie VALUES(2,'klimatyzacja',2000);
INSERT INTO dodatkowe_wyposazenie VALUES(3,'nawigacja',1000);
INSERT INTO dodatkowe_wyposazenie VALUES(4,'system audio',5000);
INSERT INTO dodatkowe_wyposazenie VALUES(5,'system parkowania',1500);

INSERT INTO dostawa VALUES(1,2, TO_DATE('12-Sty-2018','DD-MON-YYYY'));
INSERT INTO dostawa VALUES(2,1, TO_DATE('02-Sty-2018','DD-MON-YYYY'));
INSERT INTO dostawa VALUES(3,5, TO_DATE('05-Sty-2018','DD-MON-YYYY'));
INSERT INTO dostawa VALUES(4,1, TO_DATE('03-Sty-2018','DD-MON-YYYY'));
INSERT INTO dostawa VALUES(5,2, TO_DATE('04-Sty-2018','DD-MON-YYYY'));
INSERT INTO dostawa VALUES(6,3, TO_DATE('07-Sty-2018','DD-MON-YYYY'));
INSERT INTO dostawa VALUES(7,4, TO_DATE('08-Sty-2018','DD-MON-YYYY'));


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

INSERT INTO zamowienie VALUES(1,TO_DATE('18-Sty-2018','DD-MON-YYYY'),1,1,5);
INSERT INTO zamowienie VALUES(2,TO_DATE('18-Sty-2018','DD-MON-YYYY'),1,2,4);
INSERT INTO zamowienie VALUES(3,TO_DATE('18-Sty-2018','DD-MON-YYYY'),3,3,3);
INSERT INTO zamowienie VALUES(4,TO_DATE('19-Sty-2018','DD-MON-YYYY'),1,4,2);
INSERT INTO zamowienie VALUES(5,TO_DATE('20-Sty-2018','DD-MON-YYYY'),2,5,1);
INSERT INTO zamowienie VALUES(6,TO_DATE('20-Sty-2018','DD-MON-YYYY'),3,5,1);

INSERT INTO zamowienie_pozycja VALUES(1,1);
INSERT INTO zamowienie_pozycja VALUES(1,2);
INSERT INTO zamowienie_pozycja VALUES(2,3);
INSERT INTO zamowienie_pozycja VALUES(2,4);
INSERT INTO zamowienie_pozycja VALUES(3,5);
INSERT INTO zamowienie_pozycja VALUES(4,3);
INSERT INTO zamowienie_pozycja VALUES(5,6);
INSERT INTO zamowienie_pozycja VALUES(6,2);


SQL> SET PAGESIZE 1000

SQL> SELECT 'GRANT SELECT, UPDATE, DELETE ON '||TABLE_NAME||' TO <USERNAME>;' FROM USER_TABLES;

GRANT SELECT, UPDATE, DELETE ON DODATKOWE_WYPOSAZENIE TO kierownik;
GRANT SELECT, UPDATE, DELETE ON DOSTAWA TO kierownik;
GRANT SELECT, UPDATE, DELETE ON DOSTAWA_POZYCJA TO kierownik;
GRANT SELECT, UPDATE, DELETE ON DOSTAWCA TO kierownik;
GRANT SELECT, UPDATE, DELETE ON KATEGORIA TO kierownik;
GRANT SELECT, UPDATE, DELETE ON KLIENT TO kierownik;
GRANT SELECT, UPDATE, DELETE ON PLATNOSC TO kierownik;
GRANT SELECT, UPDATE, DELETE ON PRACOWNIK TO kierownik;
GRANT SELECT, UPDATE, DELETE ON PRODUCENT TO kierownik;
GRANT SELECT, UPDATE, DELETE ON SAMOCHOD TO kierownik;
GRANT SELECT, UPDATE, DELETE ON SAMOCHOD_WYPOSAZENIE TO kierownik;
GRANT SELECT, UPDATE, DELETE ON ZAMOWIENIE TO kierownik;
GRANT SELECT, UPDATE, DELETE ON ZAMOWIENIE_POZYCJA TO kierownik;
GRANT SELECT, UPDATE, DELETE ON ZMIANA_BONUSU TO kierownik;
GRANT SELECT, UPDATE, DELETE ON UZYCIA_KART_POD_W_STYCZNIU TO kierownik;


