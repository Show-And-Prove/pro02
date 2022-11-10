create database myshop1;
commit;

use myshop1;

-- 회원 목록 cusId varchar(20) 외래키
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

select * from custom;

-- 장바구니
create table cart(
	cartNo int primary key auto_increment,
    proNo int,
    cusId varchar(20)
);


-- 공지사항 author custom(cusId)
create table notice(
	notiNo int primary key auto_increment,
    title varchar(100) not null,
    content varchar(600),
    author varchar(20) not null,
    resdate datetime default now());
commit;
-- 조회수 컬럼 추가
alter table notice add column visited int default 0;
    
select * from notice;

    
commit;
-- 더미데이터
insert into notice(title,content,author) values ("테스트제목1","테스트내용1","admin");
insert into notice(title,content,author) values ("테스트제목2","테스트내용2","admin");
insert into notice(title,content,author) values ("테스트제목3","테스트내용3","admin");
insert into notice(title,content,author) values ("테스트제목4","테스트내용4","admin");
insert into notice(title,content,author) values ("테스트제목5","테스트내용5","admin");
insert into notice(title,content,author) values ("테스트제목6","테스트내용6","admin");

commit;

select * from notice;
select * from custom;

-- 상품 카테고리
create table category(
	cateNo int primary key auto_increment,
	cateName varchar(50)
);

-- 카테고리 데이터 등록
insert into category(cateName) values ("best");
insert into category(cateName) values ("weeklybest");
insert into category(cateName) values ("teafood");
insert into category(cateName) values ("lifestyle");

commit;

select * from category;

drop table category;

-- 상품 proPic, proPic2
create table product(
	proNo int primary key auto_increment,
	cateNo int not null,
	proName varchar(40) not null,
	proSpec varchar(500),
	oriPrice int not null,
	discountRate double not null,
	proPic varchar(200),
	proPic2 varchar(200)
);

select * from product;

-- ?
alter table product add column scnt int default 0; 
alter table product add column regdate datetime default now();

commit;








insert into product(cateNo, proName, proSpec, oriPrice, discountRate) values();

select * from product;
select * from product where prono=1;

commit;

select * from notice;

-- 입고 
create table wearing(
	prono int primary key,
    amount int
);


-- 판매 테이블 생성
create table sales(
	saleNo int primary key auto_increment,
    cusId varchar(20) not null,
    proNo int not null,
    amount int not null,
    saleDate datetime default now(),
    parselNo int,
    salePayNo int
);


commit;
select * from sales;

-- 결제 테이블 생성
create table payment(
	salePayNo int primary key auto_increment,
    payMethod varchar(20),
    payCom varchar(50),
    cardNum varchar(40),
    payAmount int
);

-- 배송 테이블 생성
create table parsel(
	parselNo int primary key auto_increment,
    parselAddr varchar(500),
    cusTel varchar(14),
    parselCompany varchar(50),
    parselTel varchar(14),
    parselState int default 0
);    
select * from parsel;



commit;

-- 장바구니
create table cart(
	cartNo int primary key auto_increment,
    proNo int,
    cusId varchar(20)
);


create table qnaa(
    no int primary key auto_increment,
    title varchar(100) not null,
    content varchar(1000) not null,
    author varchar(20) not null,
    resdate datetime default now(),
    lev int default 0,            -- 깊이
    parno int not null,          -- 부모글 번호
    sec char(1)                     -- 비밀글 여부
);


select * from cart;


    
    
