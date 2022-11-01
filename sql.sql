create database myshop1;
commit;
use myshop1;

create table custom(
	customerid varchar(20) primary key,
    customerpw varchar(20) not null,
    customername varchar(20) not null,
    customertel varchar(30) not null,
    customeraddress varchar(100) not null,
    regdate datetime default now(),
    point int default 0,
    visited int default 0);
    
    
create table notice(
	noticeno int primary key auto_increment,
    noticetitle varchar(100) not null,
    noticecontent varchar(600),
    noticeauthor varchar(20) not null,
    resdate datetime default now());
    
insert into notice(title,content,author) values ("테스트제목1","테스트내용1","admin");
insert into notice(title,content,author) values ("테스트제목2","테스트내용2","admin");
insert into notice(title,content,author) values ("테스트제목3","테스트내용3","admin");
insert into notice(title,content,author) values ("테스트제목4","테스트내용4","admin");
insert into notice(title,content,author) values ("테스트제목5","테스트내용5","admin");

    

    
    
    
