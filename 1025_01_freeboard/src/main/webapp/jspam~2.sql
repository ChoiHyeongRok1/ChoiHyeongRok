CREATE TABLE "ROK"."FREEBOARD" 
   (	"IDX" NUMBER(*,0) NOT NULL ENABLE, 
	"NAME" CHAR(20 BYTE) NOT NULL ENABLE, 
	"PASSWORD" CHAR(20 BYTE) NOT NULL ENABLE, 
	"SUBJECT" VARCHAR2(200 BYTE) NOT NULL ENABLE, 
	"CONTENT" VARCHAR2(3000 BYTE) NOT NULL ENABLE, 
	"WRITEDATE" TIMESTAMP (6) DEFAULT sysdate, 
	"HIT" NUMBER(*,0) DEFAULT 0, 
	"NOTICE" CHAR(3 BYTE) DEFAULT 'no', 
	"IP" CHAR(20 BYTE));
    
    delete from freeboard;
    drop sequence freeboard_idx_seq;
    create sequence freeboard_idx_seq;
    
    insert into freeboard (idx, name, password, subject, content, notice, ip) values (freeboard_idx_seq.nextval, '홍길동', '1111', '1등', '1등입니다.', 'no', '192.168.100.001');
    insert into freeboard (idx, name, password, subject, content, notice, ip) values (freeboard_idx_seq.nextval, '장길산', '2222', '2등', '2등입니다.', 'no', '192.168.100.002');
    insert into freeboard (idx, name, password, subject, content, notice, ip) values (freeboard_idx_seq.nextval, '임꺽정', '3333', '3등', '3등입니다.', 'no', '192.168.100.003');
    insert into freeboard (idx, name, password, subject, content, notice, ip) values (freeboard_idx_seq.nextval, '일지매', '4444', '4등', '4등입니다.', 'no', '192.168.100.004');
    
    update freeboard set hit = 11 where name = '홍길동';
    
    select * from freeboard order by idx desc;
    
    select count(*) from freeboard;
    
    select * from freeboard where notice = 'yes' order by idx desc;
    
    commit;