DROP DATABASE IF EXISTS mediaplayer;

CREATE DATABASE mediaplayer; -- luo tietokanta

USE mediaplayer; -- käytä tietokantaa

CREATE TABLE kayttaja (id INT PRIMARY KEY, tunnus VARCHAR(60), salasanatiiviste VARCHAR(60));
CREATE TABLE kappale (id INT PRIMARY KEY, pituus VARCHAR(20), artisti VARCHAR(50), genre VARCHAR(20), nimi VARCHAR(50), linkki VARCHAR(100));
CREATE TABLE soittolista (kappaleid INT, kayttajaid INT, FOREIGN KEY (kappaleid) REFERENCES kappale(id), FOREIGN KEY (kayttajaid) REFERENCES kayttaja(id));

INSERT INTO kayttaja VALUES(1, 'testi', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');

