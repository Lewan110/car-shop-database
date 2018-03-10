
--  DDL for Sequence SEQ_SAMOCHOD
--------------------------------------------------------

   CREATE SEQUENCE  "ADRIAN"."SEQ_SAMOCHOD"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 30 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_WYPOSAZENIE
--------------------------------------------------------

   CREATE SEQUENCE  "ADRIAN"."SEQ_WYPOSAZENIE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 35 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table DODATKOWE_WYPOSAZENIE
--------------------------------------------------------

  CREATE TABLE "ADRIAN"."DODATKOWE_WYPOSAZENIE" 
   (	"ID_DODATKOWE_WYPOSAZENIE" NUMBER(*,0), 
	"NAZWA" VARCHAR2(50 BYTE), 
	"CENA" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DOSTAWA
--------------------------------------------------------

  CREATE TABLE "ADRIAN"."DOSTAWA" 
   (	"ID_DOSTAWA" NUMBER(*,0), 
	"ID_DOSTAWCA" NUMBER(*,0), 
	"DATA" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DOSTAWA_POZYCJA
--------------------------------------------------------

  CREATE TABLE "ADRIAN"."DOSTAWA_POZYCJA" 
   (	"ID_DOSTAWA" NUMBER(*,0), 
	"ID_SAMOCHOD" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DOSTAWCA
--------------------------------------------------------

  CREATE TABLE "ADRIAN"."DOSTAWCA" 
   (	"ID_DOSTAWCA" NUMBER(*,0), 
	"NAZWA_FIRMY" VARCHAR2(50 BYTE), 
	"NIP" VARCHAR2(9 BYTE), 
	"ULICA" VARCHAR2(50 BYTE), 
	"NR_DOMU" NUMBER(*,0), 
	"KOD_POCZTOWY" VARCHAR2(6 BYTE), 
	"MIASTO" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table KATEGORIA
--------------------------------------------------------

  CREATE TABLE "ADRIAN"."KATEGORIA" 
   (	"ID_KATEGORIA" NUMBER(*,0), 
	"NAZWA" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table KLIENT
--------------------------------------------------------

  CREATE TABLE "ADRIAN"."KLIENT" 
   (	"ID_KLIENT" NUMBER(*,0), 
	"IMIE" VARCHAR2(50 BYTE), 
	"NAZWISKO" VARCHAR2(50 BYTE), 
	"NAZWA_FIRMY" VARCHAR2(50 BYTE), 
	"NIP" VARCHAR2(9 BYTE), 
	"ULICA" VARCHAR2(50 BYTE), 
	"NR_DOMU" NUMBER(*,0), 
	"NR_MIESZKANIA" NUMBER(*,0), 
	"KOD_POCZTOWY" VARCHAR2(6 BYTE), 
	"MIASTO" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PLATNOSC
--------------------------------------------------------

  CREATE TABLE "ADRIAN"."PLATNOSC" 
   (	"ID_PLATNOSC" NUMBER(*,0), 
	"TYP" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PRACOWNIK
--------------------------------------------------------

  CREATE TABLE "ADRIAN"."PRACOWNIK" 
   (	"ID_PRACOWNIK" NUMBER(*,0), 
	"IMIE" VARCHAR2(50 BYTE), 
	"NAZWISKO" VARCHAR2(50 BYTE), 
	"DATA_ZATRUDNIENIA" DATE, 
	"ULICA" VARCHAR2(50 BYTE), 
	"NR_DOMU" NUMBER(*,0), 
	"NR_MIESZKANIA" NUMBER(*,0), 
	"KOD_POCZTOWY" VARCHAR2(6 BYTE), 
	"MIASTO" VARCHAR2(50 BYTE), 
	"PREMIA" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PRODUCENT
--------------------------------------------------------

  CREATE TABLE "ADRIAN"."PRODUCENT" 
   (	"ID_PRODUCENT" NUMBER(*,0), 
	"NAZWA" VARCHAR2(50 BYTE), 
	"KRAJ" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SAMOCHOD
--------------------------------------------------------

  CREATE TABLE "ADRIAN"."SAMOCHOD" 
   (	"ID_SAMOCHOD" NUMBER(*,0), 
	"MODEL" VARCHAR2(50 BYTE), 
	"ILOSC_SIEDZEN" NUMBER(*,0), 
	"MOC_SILNIKA" NUMBER(*,0), 
	"ROK_PRODUKCJI" NUMBER(*,0), 
	"CENA" NUMBER(*,0), 
	"BONUS_ZA_SPRZEDANIE" NUMBER(*,0), 
	"ID_KATEGORIA" NUMBER(*,0), 
	"ID_PRODUCENT" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SAMOCHOD_WYPOSAZENIE
--------------------------------------------------------

  CREATE TABLE "ADRIAN"."SAMOCHOD_WYPOSAZENIE" 
   (	"ID_DODATKOWE_WYPOSAZENIE" NUMBER(*,0), 
	"ID_SAMOCHOD" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table WAHANIA_CEN_SAM
--------------------------------------------------------

  CREATE TABLE "ADRIAN"."WAHANIA_CEN_SAM" 
   (	"ID_SAMOCHOD" NUMBER(*,0), 
	"DATA" DATE, 
	"STARA_CENA" NUMBER(*,0), 
	"NOWA_CENA" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ZAMOWIENIE
--------------------------------------------------------

  CREATE TABLE "ADRIAN"."ZAMOWIENIE" 
   (	"ID_ZAMOWIENIE" NUMBER(*,0), 
	"DATA_ZAMOWIENIA" DATE, 
	"ID_PLATNOSC" NUMBER(*,0), 
	"ID_KLIENT" NUMBER(*,0), 
	"ID_PRACOWNIK" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ZAMOWIENIE_POZYCJA
--------------------------------------------------------

  CREATE TABLE "ADRIAN"."ZAMOWIENIE_POZYCJA" 
   (	"ID_ZAMOWIENIE" NUMBER(*,0), 
	"ID_SAMOCHOD" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ZMIANA_BONUSU
--------------------------------------------------------

  CREATE TABLE "ADRIAN"."ZMIANA_BONUSU" 
   (	"ID_SAMOCHOD" NUMBER(*,0), 
	"DATA_ZMIANY" DATE, 
	"STARY_BONUS" NUMBER(*,0), 
	"NOWY_BONUS" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for View KLIENCI_Z_OSTATNICH_30_DNI
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ADRIAN"."KLIENCI_Z_OSTATNICH_30_DNI" ("ID_KLIENT", "IMIE", "NAZWISKO", "DATA_ZAMOWIENIA", "PRACOWNIK_OBSLUGUJACY") AS 
  SELECT distinct k.id_klient,k.imie,k.nazwisko, z.data_zamowienia,p.nazwisko as pracownik_obslugujacy
    FROM klient k join zamowienie z on k.id_klient=z.id_klient
        join pracownik p on p.id_pracownik=z.id_pracownik
    WHERE z.data_zamowienia>sysdate-30
    order by 1 asc
;
--------------------------------------------------------
--  DDL for View KTO_BYL
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ADRIAN"."KTO_BYL" ("IMIE", "NAZWISKO", "DATA_WIZYTY") AS 
  select k.imie,k.nazwisko, z.data_zamowienia as data_wizyty
    from klient k join zamowienie z on k.id_klient=z.id_klient
        WHERE z.data_zamowienia>sysdate-183
UNION ALL
    select p.imie,p.nazwisko,z.data_zamowienia
        from pracownik p join zamowienie z on p.id_pracownik=z.id_pracownik
            WHERE z.data_zamowienia>sysdate-183
UNION ALL
    select d.nazwa_firmy,null,dst.data
        from dostawca d join dostawa dst on d.id_dostawca=dst.id_dostawca
        where dst.data>sysdate-183
order by 3 desc
;
--------------------------------------------------------
--  DDL for View SPRZEDAWCY_NIEMIECKICH_AUT
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ADRIAN"."SPRZEDAWCY_NIEMIECKICH_AUT" ("ID_PRACOWNIK", "IMIE", "NAZWISKO", "DATA_ZAMOWIENIA", "NAZWA", "MODEL") AS 
  SELECT p.id_pracownik,p.imie,p.nazwisko,z.data_zamowienia,prod.nazwa, s.model 
    FROM pracownik p, zamowienie z, zamowienie_pozycja zp, samochod s, producent prod
    WHERE p.id_pracownik=z.id_pracownik
    	AND z.id_zamowienie=zp.id_zamowienie
    	AND zp.id_samochod=s.id_samochod
    	AND s.id_producent=prod.id_producent
   	AND prod.kraj='Niemcy'
    ORDER BY p.id_pracownik
;
--------------------------------------------------------
--  DDL for View TEGOROCZNE_SPRZ_SAM
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ADRIAN"."TEGOROCZNE_SPRZ_SAM" ("ID_SAMOCHOD", "CENA", "CENA_I_DOD_WYPOSAZENIE") AS 
  select s.id_samochod,s.cena,s.cena+sum(dw.cena) as cena_i_dod_wyposazenie
    from samochod s join ZAMOWIENIE_POZYCJA zp on s.id_samochod=zp.id_samochod 
    	join zamowienie z on z.ID_ZAMOWIENIE=zp.ID_ZAMOWIENIE
    	join samochod_wyposazenie sw on sw.id_samochod=s.id_samochod
    	join dodatkowe_wyposazenie dw on sw.id_dodatkowe_wyposazenie=dw.id_dodatkowe_wyposazenie
    where extract(year from z.data_zamowienia)=extract(year from sysdate)
    group by s.id_samochod,s.cena
    order by 1
;
--------------------------------------------------------
--  DDL for Materialized View UZYCIA_KART_POD_W_STYCZNIU
--------------------------------------------------------

  CREATE MATERIALIZED VIEW "ADRIAN"."UZYCIA_KART_POD_W_STYCZNIU" ("ID_KLIENT", "IMIE", "NAZWISKO", "DATA_ZAMOWIENIA")
  AS SELECT k.id_klient,k.imie,k.nazwisko,z.data_zamowienia
	FROM klient k,zamowienie z, platnosc plat
	WHERE k.id_klient=z.id_klient
		AND z.id_platnosc=plat.id_platnosc
		AND plat.typ='karta podarunkowa'
		AND TO_CHAR(z.data_zamowienia, 'MM') = '01';

--------------------------------------------------------
--  DDL for Index IDX_PLATNOSC
--------------------------------------------------------

  CREATE INDEX "ADRIAN"."IDX_PLATNOSC" ON "ADRIAN"."PLATNOSC" ("ID_PLATNOSC", "TYP") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index KATEGORIA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADRIAN"."KATEGORIA_PK" ON "ADRIAN"."KATEGORIA" ("ID_KATEGORIA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PRODUCENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADRIAN"."PRODUCENT_PK" ON "ADRIAN"."PRODUCENT" ("ID_PRODUCENT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SAMOCHOD_MODELE
--------------------------------------------------------

  CREATE INDEX "ADRIAN"."SAMOCHOD_MODELE" ON "ADRIAN"."SAMOCHOD" ("ID_SAMOCHOD", "MODEL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index DOSTAWA_POZYCJA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADRIAN"."DOSTAWA_POZYCJA_PK" ON "ADRIAN"."DOSTAWA_POZYCJA" ("ID_DOSTAWA", "ID_SAMOCHOD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index DATA_ZAMOWIENIA
--------------------------------------------------------

  CREATE INDEX "ADRIAN"."DATA_ZAMOWIENIA" ON "ADRIAN"."ZAMOWIENIE" ("DATA_ZAMOWIENIA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PRACOWNIK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADRIAN"."PRACOWNIK_PK" ON "ADRIAN"."PRACOWNIK" ("ID_PRACOWNIK") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PRACOWNIK_IMIE_NAZWISKO
--------------------------------------------------------

  CREATE INDEX "ADRIAN"."PRACOWNIK_IMIE_NAZWISKO" ON "ADRIAN"."PRACOWNIK" ("IMIE", "NAZWISKO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PLATNOSC_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADRIAN"."PLATNOSC_PK" ON "ADRIAN"."PLATNOSC" ("ID_PLATNOSC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index KLIENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADRIAN"."KLIENT_PK" ON "ADRIAN"."KLIENT" ("ID_KLIENT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index ZAMOWIENIE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADRIAN"."ZAMOWIENIE_PK" ON "ADRIAN"."ZAMOWIENIE" ("ID_ZAMOWIENIE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index ZAMOWIENIE_POZYCJA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADRIAN"."ZAMOWIENIE_POZYCJA_PK" ON "ADRIAN"."ZAMOWIENIE_POZYCJA" ("ID_ZAMOWIENIE", "ID_SAMOCHOD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index DOSTAWCA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADRIAN"."DOSTAWCA_PK" ON "ADRIAN"."DOSTAWCA" ("ID_DOSTAWCA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SAMOCHOD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADRIAN"."SAMOCHOD_PK" ON "ADRIAN"."SAMOCHOD" ("ID_SAMOCHOD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SAMOCHOD_WYPOSAZENIE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADRIAN"."SAMOCHOD_WYPOSAZENIE_PK" ON "ADRIAN"."SAMOCHOD_WYPOSAZENIE" ("ID_DODATKOWE_WYPOSAZENIE", "ID_SAMOCHOD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index DODATKOWE_WYPOSAZENIE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADRIAN"."DODATKOWE_WYPOSAZENIE_PK" ON "ADRIAN"."DODATKOWE_WYPOSAZENIE" ("ID_DODATKOWE_WYPOSAZENIE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index DOSTAWA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADRIAN"."DOSTAWA_PK" ON "ADRIAN"."DOSTAWA" ("ID_DOSTAWA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Trigger ID_SAMOCHOD_BI
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADRIAN"."ID_SAMOCHOD_BI" 
BEFORE INSERT ON samochod
FOR EACH ROW
  WHEN (NEW.id_samochod IS NULL) BEGIN
	SELECT seq_samochod.nextval INTO :NEW.id_samochod
	FROM dual;
END;

/
ALTER TRIGGER "ADRIAN"."ID_SAMOCHOD_BI" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ID_WYPOSAZENIE_BI
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADRIAN"."ID_WYPOSAZENIE_BI" 
BEFORE INSERT OR UPDATE ON DODATKOWE_WYPOSAZENIE

FOR EACH ROW
  WHEN (NEW.id_dodatkowe_wyposazenie IS NULL) BEGIN
	SELECT seq_wyposazenie.nextval INTO :NEW.id_dodatkowe_wyposazenie
	FROM dual;
END;
/
ALTER TRIGGER "ADRIAN"."ID_WYPOSAZENIE_BI" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PREMIA_SPRZEDAZOWA
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADRIAN"."PREMIA_SPRZEDAZOWA" 
BEFORE INSERT ON zamowienie
FOR EACH ROW
DECLARE
CURSOR kursor is select p.id_pracownik, z.id_zamowienie, s.cena
        from zamowienie z join pracownik p on z.id_pracownik=p.id_pracownik
        	join zamowienie_pozycja zp on zp.id_zamowienie=z.id_zamowienie
        	join samochod s on s.id_samochod=zp.id_samochod
        where z.data_zamowienia>sysdate-14
        	and p.id_pracownik=:new.id_pracownik;
ilosc_sprz number;

BEGIN

ilosc_sprz:=0;

for row in kursor 
loop
	IF row.cena>50000 THEN
		ilosc_sprz:=ilosc_sprz+1;
	END IF;
end loop;

IF ilosc_sprz>2 THEN
	update pracownik
	set premia=5000
	where id_pracownik=:new.id_pracownik;
END IF;

END;
/
ALTER TRIGGER "ADRIAN"."PREMIA_SPRZEDAZOWA" ENABLE;
--------------------------------------------------------
--  DDL for Trigger REZYGNACJA
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADRIAN"."REZYGNACJA" 
BEFORE DELETE ON ZAMOWIENIE_POZYCJA
FOR EACH ROW

DECLARE
pragma autonomous_transaction;
stara_cena number;
nowa_cena number;
id_prac number;
usun_sam_cena number;

BEGIN
SELECT z.id_pracownik into id_prac 
        from zamowienie_pozycja zp join zamowienie z on zp.id_zamowienie=z.id_zamowienie
        where z.id_zamowienie=:old.id_zamowienie
              and rownum = 1;

select sum(s.cena) into stara_cena 
            from zamowienie z join zamowienie_pozycja zp on z.id_zamowienie=zp.id_zamowienie
                 join samochod s on zp.id_samochod=s.id_samochod
            where z.id_pracownik=id_prac
                  and rownum = 1
                  and z.id_zamowienie=:old.id_zamowienie
            group by z.id_pracownik;
            
select cena into usun_sam_cena 
            from samochod 
            where id_samochod=:old.id_samochod
                  and rownum=1;
    
            
nowa_cena:=stara_cena-usun_sam_cena;
            

IF 0.5*stara_cena>nowa_cena AND usun_sam_cena>50000 THEN

    UPDATE pracownik
        SET premia=premia-premia*0.2
        where id_pracownik=id_prac;
        

END IF;
commit;
END;
/
ALTER TRIGGER "ADRIAN"."REZYGNACJA" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ZMIANA_CENY_SAM
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADRIAN"."ZMIANA_CENY_SAM" 
BEFORE UPDATE ON SAMOCHOD 
FOR EACH ROW
DECLARE
BEGIN
  IF :new.cena!=:old.cena THEN
  INSERT INTO wahania_cen_sam
    VALUES(:new.id_samochod,
    sysdate,
    :old.cena,
    :new.cena);
    END IF;
END;
/
ALTER TRIGGER "ADRIAN"."ZMIANA_CENY_SAM" ENABLE;
--------------------------------------------------------
--  DDL for Procedure DODAJ_WYPOSAZENIE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "ADRIAN"."DODAJ_WYPOSAZENIE" (id_sam integer,nazwa_wyp varchar2, cena_wyp integer) AS 
PRAGMA AUTONOMOUS_TRANSACTION;  

id_nowe_wyp NUMBER;
BEGIN
INSERT INTO DODATKOWE_WYPOSAZENIE(id_dodatkowe_wyposazenie,nazwa,cena)
VALUES (null,nazwa_wyp,cena_wyp);

SELECT id_dodatkowe_wyposazenie into id_nowe_wyp
        from dodatkowe_wyposazenie
        where nazwa=nazwa_wyp
            and cena=cena_wyp;

INSERT INTO SAMOCHOD_WYPOSAZENIE(id_dodatkowe_wyposazenie,id_samochod)
	VALUES(id_nowe_wyp,id_sam);
COMMIT;   

EXCEPTION
 WHEN OTHERS THEN
    ROLLBACK;
    raise_application_error (-20002,'Wystapil blad przy wprowadzaniu danych');
    
 
END ;

/
--------------------------------------------------------
--  DDL for Procedure OBNIZKA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "ADRIAN"."OBNIZKA" 
(rok IN number, procent IN number default 1)
IS
BEGIN
  UPDATE samochod set cena=cena-cena*(procent/100)
  where rok_produkcji=rok;
END;

/
--------------------------------------------------------
--  DDL for Procedure PODWYZKA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "ADRIAN"."PODWYZKA" 
(rok IN number, procent IN number default 1)
AS PRAGMA AUTONOMOUS_TRANSACTION;

zly_zakres exception;


BEGIN
  UPDATE samochod set cena=cena+cena*(procent/100)
  	WHERE rok_produkcji=rok;

IF procent<0 OR procent>100 THEN 
    raise zly_zakres;
END IF;

COMMIT;

EXCEPTION
WHEN zly_zakres THEN
    ROLLBACK;
    raise_application_error (-20002,'Zly zakres obnizki');
END;

/
--------------------------------------------------------
--  DDL for Procedure PREMIA_ZA_SAMOCHOD
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "ADRIAN"."PREMIA_ZA_SAMOCHOD" (sam_model VARCHAR) AS 
PRAGMA AUTONOMOUS_TRANSACTION;  
CURSOR kursor IS SELECT s.id_samochod, s.cena, z.data_zamowienia, z.id_pracownik
        from zamowienie z join zamowienie_pozycja zp on z.id_zamowienie=zp.id_zamowienie
        	join samochod s on s.id_samochod=zp.id_samochod
        where s.cena>100000
        	and s.model=sam_model;

row kursor%rowtype;        
var NUMBER;
za_duza_premia exception;

BEGIN

var:=0;

for row in kursor
loop

    update pracownik 
    set premia=5000
    where id_pracownik=row.id_pracownik;
    var:=var+5000;
end loop;
    
if var>=10000 then 
    ROLLBACK;
   else
    COMMIT;
end if;

END;

/
--------------------------------------------------------
--  DDL for Procedure PRZEPROWADZKA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "ADRIAN"."PRZEPROWADZKA" 
(ulica_p VARCHAR, nr_domu NUMBER,  kod_pocztowy_p VARCHAR, miasto_p VARCHAR, pojemnosc NUMBER) AS 


CURSOR kursor IS SELECT id_pracownik
                from pracownik
                where pracownik.miasto!=miasto_p;

var NUMBER;

zbyt_wielu_prac exception;

BEGIN

SAVEPOINT sp;
var:=0;

for row in kursor 
loop
	var:=var+1;
end loop;

if var>pojemnosc then 
	raise zbyt_wielu_prac;
end if;

update pracownik
	set  miasto=miasto_p ,
	ulica=ulica_p,
	nr_domu=nr_domu_p,
	kod_pocztowy=kod_pocztowy_p
where miasto!=miasto_p;
EXCEPTION
    WHEN zbyt_wielu_prac THEN
    ROLLBACK TO sp;
    raise_application_error 
    (-20001,'Zbyt duzo pracownikow, nie zmieszcza sie!');

END;

/
--------------------------------------------------------
--  DDL for Procedure ROCZNA_SPRZEDAZ
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "ADRIAN"."ROCZNA_SPRZEDAZ" (id NUMBER)
AS
  sprzedaz NUMBER(12, 2);
BEGIN

  SELECT SUM(s.cena)INTO sprzedaz
    from pracownik p join zamowienie z on p.id_pracownik=z.id_pracownik 
    	join zamowienie_pozycja zp on zp.id_zamowienie=z.id_zamowienie
    	join samochod s on s.id_samochod=zp.id_samochod
    WHERE z.data_zamowienia>sysdate-365
   	 AND p.id_pracownik=id;
END;

/
--------------------------------------------------------
--  DDL for Function ILOSC_SPRZ_SAM
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "ADRIAN"."ILOSC_SPRZ_SAM" (rok IN NUMBER)
RETURN NUMBER IS liczba_samochodow NUMBER;
    
BEGIN
DECLARE 

brak_samochodow exception;
licznik number;

row samochod%rowtype;
CURSOR kursor is 
        select distinct rok_produkcji
            from samochod;


BEGIN
licznik:=0;

for row in kursor loop
    IF row.rok_produkcji=rok THEN
        licznik:=licznik+1;
    END IF;
end loop;

IF licznik=0 THEN raise brak_samochodow;
END IF;

select count(s.id_samochod) into liczba_samochodow
    from samochod s join ZAMOWIENIE_POZYCJA zp on s.id_samochod=zp.id_samochod 
        join zamowienie z on z.ID_ZAMOWIENIE=zp.ID_ZAMOWIENIE
    where s.rok_produkcji=rok;

RETURN liczba_samochodow;

EXCEPTION 
WHEN brak_samochodow THEN
    raise_application_error (-20002,'Brak samochodow o takim roku produkcji');
END;
END;

/
--------------------------------------------------------
--  DDL for Function KONTROLA
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "ADRIAN"."KONTROLA" (miesiace IN NUMBER)  RETURN NUMBER IS var NUMBER; 
PRAGMA AUTONOMOUS_TRANSACTION;
BEGIN

DECLARE
row dostawa%rowtype;
roznica_data number;
suma_roznica_data number;
za_duza_roznica exception;

CURSOR kursor is
        select d.id_dostawca,d.id_dostawa, d.data, sum(s.cena) suma
            from dostawa d inner join dostawa_pozycja dp on d.id_dostawa=dp.id_dostawa
            inner join samochod s on s.id_samochod=dp.id_samochod
        WHERE extract (year from sysdate)-extract(year from d.data)=0
        Group by d.id_dostawca,d.id_dostawa, d.data;

BEGIN
var:=0;
suma_roznica_data:=0;

for row in kursor loop
IF row.suma>50000 THEN
        UPDATE dostawa
            set dostawa.data=ADD_MONTHS(SYSDATE, -miesiace)
            where dostawa.id_dostawa=row.id_dostawa;
            var:=var+row.suma;
            SELECT TRUNC (SYSDATE) -dostawa.data into roznica_data
                    from dostawa
                    where  dostawa.id_dostawa=row.id_dostawa;
            suma_roznica_data:=suma_roznica_data+roznica_data;
END IF;
end loop;

IF suma_roznica_data>1000 THEN raise za_duza_roznica;
END IF;
COMMIT;
  RETURN var;
  
EXCEPTION 
WHEN za_duza_roznica THEN
    ROLLBACK;
    raise_application_error (-20002,'Zbyt duza roznica dat - przekret nie przejdzie');
    
END;
END;

/
--------------------------------------------------------
--  DDL for Function NAJ_SPRZEDAWCY
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "ADRIAN"."NAJ_SPRZEDAWCY" (ilosc IN NUMBER) 
RETURN VARCHAR2 IS text VARCHAR2(1000);

licznik number;
var_imie varchar(50);
var_nazwisko varchar(50);
var_suma number;
pozycja number;
zla_ilosc exception;
CURSOR kursor is 
        SELECT  p.imie, p.nazwisko, sum(s.cena)
            FROM pracownik p inner join zamowienie z on p.id_pracownik=z.id_pracownik
                 inner join zamowienie_pozycja zp on zp.id_zamowienie=z.id_zamowienie
                 inner join samochod s on s.id_samochod=zp.id_samochod
            GROUP BY p.imie, p.nazwisko
            ORDER BY sum(s.cena) DESC;

BEGIN

IF ilosc>10 OR ilosc<1 THEN raise zla_ilosc;
END IF;

licznik:=ilosc;
pozycja:=1;
open kursor;


WHILE licznik>0
LOOP
    fetch kursor into var_imie, var_nazwisko,var_suma;
        EXIT WHEN kursor%NOTFOUND;
    text:=text||' '||pozycja||'. '||var_imie||' '||var_nazwisko||' '||var_suma||' ';
    licznik:=licznik-1;
    pozycja:=pozycja+1;
END Loop;

close kursor;
RETURN text;

EXCEPTION
WHEN zla_ilosc THEN
  raise_application_error (-20002,'Nieprawidlowa ilosc pracownikow');
  

END;

/
--------------------------------------------------------
--  DDL for Function NAJ_SPRZEDAZ_MARKI
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "ADRIAN"."NAJ_SPRZEDAZ_MARKI" (nazwa_marki varchar2) 
RETURN NUMBER IS laczna_cena NUMBER;

BEGIN


DECLARE 
row samochod%rowtype;
laczna_cena number;

CURSOR kursor IS 
        SELECT * 
        from zamowienie z join zamowienie_pozycja zp on z.id_zamowienie=zp.id_zamowienie
            join samochod s on s.id_samochod=zp.id_samochod
            join producent p on p.id_producent=s.id_producent
        where p.nazwa=nazwa_marki;

begin

laczna_cena:=0;

    for row in kursor loop
        laczna_cena:=laczna_cena+row.cena;
    end loop;

end;
return laczna_cena;
END ;

/
--------------------------------------------------------
--  DDL for Function OBROT_W_ROKU
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "ADRIAN"."OBROT_W_ROKU" (rok NUMBER) RETURN NUMBER IS
obrot NUMBER;

BEGIN
    select sum(s.cena+sum(dw.cena)) into obrot
        from samochod s join ZAMOWIENIE_POZYCJA zp on s.id_samochod=zp.id_samochod 
            join zamowienie z on z.ID_ZAMOWIENIE=zp.ID_ZAMOWIENIE
            join samochod_wyposazenie sw on sw.id_samochod=s.id_samochod
            join dodatkowe_wyposazenie dw on sw.id_dodatkowe_wyposazenie=dw.id_dodatkowe_wyposazenie
        where extract(year from z.data_zamowienia)=rok
        group by s.cena;

RETURN obrot;
END;

/
--------------------------------------------------------
--  DDL for Function PODWYZKA_NAJ_SPRZ
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "ADRIAN"."PODWYZKA_NAJ_SPRZ" (procent integer) 
RETURN NUMBER IS ilosc_podwyzek NUMBER;

PRAGMA AUTONOMOUS_TRANSACTION;     
BEGIN
DECLARE 
row samochod%rowtype;
laczna_cena number;


CURSOR kursor IS 
select p.id_producent, count(s.id_samochod) as liczba_sprzedanych
    from zamowienie z join zamowienie_pozycja zp on z.id_zamowienie=zp.id_zamowienie
        join samochod s on zp.id_samochod=s.id_samochod
        join producent p on p.id_producent=s.id_producent
     where z.data_zamowienia>sysdate-30
     group by p.id_producent
     having count(s.id_samochod)=(select min(count(s.id_samochod)) 
                            from zamowienie z join zamowienie_pozycja zp on z.id_zamowienie=zp.id_zamowienie
                                join samochod s on zp.id_samochod=s.id_samochod
                                join producent p on p.id_producent=s.id_producent
                            where z.data_zamowienia>sysdate-30
                            group by p.id_producent);
                            
   
begin
laczna_cena:=0;
ilosc_podwyzek:=0;

    for row in kursor loop
     ilosc_podwyzek:=ilosc_podwyzek+row.liczba_sprzedanych;
        update samochod
                set cena=cena+cena*(procent/100)
                where id_producent=row.id_producent;
    end loop;
    
IF ilosc_podwyzek>2 THEN
    ROLLBACK;
    ilosc_podwyzek:=0;
        ELSE COMMIT;
END IF;

end;
return ilosc_podwyzek;
END ;

/
--------------------------------------------------------
--  DDL for Function SPRZEDAZ_MARKI
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "ADRIAN"."SPRZEDAZ_MARKI" (nazwa_marki VARCHAR2) 
RETURN NUMBER IS laczna_cena NUMBER;
BEGIN
DECLARE 
row samochod%rowtype;
laczna_cena number;


CURSOR kursor IS SELECT p.nazwa,s.cena 
        from zamowienie z join zamowienie_pozycja zp on z.id_zamowienie=zp.id_zamowienie
            join samochod s on s.id_samochod=zp.id_samochod
            join producent p on p.id_producent=s.id_producent
        where p.nazwa=nazwa_marki;
begin
laczna_cena:=0;

    for row in kursor loop
         laczna_cena:=laczna_cena+row.cena;
    end loop;
end;
return laczna_cena;
END ;

/
--------------------------------------------------------
--  Constraints for Table PRODUCENT
--------------------------------------------------------

  ALTER TABLE "ADRIAN"."PRODUCENT" MODIFY ("ID_PRODUCENT" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."PRODUCENT" MODIFY ("NAZWA" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."PRODUCENT" MODIFY ("KRAJ" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."PRODUCENT" ADD CONSTRAINT "PRODUCENT_PK" PRIMARY KEY ("ID_PRODUCENT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DODATKOWE_WYPOSAZENIE
--------------------------------------------------------

  ALTER TABLE "ADRIAN"."DODATKOWE_WYPOSAZENIE" MODIFY ("ID_DODATKOWE_WYPOSAZENIE" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."DODATKOWE_WYPOSAZENIE" MODIFY ("NAZWA" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."DODATKOWE_WYPOSAZENIE" MODIFY ("CENA" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."DODATKOWE_WYPOSAZENIE" ADD CONSTRAINT "DODATKOWE_WYPOSAZENIE_PK" PRIMARY KEY ("ID_DODATKOWE_WYPOSAZENIE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DOSTAWA
--------------------------------------------------------

  ALTER TABLE "ADRIAN"."DOSTAWA" MODIFY ("ID_DOSTAWA" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."DOSTAWA" MODIFY ("ID_DOSTAWCA" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."DOSTAWA" MODIFY ("DATA" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."DOSTAWA" ADD CONSTRAINT "DOSTAWA_PK" PRIMARY KEY ("ID_DOSTAWA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DOSTAWA_POZYCJA
--------------------------------------------------------

  ALTER TABLE "ADRIAN"."DOSTAWA_POZYCJA" MODIFY ("ID_DOSTAWA" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."DOSTAWA_POZYCJA" MODIFY ("ID_SAMOCHOD" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."DOSTAWA_POZYCJA" ADD CONSTRAINT "DOSTAWA_POZYCJA_PK" PRIMARY KEY ("ID_DOSTAWA", "ID_SAMOCHOD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ZAMOWIENIE
--------------------------------------------------------

  ALTER TABLE "ADRIAN"."ZAMOWIENIE" MODIFY ("ID_ZAMOWIENIE" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."ZAMOWIENIE" MODIFY ("DATA_ZAMOWIENIA" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."ZAMOWIENIE" MODIFY ("ID_PLATNOSC" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."ZAMOWIENIE" MODIFY ("ID_KLIENT" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."ZAMOWIENIE" MODIFY ("ID_PRACOWNIK" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."ZAMOWIENIE" ADD CONSTRAINT "ZAMOWIENIE_PK" PRIMARY KEY ("ID_ZAMOWIENIE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ZMIANA_BONUSU
--------------------------------------------------------

  ALTER TABLE "ADRIAN"."ZMIANA_BONUSU" MODIFY ("ID_SAMOCHOD" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."ZMIANA_BONUSU" MODIFY ("DATA_ZMIANY" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."ZMIANA_BONUSU" MODIFY ("STARY_BONUS" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."ZMIANA_BONUSU" MODIFY ("NOWY_BONUS" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SAMOCHOD
--------------------------------------------------------

  ALTER TABLE "ADRIAN"."SAMOCHOD" MODIFY ("ID_SAMOCHOD" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."SAMOCHOD" MODIFY ("MODEL" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."SAMOCHOD" MODIFY ("ILOSC_SIEDZEN" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."SAMOCHOD" MODIFY ("MOC_SILNIKA" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."SAMOCHOD" MODIFY ("ROK_PRODUKCJI" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."SAMOCHOD" MODIFY ("CENA" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."SAMOCHOD" MODIFY ("ID_KATEGORIA" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."SAMOCHOD" MODIFY ("ID_PRODUCENT" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."SAMOCHOD" ADD CONSTRAINT "SAMOCHOD_PK" PRIMARY KEY ("ID_SAMOCHOD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table KLIENT
--------------------------------------------------------

  ALTER TABLE "ADRIAN"."KLIENT" MODIFY ("ID_KLIENT" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."KLIENT" MODIFY ("IMIE" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."KLIENT" MODIFY ("NAZWISKO" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."KLIENT" ADD CONSTRAINT "KLIENT_PK" PRIMARY KEY ("ID_KLIENT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SAMOCHOD_WYPOSAZENIE
--------------------------------------------------------

  ALTER TABLE "ADRIAN"."SAMOCHOD_WYPOSAZENIE" MODIFY ("ID_DODATKOWE_WYPOSAZENIE" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."SAMOCHOD_WYPOSAZENIE" MODIFY ("ID_SAMOCHOD" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."SAMOCHOD_WYPOSAZENIE" ADD CONSTRAINT "SAMOCHOD_WYPOSAZENIE_PK" PRIMARY KEY ("ID_DODATKOWE_WYPOSAZENIE", "ID_SAMOCHOD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DOSTAWCA
--------------------------------------------------------

  ALTER TABLE "ADRIAN"."DOSTAWCA" MODIFY ("ID_DOSTAWCA" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."DOSTAWCA" MODIFY ("NAZWA_FIRMY" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."DOSTAWCA" MODIFY ("NIP" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."DOSTAWCA" MODIFY ("ULICA" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."DOSTAWCA" MODIFY ("NR_DOMU" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."DOSTAWCA" MODIFY ("KOD_POCZTOWY" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."DOSTAWCA" MODIFY ("MIASTO" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."DOSTAWCA" ADD CONSTRAINT "DOSTAWCA_PK" PRIMARY KEY ("ID_DOSTAWCA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ZAMOWIENIE_POZYCJA
--------------------------------------------------------

  ALTER TABLE "ADRIAN"."ZAMOWIENIE_POZYCJA" MODIFY ("ID_ZAMOWIENIE" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."ZAMOWIENIE_POZYCJA" MODIFY ("ID_SAMOCHOD" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."ZAMOWIENIE_POZYCJA" ADD CONSTRAINT "ZAMOWIENIE_POZYCJA_PK" PRIMARY KEY ("ID_ZAMOWIENIE", "ID_SAMOCHOD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRACOWNIK
--------------------------------------------------------

  ALTER TABLE "ADRIAN"."PRACOWNIK" MODIFY ("ID_PRACOWNIK" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."PRACOWNIK" MODIFY ("IMIE" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."PRACOWNIK" MODIFY ("NAZWISKO" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."PRACOWNIK" MODIFY ("DATA_ZATRUDNIENIA" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."PRACOWNIK" MODIFY ("ULICA" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."PRACOWNIK" MODIFY ("NR_DOMU" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."PRACOWNIK" MODIFY ("KOD_POCZTOWY" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."PRACOWNIK" MODIFY ("MIASTO" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."PRACOWNIK" ADD CONSTRAINT "PRACOWNIK_PK" PRIMARY KEY ("ID_PRACOWNIK")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PLATNOSC
--------------------------------------------------------

  ALTER TABLE "ADRIAN"."PLATNOSC" MODIFY ("ID_PLATNOSC" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."PLATNOSC" MODIFY ("TYP" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."PLATNOSC" ADD CONSTRAINT "PLATNOSC_PK" PRIMARY KEY ("ID_PLATNOSC")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table KATEGORIA
--------------------------------------------------------

  ALTER TABLE "ADRIAN"."KATEGORIA" MODIFY ("ID_KATEGORIA" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."KATEGORIA" MODIFY ("NAZWA" NOT NULL ENABLE);
  ALTER TABLE "ADRIAN"."KATEGORIA" ADD CONSTRAINT "KATEGORIA_PK" PRIMARY KEY ("ID_KATEGORIA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DOSTAWA
--------------------------------------------------------

  ALTER TABLE "ADRIAN"."DOSTAWA" ADD CONSTRAINT "DOSTAWCA_FK" FOREIGN KEY ("ID_DOSTAWCA")
	  REFERENCES "ADRIAN"."DOSTAWCA" ("ID_DOSTAWCA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DOSTAWA_POZYCJA
--------------------------------------------------------

  ALTER TABLE "ADRIAN"."DOSTAWA_POZYCJA" ADD CONSTRAINT "DOSTAWA_FK" FOREIGN KEY ("ID_DOSTAWA")
	  REFERENCES "ADRIAN"."DOSTAWA" ("ID_DOSTAWA") ENABLE;
  ALTER TABLE "ADRIAN"."DOSTAWA_POZYCJA" ADD CONSTRAINT "SAMOCHOD_DOSTAWA_FK" FOREIGN KEY ("ID_SAMOCHOD")
	  REFERENCES "ADRIAN"."SAMOCHOD" ("ID_SAMOCHOD") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SAMOCHOD
--------------------------------------------------------

  ALTER TABLE "ADRIAN"."SAMOCHOD" ADD CONSTRAINT "KATEGORIA_FK" FOREIGN KEY ("ID_KATEGORIA")
	  REFERENCES "ADRIAN"."KATEGORIA" ("ID_KATEGORIA") ENABLE;
  ALTER TABLE "ADRIAN"."SAMOCHOD" ADD CONSTRAINT "PRODUCENT_FK" FOREIGN KEY ("ID_PRODUCENT")
	  REFERENCES "ADRIAN"."PRODUCENT" ("ID_PRODUCENT") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SAMOCHOD_WYPOSAZENIE
--------------------------------------------------------

  ALTER TABLE "ADRIAN"."SAMOCHOD_WYPOSAZENIE" ADD CONSTRAINT "DODATKOWE_WYPOSAZENIE_FK" FOREIGN KEY ("ID_SAMOCHOD")
	  REFERENCES "ADRIAN"."SAMOCHOD" ("ID_SAMOCHOD") ENABLE;
  ALTER TABLE "ADRIAN"."SAMOCHOD_WYPOSAZENIE" ADD CONSTRAINT "SAMOCHOD_WYPOSAZENIE_FK" FOREIGN KEY ("ID_DODATKOWE_WYPOSAZENIE")
	  REFERENCES "ADRIAN"."DODATKOWE_WYPOSAZENIE" ("ID_DODATKOWE_WYPOSAZENIE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ZAMOWIENIE
--------------------------------------------------------

  ALTER TABLE "ADRIAN"."ZAMOWIENIE" ADD CONSTRAINT "KLIENT_FK" FOREIGN KEY ("ID_KLIENT")
	  REFERENCES "ADRIAN"."KLIENT" ("ID_KLIENT") ENABLE;
  ALTER TABLE "ADRIAN"."ZAMOWIENIE" ADD CONSTRAINT "PLATNOSC_FK" FOREIGN KEY ("ID_PLATNOSC")
	  REFERENCES "ADRIAN"."PLATNOSC" ("ID_PLATNOSC") ENABLE;
  ALTER TABLE "ADRIAN"."ZAMOWIENIE" ADD CONSTRAINT "PRACOWNIK_FK" FOREIGN KEY ("ID_PRACOWNIK")
	  REFERENCES "ADRIAN"."PRACOWNIK" ("ID_PRACOWNIK") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ZAMOWIENIE_POZYCJA
--------------------------------------------------------

  ALTER TABLE "ADRIAN"."ZAMOWIENIE_POZYCJA" ADD CONSTRAINT "SAMOCHOD_ZAMOWIENIE_FK" FOREIGN KEY ("ID_SAMOCHOD")
	  REFERENCES "ADRIAN"."SAMOCHOD" ("ID_SAMOCHOD") ENABLE;
  ALTER TABLE "ADRIAN"."ZAMOWIENIE_POZYCJA" ADD CONSTRAINT "ZAMOWIENIE_FK" FOREIGN KEY ("ID_ZAMOWIENIE")
	  REFERENCES "ADRIAN"."ZAMOWIENIE" ("ID_ZAMOWIENIE") ENABLE;
