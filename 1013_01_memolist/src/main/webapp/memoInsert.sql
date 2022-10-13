SELECT * FROM memolist;
SELECT * FROM memolist ORDER BY idx DESC;
SELECT COUNT(*)FROM memolist;
SELECT * FROM memolist ORDER BY idx DESC LIMIT 0, 10;

INSERT INTO memolist(NAME, PASSWORD, memo, ip)VALUES('홍길동','1111','1등입니다','192.168.100.075');
INSERT INTO memolist(NAME, PASSWORD, memo, ip)VALUES('임꺽정','2222','2등입니다','192.168.100.076');
INSERT INTO memolist(NAME, PASSWORD, memo, ip)VALUES('장길산','3333','3등입니다','192.168.100.077');
INSERT INTO memolist(NAME, PASSWORD, memo, ip)VALUES('일지매','4444','4등입니다','192.168.100.078');

DELETE FROM memolist;
ALTER TABLE memolist AUTO_INCREMENT = 1;