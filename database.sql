DROP DATABASE IF EXISTS mediaplayer;

CREATE DATABASE mediaplayer; -- luo tietokanta

USE mediaplayer; -- käytä tietokantaa

CREATE TABLE kayttaja (id INT PRIMARY KEY, tunnus VARCHAR(60), salasanatiiviste VARCHAR(60));
CREATE TABLE kappale (id INT PRIMARY KEY, pituus VARCHAR(20), artisti VARCHAR(50), genre VARCHAR(20), nimi VARCHAR(50), linkki VARCHAR(100));
CREATE TABLE soittolista (kappaleid INT, kayttajaid INT, FOREIGN KEY (kappaleid) REFERENCES kappale(id), FOREIGN KEY (kayttajaid) REFERENCES kayttaja(id));

INSERT INTO kayttaja VALUES(1, 'testi', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');

INSERT INTO kappale VALUES (1, '3:51', 'matthew.pablo','','Soliloquy','http://opengameart.org/sites/default/files/Soliloquy_1.mp3');
INSERT INTO kappale VALUES (2, '3:27', 'brainiac256','','Arabesque','http://opengameart.org/sites/default/files/Arabesque.mp3');
INSERT INTO kappale VALUES (3, '0:56', 'syncopika','','Sad Orchestral BGM','http://opengameart.org/sites/default/files/sadorchestralbgm%28syncopika%29.wav');
INSERT INTO kappale VALUES (4, '2:13', 'Muciojad','','It`s my World','http://opengameart.org/sites/default/files/It%27s%20my%20world.mp3');
INSERT INTO kappale VALUES (5, '0:20', 'DijitaL','','Penguin Dance','http://opengameart.org/sites/default/files/penguin_dance.mp3');

INSERT INTO soittolista VALUES(3,1);
INSERT INTO soittolista VALUES(4,1);
INSERT INTO soittolista VALUES(2,1);

CREATE USER mediaplayer;
GRANT SELECT ON mediaplayer.* TO mediaplayer;