drop table user1;

-- user01 테이블 생성
create table user1 (
    userId varchar2(30) primary key,
    userPassword varchar2(30) not null,
    userName varchar2(30) not null,
    userGender varchar2(10) not null,
    userEmail varchar2(30) not null
);


-- 더미 데이터 
insert into user1
values('admin', '1234', '관리자', '남자', 'admin@kosmo.com');
insert into user1
values('bts1', '1234', '뷔', '남자', 'bts1@kosmo.com');
commit;


select * from user1;

create table BBS(
    bbsID number(8) primary key,
    bbsTitle varchar2(50) not null,
    userID varchar2(30) not null,
    bbsDate date default sysdate,
    bbsContent varchar2(2000),
    bbsAvailable number
);

-- 더미 데이터
insert into BBS(bbsID, bbsTitle, userID, bbsContent, bbsAvailable)
values('1111', '제목이요', '이름이요', '내용이요', '1');
insert into BBS(bbsID, bbsTitle, userID, bbsContent, bbsAvailable)
values('2222', '제목이요2', '이름이요2', '내용이요2', '2');
commit;

select * from BBS;

delete from bbs;

alter table bbs modify bbsDate varchar2(20);

SELECT to_char(sysdate,'yyyy-mm-dd hh24:mI') FROM bbs;

desc bbs;
