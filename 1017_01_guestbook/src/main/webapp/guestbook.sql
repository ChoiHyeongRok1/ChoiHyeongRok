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
   
   -- ������ �ʱ�ȭ ���
   -- ��� �����͸� �����ϰ� �������� ����� �ٽ� �����.
   delete from guestbook;
   drop sequence guestbook_idx_seq;
   
   -- �ڵ����� 1�� ������Ű�� ���� �������� �����.
   create sequence guestbook_idx_seq;
   
   select * from guestbook;
   select count(*) from guestbook;
   select count(*) from guestbook where memo like '%1��%';
   select count(*) from guestbook where name like '%��%';
   select count(*) from guestbook where memo like '%����%' or name like '%����%';
   select * from guestbook  where idx = 10;
   
   insert into guestbook (idx, name, password, memo, ip)
   values (guestbook_idx_seq.nextval, 'ȫ�浿', '1111', '1���Դϴ�.', '192.168.100.001');
   insert into guestbook (idx, name, password, memo, ip)
   values (guestbook_idx_seq.nextval, '�Ӳ���', '2222', '2���Դϴ�.', '192.168.100.001');
   insert into guestbook (idx, name, password, memo, ip)
   values (guestbook_idx_seq.nextval, '����', '3333', '3���Դϴ�.', '192.168.100.001');
   insert into guestbook (idx, name, password, memo, ip)
   values (guestbook_idx_seq.nextval, '������', '4444', '4���Դϴ�.', '192.168.100.001');
   
   -- Ʈ����� �� ���� ��� ����Ǿ�� �� ����� ����
   -- commit: Ʈ������� ��� ���������� ó���Ǽ� ����� �����ͺ��̽��� �ݿ��Ѵ�.
   -- rollback: Ʈ������� ��� ���������� ó������ �ʾ��� ��� ���� ������� �������� �ǵ�����.
   -- ����Ŭ �𺧷��۴� auto commit�� �������� �ʱ� ������ �𺧷��ۿ��� ������ �۾��� jsp�� ����ǰ�
   -- �Ϸ��� �ݵ�� commit ����� �����ؾ� �Ѵ�.
   commit;
   
   delete from guestbook where idx = 10;
   
   update guestbook set name = '�տ���', memo = '�����' where idx = 11;
   
   
   
   
   
   
   
   
   
   
   