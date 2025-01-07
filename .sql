--------------------------------------------------------
--  File created - wtorek-stycznia-07-2025   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table GATUNKI
--------------------------------------------------------

  CREATE TABLE "C##student"."GATUNKI" 
   (	"ID" NUMBER(*,0), 
	"NAZWA" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table GRY
--------------------------------------------------------

  CREATE TABLE "C##student"."GRY" 
   (	"ID" NUMBER(*,0), 
	"TYTUL" VARCHAR2(255 BYTE), 
	"DATA_WYDANIA" DATE, 
	"CENA" NUMBER(5,2), 
	"ID_TWORCY" NUMBER(*,0), 
	"ID_WYDAWCY" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table GRY_GATUNKI
--------------------------------------------------------

  CREATE TABLE "C##student"."GRY_GATUNKI" 
   (	"ID_GRY" NUMBER(*,0), 
	"ID_GATUNEK" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table RECENZJE
--------------------------------------------------------

  CREATE TABLE "C##student"."RECENZJE" 
   (	"ID" NUMBER(*,0), 
	"OCENA" NUMBER(3,1), 
	"TRESC" VARCHAR2(4000 BYTE), 
	"ID_GRY" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TWORCY
--------------------------------------------------------

  CREATE TABLE "C##student"."TWORCY" 
   (	"ID" NUMBER(*,0), 
	"NAZWA" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table WYDAWCY
--------------------------------------------------------

  CREATE TABLE "C##student"."WYDAWCY" 
   (	"ID" NUMBER(*,0), 
	"NAZWA" VARCHAR2(255 BYTE), 
	"MARZA_PROCENT" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into "C##student".GATUNKI
SET DEFINE OFF;
Insert into "C##student".GATUNKI (ID,NAZWA) values ('1','RPG');
Insert into "C##student".GATUNKI (ID,NAZWA) values ('2','Sandbox');
Insert into "C##student".GATUNKI (ID,NAZWA) values ('3','Racing');
Insert into "C##student".GATUNKI (ID,NAZWA) values ('4','Battle_Royale');
Insert into "C##student".GATUNKI (ID,NAZWA) values ('6','somegenre');
Insert into "C##student".GATUNKI (ID,NAZWA) values ('7','testgenre');
Insert into "C##student".GATUNKI (ID,NAZWA) values ('5','SomeGenre');
REM INSERTING into "C##student".GRY
SET DEFINE OFF;
Insert into "C##student".GRY (ID,TYTUL,DATA_WYDANIA,CENA,ID_TWORCY,ID_WYDAWCY) values ('1','Gothic',to_date('01/03/15','RR/MM/DD'),'10','1','1');
Insert into "C##student".GRY (ID,TYTUL,DATA_WYDANIA,CENA,ID_TWORCY,ID_WYDAWCY) values ('2','Minecraft',to_date('09/01/20','RR/MM/DD'),'200','2','2');
Insert into "C##student".GRY (ID,TYTUL,DATA_WYDANIA,CENA,ID_TWORCY,ID_WYDAWCY) values ('3','Forza_Horizon',to_date('10/05/30','RR/MM/DD'),'200','2','2');
Insert into "C##student".GRY (ID,TYTUL,DATA_WYDANIA,CENA,ID_TWORCY,ID_WYDAWCY) values ('4','Fortnite',to_date('16/07/30','RR/MM/DD'),'0','3','3');
Insert into "C##student".GRY (ID,TYTUL,DATA_WYDANIA,CENA,ID_TWORCY,ID_WYDAWCY) values ('5','SomeGame',to_date('01/09/11','RR/MM/DD'),'20','4','4');
REM INSERTING into "C##student".GRY_GATUNKI
SET DEFINE OFF;
Insert into "C##student".GRY_GATUNKI (ID_GRY,ID_GATUNEK) values ('1','1');
Insert into "C##student".GRY_GATUNKI (ID_GRY,ID_GATUNEK) values ('2','2');
Insert into "C##student".GRY_GATUNKI (ID_GRY,ID_GATUNEK) values ('3','3');
Insert into "C##student".GRY_GATUNKI (ID_GRY,ID_GATUNEK) values ('4','4');
Insert into "C##student".GRY_GATUNKI (ID_GRY,ID_GATUNEK) values ('5','5');
REM INSERTING into "C##student".RECENZJE
SET DEFINE OFF;
Insert into "C##student".RECENZJE (ID,OCENA,TRESC,ID_GRY) values ('1','9,9','Super Gra','1');
Insert into "C##student".RECENZJE (ID,OCENA,TRESC,ID_GRY) values ('2','5','Meh','2');
Insert into "C##student".RECENZJE (ID,OCENA,TRESC,ID_GRY) values ('3','10','Best racing game on the market','3');
Insert into "C##student".RECENZJE (ID,OCENA,TRESC,ID_GRY) values ('4','2','Game for kids with too much monetisation','4');
Insert into "C##student".RECENZJE (ID,OCENA,TRESC,ID_GRY) values ('5','5,5','LOREM IPSUM','4');
REM INSERTING into "C##student".TWORCY
SET DEFINE OFF;
Insert into "C##student".TWORCY (ID,NAZWA) values ('1','Pranha_Bytes');
Insert into "C##student".TWORCY (ID,NAZWA) values ('2','Mircosoft');
Insert into "C##student".TWORCY (ID,NAZWA) values ('3','Epic_Games');
Insert into "C##student".TWORCY (ID,NAZWA) values ('4','SomeAuthor');
REM INSERTING into "C##student".WYDAWCY
SET DEFINE OFF;
Insert into "C##student".WYDAWCY (ID,NAZWA,MARZA_PROCENT) values ('1','THQ','10');
Insert into "C##student".WYDAWCY (ID,NAZWA,MARZA_PROCENT) values ('2','Microsoft','20');
Insert into "C##student".WYDAWCY (ID,NAZWA,MARZA_PROCENT) values ('3','Epic_Games','100');
Insert into "C##student".WYDAWCY (ID,NAZWA,MARZA_PROCENT) values ('4','SomePublisher','25');
--------------------------------------------------------
--  DDL for Procedure ADDAUTHOR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "C##student"."ADDAUTHOR" 
(
AuthorID INT,
AuthorName VARCHAR
) AS
BEGIN
    INSERT INTO TWORCY(ID,nazwa)
    VALUES(AuthorID,AuthorName);
END;

/
--------------------------------------------------------
--  DDL for Procedure ADDGAME
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "C##student"."ADDGAME" (
    GameID INT,
    GameTitle VARCHAR,
    ReleaseDate DATE,
    GamePrice NUMBER,
    GameAuthorId INT,
    GamePublisherId INT
) AS
BEGIN
    INSERT INTO gry (ID,TYTUL,DATA_WYDANIA,CENA,ID_TWORCY,ID_WYDAWCY)
    VALUES(GameID,GameTitle,ReleaseDate,GamePrice,GameAuthorId,GamePublisherId);
END;

/
--------------------------------------------------------
--  DDL for Procedure ADDGAMEGENRE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "C##student"."ADDGAMEGENRE" 
(
    GameID INT,
    GenreID INT
) AS
BEGIN
    INSERT INTO GRY_GATUNKI(ID_GRY,ID_GATUNEK)
    VALUES(GameID,GenreID);
END;

/
--------------------------------------------------------
--  DDL for Procedure ADDGENRE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "C##student"."ADDGENRE" (
    GenreID INT,
    GenreName VARCHAR
) AS
BEGIN
    INSERT INTO GATUNKI(ID,NAZWA)
    VALUES(GenreID,GenreNAme);
END;

/
--------------------------------------------------------
--  DDL for Procedure ADDPUBLISHER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "C##student"."ADDPUBLISHER" (
    publisherID INT,
    publisherName VARCHAR,
    publisherMargin INT
) AS
BEGIN 
    INSERT INTO wydawcy (ID, nazwa,marza_procent)
    VALUES (publisherID, publisherName, publisherMargin);
END;

/
--------------------------------------------------------
--  DDL for Procedure ADDREVIEW
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "C##student"."ADDREVIEW" (
    ReviewID INT,
    ReviewRate NUMBER,
    ReviewContent VARCHAR,
    ReviewGameId INT
) AS
BEGIN
    INSERT INTO RECENZJE(ID, OCENA,TRESC,ID_GRY)
    VALUES(ReviewID,ReviewRate,ReviewContent,ReviewGameId);
END;

/
--------------------------------------------------------
--  Constraints for Table GATUNKI
--------------------------------------------------------

  ALTER TABLE "C##student"."GATUNKI" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##student"."GATUNKI" MODIFY ("NAZWA" NOT NULL ENABLE);
  ALTER TABLE "C##student"."GATUNKI" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table RECENZJE
--------------------------------------------------------

  ALTER TABLE "C##student"."RECENZJE" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##student"."RECENZJE" MODIFY ("OCENA" NOT NULL ENABLE);
  ALTER TABLE "C##student"."RECENZJE" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "C##student"."RECENZJE" MODIFY ("ID_GRY" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TWORCY
--------------------------------------------------------

  ALTER TABLE "C##student"."TWORCY" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##student"."TWORCY" MODIFY ("NAZWA" NOT NULL ENABLE);
  ALTER TABLE "C##student"."TWORCY" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table WYDAWCY
--------------------------------------------------------

  ALTER TABLE "C##student"."WYDAWCY" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##student"."WYDAWCY" MODIFY ("NAZWA" NOT NULL ENABLE);
  ALTER TABLE "C##student"."WYDAWCY" MODIFY ("MARZA_PROCENT" NOT NULL ENABLE);
  ALTER TABLE "C##student"."WYDAWCY" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table GRY
--------------------------------------------------------

  ALTER TABLE "C##student"."GRY" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##student"."GRY" MODIFY ("TYTUL" NOT NULL ENABLE);
  ALTER TABLE "C##student"."GRY" MODIFY ("DATA_WYDANIA" NOT NULL ENABLE);
  ALTER TABLE "C##student"."GRY" MODIFY ("CENA" NOT NULL ENABLE);
  ALTER TABLE "C##student"."GRY" MODIFY ("ID_TWORCY" NOT NULL ENABLE);
  ALTER TABLE "C##student"."GRY" MODIFY ("ID_WYDAWCY" NOT NULL ENABLE);
  ALTER TABLE "C##student"."GRY" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table GRY_GATUNKI
--------------------------------------------------------

  ALTER TABLE "C##student"."GRY_GATUNKI" MODIFY ("ID_GRY" NOT NULL ENABLE);
  ALTER TABLE "C##student"."GRY_GATUNKI" MODIFY ("ID_GATUNEK" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table GRY
--------------------------------------------------------

  ALTER TABLE "C##student"."GRY" ADD FOREIGN KEY ("ID_TWORCY")
	  REFERENCES "C##student"."TWORCY" ("ID") ENABLE;
  ALTER TABLE "C##student"."GRY" ADD FOREIGN KEY ("ID_WYDAWCY")
	  REFERENCES "C##student"."WYDAWCY" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GRY_GATUNKI
--------------------------------------------------------

  ALTER TABLE "C##student"."GRY_GATUNKI" ADD FOREIGN KEY ("ID_GRY")
	  REFERENCES "C##student"."GRY" ("ID") ENABLE;
  ALTER TABLE "C##student"."GRY_GATUNKI" ADD FOREIGN KEY ("ID_GATUNEK")
	  REFERENCES "C##student"."GATUNKI" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RECENZJE
--------------------------------------------------------

  ALTER TABLE "C##student"."RECENZJE" ADD FOREIGN KEY ("ID_GRY")
	  REFERENCES "C##student"."GRY" ("ID") ENABLE;
