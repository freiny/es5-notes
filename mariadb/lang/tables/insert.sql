USE mydb;

CREATE TABLE USERS(
   ID		INT						NOT NULL,
   NAME	VARCHAR (32)	NOT NULL,
   AGE	INT						NOT NULL,
   PRIMARY KEY (ID)
);

SHOW TABLES;
-- OUTPUT:
-- Tables_in_mydb
-- USERS

INSERT INTO USERS (ID, NAME, AGE) VALUES (1, 'ann', 20);
INSERT INTO USERS (ID, NAME, AGE) VALUES (2, 'bob', 21);
INSERT INTO USERS VALUES (3, 'cat', 22);

select * from mydb.USERS;
-- OUTPUT:
-- ID		NAME	AGE
-- 1		ann		20
-- 2		bob		21
-- 3		cat		22
