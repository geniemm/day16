create table test_char(
    ch char(5), -- °íÁ¤Å©±â
    vch varchar2(5) -- °¡º¯Å©±â
);
insert into test_char values ('1','123');
select lengthb(ch), lengthb(vch) from test_char;
select * from test_char;


-- salary : ¿ù±Þ
-------------------------------------------------------
create table employee(
name varchar2(15),
salary number,
job varchar2(20),
join_company date
);
insert into employee values('È«±æµ¿',2000000,'ÄÄÇ»ÅÍ','2222/12/24');
select * from employee;
alter session set nls_date_format = 'YYYY/MM/DD';
COMMIT;

rollback;
insert into employee values('¸¶Æ÷±¸',2230000,'SK','2018/01/05');
insert into employee values('¼Ò°í±â',1800000,'»þ¿À¹Ì','2019/01/09');
insert into employee values('Â¥Àå¸é',2100000,'»ï¼º','2017/10/24');
insert into employee values('¼Ò°öÃ¢',2200000,'¾ÖÇÃ','2017/11/04');
insert into employee values('ÂüÀÌ½½',1950000,'¿¤Áö','2017/10/24');
insert into employee values('·ò¿ì¶×',1800000,'SK','2018/10/24');
insert into employee values('À§¸ÞÇÁ',1800000,'»þ¿À¹Ì','2019/12/07');
insert into employee values('ºÏ°æ½Ã',1880000,'»ï¼º','2018/11/14');
insert into employee values('½º¹Ì½º',1970000,'¾ÖÇÃ','2019/06/04');
insert into employee values('ÇÚµåÆù',7200000,'¿¤Áö','2010/01/27');
insert into employee values('ºò½ººñ',3570000,'SK','2015/02/17');
insert into employee values('³ë¶óÁà',3200000,'»þ¿À¹Ì','2015/11/24');
insert into employee values('»çÀÌ´Ù',2400000,'»ï¼º','2017/09/26');
insert into employee values('±è¸»ÀÌ',7000000,'¾ÖÇÃ','2010/01/21');
insert into employee values('¿Àµµµ¶',6230000,'¿¤Áö','2011/08/19');

insert into employee values('½ÓÁöµ·',3710000,'SK','2015/08/19');
insert into employee values('È­ÀåÁö',1770000,'»þ¿À¹Ì','2019/04/28');
insert into employee values('¼ÒÈ­±â',1920000,'»ï¼º','2019/10/07');
insert into employee values('¹ÚÈ¿½Å',2670000,'¾ÖÇÃ','2017/11/24');
insert into employee values('ÆÇºùºù',3120000,'¿¤Áö','2016/05/19');
insert into employee values('±èÀç¿í',4190000,'SK','2015/01/02');
insert into employee values('¼ÛÇý±³',4280000,'»þ¿À¹Ì','2015/01/02');
insert into employee values('¼ÛÁß±â',3700000,'»ï¼º','2016/02/17');
insert into employee values('¼ÕÈ«¹Î',2220000,'¾ÖÇÃ','2018/02/04');
insert into employee values('¹éÁ¾¿ø',2760000,'¿¤Áö','2017/10/14');
insert into employee values('¿ÀÃ¢¼®',2620000,'SK','2017/09/04');
insert into employee values('½ºÅÚ¶ó',2500000,'»þ¿À¹Ì','2017/11/20');
insert into employee values('¸ß½ºÀ£',1970000,'»ï¼º','2017/10/30');
insert into employee values('Á¶Çö',  2720000,'¾ÖÇÃ','2018/11/11');
insert into employee values('·ùÇöÁø',2600000,'¿¤Áö','2015/11/19');
insert into employee values('ÀºÁö¿ø',5670000,'SK','2017/10/16');
insert into employee values('ÀüÈ¿¼º',3750000,'»þ¿À¹Ì','2015/09/15');
insert into employee values('ÀÌÃ¤Àº',3400000,'»ï¼º','2016/02/09');
insert into employee values('ÃÖ°íºÀ',8900000,'¾ÖÇÃ','2010/01/04');
insert into employee values('±¤È­¹®',1860000,'¿¤Áö','2017/10/24');
insert into employee values('µ¿´ë¹®',1790000,'SK','2017/10/24');
insert into employee values('¼­´ë¹®',2880000,'»þ¿À¹Ì','2016/02/27');
insert into employee values('´ëÅë·É',2320000,'»ï¼º','2016/05/24');
insert into employee values('¿¹Áö¿ø',1780000,'¾ÖÇÃ','2019/01/09');
insert into employee values('Á¤¼Ò¹Î',2900000,'¿¤Áö','2016/10/22');
insert into employee values('¿ö³Ê¿ø',3000000,'SK','2015/10/10');
insert into employee values('ºÏÇÑ±º',3200000,'»þ¿À¹Ì','2015/11/11');
insert into employee values('³²ÇÑ±º',2500000,'»ï¼º','2016/12/19');
insert into employee values('Â¥Åõ¸®',1850000,'¾ÖÇÃ','2018/04/03');
insert into employee values('ÀÌ½Â±â',1900000,'¿¤Áö','2018/01/01');
insert into employee values('±âÂ÷±æ',1790000,'SK','2018/05/02');
insert into employee values('±æ°Å¸®',2700000,'»þ¿À¹Ì','2016/07/20');

select * from employee;

select * from employee where name like '±è%'; -- ±èÀ¸·Î ½ÃÀÛÇÏ´Â ÀÌ¸§
select * from employee where name like '%¶Ë'; 
select * from employee where name like '%ÀÌ%';
-- Á¤·Ä
select * from employee order by join_company desc; -- ³»¸²Â÷¼ø
select * from employee order by join_company asc; -- ¿À¸§Â÷¼ø
--joinÀº ¿À¸§Â÷¼øÀ¸·Î ³ª¿Â °á°úÁß nameÀ» ³»¸²Â÷¼ø
select * from employee order by job asc, salary desc;
delete from employee where job ='ÄÄÇ»ÅÍ';

select * from employee where salary *12 > 100000000; 
select name,join_company from employee 
where join_company < '2015/01/01';

select * from employee where salary >= 2800000 and salary <= 3000000;

select * FROM employee where salary *12 > 60000000 and 
join_company >= '2015/01/01';

SELECt *FROM employee where (job = '»ï¼º' or job = '¿¤Áö') and (salary * 12) >= 50000000;

select * from employee where name like '±è%' and salary*12 >= 30000000 order by job asc, salary desc;
