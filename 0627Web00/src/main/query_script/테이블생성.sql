# sql = STRUCTED QUERY language RDB에서 쓰는 확장자 쿼리가 들어있는 파일
select now() from dual;

## SELECT = 선택해라 가져와라
## NOW = 현재시간을 가져와라
## FROM = 어디서 가져올지
## DUAL = 비어있는 임시의 가짜 테이블
select 1+50 as 값1 from dual
union all
select 3+20 as 값1 from dual;

create table TABLE_USER(
	userID VARCHAR(20),
	userPassword VARCHAR(20),
	userName VARCHAR(20),
	userGender VARCHAR(4),
	primary key (userID)
	
);

create table BBS(
	bbsID INT,
	bbsTitle VARCHAR(50),
	writer VARCHAR(20),
	crDate DATETIME,
	bbsContent VARCHAR(2048),
	bbsAvailable INT,
	primary key(bbsID)
);
# 한개짜리 콤마가 문자열이다.
insert into  TABLE_USER Values(
	'test1','1234','홍길동','M');
	
select * from table_user;
commit;