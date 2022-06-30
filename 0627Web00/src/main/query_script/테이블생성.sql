# sql = STRUCTED QUERY language RDB에서 쓰는 확장자 쿼리가 들어있는 파일
select now() from dual;
SELECT NOW() FROM dual;
## SELECT = 선택해라 가져와라
## NOW = 현재시간을 가져와라
## FROM = 어디서 가져올지
## DUAL = 비어있는 임시의 가짜 테이블
select 1+50 as 값1 from dual
union all
select 3+20 as 값1 from dual;

 
create table BBS(
	bbsID INT,
	bbsTitle VARCHAR(50),
	writer VARCHAR(20),
	crDate DATETIME,
	bbsContent VARCHAR(2048),
	bbsAvailable INT,
	primary key(bbsID)
);





	
SELECT userPassword FROM TABLE_USER WHERE userId='test1'
	
);
# 한개짜리 콤마가 문자열이다.
insert into  TABLE_USER Values(
	'test1@gmail.com','1234','홍길동','M');

INSERT INTO TABLE_USER VALUES('test1@gmail.com',1234,딸기우유,?)

# 현재저장된 마지막 글 번호 가져오기
select bbsID from BBS order by bbsID desc;
select max(bbsID) from BBS;



select * from BBS;

select * from bbs order by bbsID desc;
# 글목록 가져오기 글삭제 유무가 1인것만
select * from BBS where bbsID < 35
	and bbsAvailable  = 1
	order by bbsID desc
	limit 10;

# 자기를 선택하고 자기자신을 그대로 새로은 데이터로 추가 : 뻥튀기
# mysql 에서 변수사용하는법 set@변수명 = 값
# 선언된 변수 사용하는 법 SELECT @ 변수명
# 값 수정한느 법 SET @ 변수명 := 값
set @count = 0;
select @count := @count+1;
select ()
# 데이터 뻥튀기 pk는 충돌날수있기때문에 카운트 변수 만들어서 대체
insert into BBS (bbsID,bbsTitle,writer,crDate,bbsContent,bbsAvailable)
select @count := @count+1,bbsTitle,writer,crDate,bbsContent,bbsAvailable
from BBS;

# 운영환경처럼 DB 섞기
update BBS set bbsAvailable = 0 where bbsId = 23;
delete from bbs where bbsid=190;

insert into BBS values(
select(@Count+1,bbsID,bbsTitle,writer,crDate,bbsContent,bbsAvailable)
from BBS
);

select * from BBS;
insert into BBS(bbsID,bbsTitle,writer,crDate,bbsContent,bbsAvailabl) values (?,?,?,?,?,?)
insert into BBS values();

# 더미데이터 생성
insert into BBS values(1,'왕초','김춘삼','2022-01-01','왕초의이름은김춘삼',1);

insert into BBS values(2,'아이언맨','로버트다우주니어','2022-02-02','핵융합발전',1);
insert into BBS values(3,'토르','크리스햄스워스','2022-03-03','북유럽의신 토르',0);
insert into BBS values(4,'기생충','송강호','2022-05-05','시대의 명작',1);
insert into BBS values(5,'곡성','황정민','2022-06-06','무엇이중요한디',1);

delete  from BBS;



select 




select * from table_user;
commit;

