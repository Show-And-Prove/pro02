create database myshop1;
commit;


use myshop1;

create table custom(
	cusId varchar(20) primary key,	
	cusPw varchar(200) not null,
	cusName varchar(50) not null,
	address varchar(500) not null,
	tel varchar(14) not null,
	regDate datetime default now(),
	point int default 0,
	level int default 0,
	visited int default 0
);
    
    
create table notice(
	no int primary key auto_increment,
    title varchar(100) not null,
    content varchar(600),
    author varchar(20) not null,
    resdate datetime default now());
    
insert into notice(title,content,author) values ("테스트제목1","테스트내용1","admin");
insert into notice(title,content,author) values ("테스트제목2","테스트내용2","admin");
insert into notice(title,content,author) values ("테스트제목3","테스트내용3","admin");
insert into notice(title,content,author) values ("테스트제목4","테스트내용4","admin");
insert into notice(title,content,author) values ("테스트제목5","테스트내용5","admin");
insert into notice(title,content,author) values ("테스트제목6","테스트내용6","admin");

commit;

select * from notice;



    
    
    
