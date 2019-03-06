CREATE TABLE CARDS (CID INTEGER PRIMARY KEY AUTOINCREMENT, FRONT VARCHAR(255) NOT NULL, BACK VARCHAR(255) NOT NULL);
CREATE TABLE TAGS (TAGID INTEGER PRIMARY KEY AUTOINCREMENT, NAME VARCHAR(30));
CREATE TABLE HASTAGS (CID INTEGER, TAGID INTEGER, PRIMARY KEY(CID, TAGID));
CREATE TABLE DECKS (DECKID INTEGER PRIMARY KEY  AUTOINCREMENT,  NAME VARCHAR(50)) ;
CREATE TABLE HASCARDS (DECKID INTEGER,  CID INTEGER, PRIMARY KEY(DECKID, CID));
CREATE TABLE ANSWERDATA (ANSWERID INTEGER PRIMARY KEY  AUTOINCREMENT, TIMETOANSWER REAL, CORRECTNESS BOOLEAN, LASTASKED TEXT);
CREATE TABLE HASANSWERDATA(ANSWERID INTEGER, CID INTEGER, PRIMARY KEY(ANSWERID, CID));
CREATE TABLE HASCOLOR(DECKID INTEGER NOT NULL UNIQUE, COLOR	TEXT NOT NULL, PRIMARY KEY(DECKID,COLOR);
)

/*
User functionality will be implemented later.
CREATE TABLE USER (UID INTEGER PRIMARY KEY AUTOINCREMENT, NAME VARCHAR(30));
CREATE TABLE USERANSWERS(UID INTEGER, CID INTEGER, ANSWERID INTEGER, PRIMARY KEY(UID,CID,ANSWERID));
CREATE TABLE USERDECKS (UID INTEGER, DECKID INTEGER, PRIMARY KEY(UID, DECKID));
*/