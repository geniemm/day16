select math-50 from student where id = 202301;

select * from student;

select * from student where kor>=90 and math>=90;
select * from student where kor>=90 or math>=90;
select * from student where not kor=100;

select * from student;
select * from student where kor>=90 and kor<=100;
select * from student where kor between 90 and 100;

create table test_number(

    num_ps number(5,2), -- 전체 자리수 5, 소수점 2자리
    num_p number(3), -- 정수 자리수 3
    num number -- 정수 실수 가변
);

insert into test_number values(1.12345, 1.12345, 1.12345);
select * from test_number;
insert into test_number values(123.12345, 1.12345, 1.12345); 
-- 정수포함 자리수를 벗어나게되면 에러발생

create table test_date(my_date date);
-- 날짜를 저장할때사용하는 자료형 date 
insert into test_date values(sysdate);
-- sysdate : 오라클에서 제공해주는 명령어 (현재날짜제공)
insert into test_date values('2023/07/03');
select * from test_date;
alter session set nls_date_format = 'YYYY/MM/DD HH:MI:SS';
select * from test_date;
insert into test_date values('2023/07/03 12:12:12');
select * from test_date where my_date < '2023/07/03 12:12:12';
