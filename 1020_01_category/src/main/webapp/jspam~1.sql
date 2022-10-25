 CREATE TABLE "ROK"."CATEGORY" (	
    "IDX" NUMBER(*,0) NOT NULL ENABLE, 
	"CATEGORY" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
	"GUP" NUMBER(*,0), 
	"LEV" NUMBER(*,0), 
	"SEQ" NUMBER(*,0), 
	 CONSTRAINT "CATEGORY_PK" PRIMARY KEY ("IDX")
   ); 
   
delete from category;
drop sequence category_idx_seq;
create sequence category_idx_seq;

insert into category (idx, category, gup, lev, seq) values (category_idx_seq.nextval, '��Ʈ��', category_idx_seq.currval, 0, 0);

select * from category order by gup desc, seq asc;

commit;





























