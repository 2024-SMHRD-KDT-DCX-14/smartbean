select * from TB_MEMBER;
select * FROM TB_MATERIAL;

insert into TB_MEMBER (MEM_ID, MEM_PW, MEM_NAME, MEM_PHONE, MEM_ADDRESS)
values('sm1', '123', 'ksk', '999', '서초점');



select MEM_ID, MEM_PW from TB_Member
		where MEM_ID = '1111'
		and MEM_PW = '1111';




















