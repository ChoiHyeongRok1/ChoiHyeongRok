CREATE TABLE "ROK"."GUESTBOOK" 
   (	"IDX" NUMBER NOT NULL ENABLE, 
	"NAME" CHAR(20 BYTE) NOT NULL ENABLE, 
	"PASSWORD" CHAR(20 BYTE) NOT NULL ENABLE, 
	"MEMO" VARCHAR2(3000 BYTE) NOT NULL ENABLE, 
	"WRITEDATE" TIMESTAMP (6) DEFAULT sysdate, 
	"IP" CHAR(20 BYTE), 
	 CONSTRAINT "GUESTBOOK_PK" PRIMARY KEY ("IDX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE
   );
   
   -- 시퀀스 초기화 방법
   -- 모든 데이터를 제거하고 시퀀스를 지우고 다시 만든다.
   delete from guestbook;
   drop sequence guestbook_idx_seq;
   
   -- 자동으로 1씩 증가시키기 위해 시퀀스를 만든다.
   create sequence guestbook_idx_seq;
   
   select * from guestbook;
   select count(*) from guestbook;
   select count(*) from guestbook where memo like '%1등%';
   select count(*) from guestbook where name like '%길%';
   select count(*) from guestbook where memo like '%지매%' or name like '%지매%';
   select * from guestbook  where idx = 10;
   
   insert into guestbook (idx, name, password, memo, ip)
   values (guestbook_idx_seq.nextval, '홍길동', '1111', '1등입니다.', '192.168.100.001');
   insert into guestbook (idx, name, password, memo, ip)
   values (guestbook_idx_seq.nextval, '임꺽정', '2222', '2등입니다.', '192.168.100.001');
   insert into guestbook (idx, name, password, memo, ip)
   values (guestbook_idx_seq.nextval, '장길산', '3333', '3등입니다.', '192.168.100.001');
   insert into guestbook (idx, name, password, memo, ip)
   values (guestbook_idx_seq.nextval, '일지매', '4444', '4등입니다.', '192.168.100.001');
   
   -- 트랜잭션 한 번에 모두 실행되어야 할 명령의 집합
   -- commit: 트랜잭션이 모두 정상적으로 처리되서 결과를 데이터베이스에 반영한다.
   -- rollback: 트랜잭션이 모두 정상적으로 처리되지 않았을 경우 최초 실행상태 이전으로 되돌린다.
   -- 오라클 디벨로퍼는 auto commit이 지원되지 않기 때문에 디벨로퍼에서 진행한 작업이 jsp에 적용되게
   -- 하려면 반드시 commit 명령을 실행해야 한다.
   commit;
   
   delete from guestbook where idx = 10;
   
   update guestbook set name = '손오공', memo = '배고파' where idx = 11;
   
   
   
   
   
   
   
   
   
   
   