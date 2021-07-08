select * from t_user where id='1001'and psw='1'
create table Seats 
(
seatno int primary key,
freedom varchar(20) check (freedom='空闲' or freedom='已被预约'),
classsize int,
)
create table dating
(dateno int  IDENTITY(1,1) primary key,
id varchar(20) not null,
seatno int,
signornot char(20) check (signornot='已签到' or signornot='未签到'),
datingtime datetime,
signtime datetime,
leavetime datetime,
foreign key (seatno) references Seats(seatno),
foreign key (id) references t_user(id),
)
create table t_admin
(
id varchar(20) primary key,
psw varchar(20),
tel varchar(20)
)
create table t_book
(
id varchar(20) primary key not null,
name varchar(20),
author varchar(20),
press varchar(20),
number varchar(20),
kind varchar(20),
outtime datetime,
intime datetime
)
create table t_lend
(
no int  IDENTITY(1,1)  primary key not null,
uid varchar(20),
bid varchar(20),
datetime datetime,
overtime datetime,
arrtime datetime
)

create table t_user
(
id varchar(20) not null primary key,
name varchar(20),
sex char(20) check (sex='男' or sex='女'),
psw varchar(20),
tel varchar(20),
yuanxi varchar(20),
class varchar(20),
credit int,
wish varchar(20),
)

drop table Seats;
drop table t_user;
drop table t_lend;
drop table t_book;
drop table t_admin;
drop table dating;

select * from t_user
select * from t_admin
select * from t_book
select * from Seats
select * from dating
select * from t_lend
select tel from t_admin