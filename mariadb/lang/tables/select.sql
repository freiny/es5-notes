USE mydb;

CREATE TABLE USERS(
   ID		INT						NOT NULL,
   NAME	VARCHAR (32)	NOT NULL,
   AGE	INT						NOT NULL,
   PRIMARY KEY (ID)
);
INSERT INTO USERS VALUES (1, 'ann', 20);
INSERT INTO USERS VALUES (2, 'bob', 21);
INSERT INTO USERS VALUES (3, 'cat', 22);

SELECT * FROM mydb.USERS;
-- OUTPUT:
-- ID		NAME	AGE
-- 1		ann		20
-- 2		bob		21
-- 3		cat		22

SELECT ID, NAME FROM USERS;
-- OUTPUT:
-- ID		NAME
-- 1		ann
-- 2		bob
-- 3		cat

SELECT NAME, AGE FROM USERS;
-- OUTPUT:
-- NAME	AGE
-- ann		20
-- bob		21
-- cat		22

SELECT NAME FROM USERS;
-- OUTPUT:
-- NAME
-- ann
-- bob
-- cat
