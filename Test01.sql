select math-50 from student where id = 202301;

select * from student;

select * from student where kor>=90 and math>=90;
select * from student where kor>=90 or math>=90;
select * from student where not kor=100;

select * from student;
select * from student where kor>=90 and kor<=100;
select * from student where kor between 90 and 100;

create table test_number(

    num_ps number(5,2), -- ��ü �ڸ��� 5, �Ҽ��� 2�ڸ�
    num_p number(3), -- ���� �ڸ��� 3
    num number -- ���� �Ǽ� ����
);

insert into test_number values(1.12345, 1.12345, 1.12345);
select * from test_number;
insert into test_number values(123.12345, 1.12345, 1.12345); 
-- �������� �ڸ����� ����ԵǸ� �����߻�

create table test_date(my_date date);
-- ��¥�� �����Ҷ�����ϴ� �ڷ��� date 
insert into test_date values(sysdate);
-- sysdate : ����Ŭ���� �������ִ� ��ɾ� (���糯¥����)
insert into test_date values('2023/07/03');
select * from test_date;
alter session set nls_date_format = 'YYYY/MM/DD HH:MI:SS';
select * from test_date;
insert into test_date values('2023/07/03 12:12:12');
select * from test_date where my_date < '2023/07/03 12:12:12';
