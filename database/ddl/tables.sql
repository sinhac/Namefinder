CREATE TABLE NAME_COUNTRY (
    NAMES VARCHAR2(50),
    COUNTRY VARCHAR2(75),
    CONSTRAINT NAME_COUNTRY_PK PRIMARY KEY (NAMES, COUNTRY)
);

CREATE SEQUENCE NAME_MEANING_ID_SEQ
    START WITH 1
    INCREMENT BY 2
    CACHE 40;

CREATE TABLE NAME_MEANING (
    NAMES VARCHAR2(50),
    MEANING VARCHAR2(255),
    GENDER VARCHAR2(1),
    --CONSTRAINT NAME_COUNTRY_FK REFERENCES NAME_COUNTRY (NAME_COUNTRY_PK),
    NAME_MEANING_ID NUMBER,
    CONSTRAINT NAME_MEANING_PK PRIMARY KEY (NAME_MEANING_ID)
);

UPDATE NAME_MEANING
SET NAME_MEANING_ID = NAME_MEANING_ID_SEQ.nextval;