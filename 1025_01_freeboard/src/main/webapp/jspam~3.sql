CREATE TABLE "ROK"."FREEBOARDCOMMENT" 
   (	"IDX" NUMBER(*,0) NOT NULL ENABLE, 
	"GUP" NUMBER(*,0), 
	"NAME" CHAR(20 BYTE) NOT NULL ENABLE, 
	"PASSWORD" CHAR(20 BYTE) NOT NULL ENABLE, 
	"CONTENT" VARCHAR2(2000 BYTE) NOT NULL ENABLE, 
	"WRITEDATE" TIMESTAMP (6) DEFAULT sysdate, 
	"IP" CHAR(20 BYTE));
    
    delete from freeboardcomment;
    drop sequence freeboardcomment_idx_seq;
    create sequence freeboardcomment_idx_seq;
    
    commit;