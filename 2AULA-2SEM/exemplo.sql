--Brasil
DROP TABLE SI;
CREATE TABLE SI
(COD INT,
NOME VARCHAR(100));

DESC SI;

INSERT INTO SI VALUES (1,'MEG');
INSERT INTO SI VALUES (2,'BOB');

SELECT * FROM SI;

COMMIT;
-------------------------------------
DELETE FROM SI
WHERE COD=2;

SELECT * FROM SI;

ROLLBACK;
-------------------------------------
UPDATE SI
SET COD =20 WHERE COD = 2;
ROLLBACK;


--it
delete from si;

create table tiaf2 (x int);

rollback;