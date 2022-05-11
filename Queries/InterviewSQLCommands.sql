create table emp (empid int not null,empname varchar(250) , empsalary int not null)
insert into emp (empid,empname,empsalary) values (101,'Ravi','1200')
insert into emp (empid,empname,empsalary) values (102,'Rahul','1300')
insert into emp (empid,empname,empsalary) values (103,'Prince','1400')
insert into emp (empid,empname,empsalary) values (104,'Deepak','1500')
alter table emp add column dep varchar(250)


select * from emp

select * from emp where empsalary =(select Max(empsalary) from emp)
select * from emp where empsalary =(select   Min(empsalary) from emp)

select Max(empsalary) from emp

  select empsalary from emp - Max(empsalary ) from emp 
  
  select *from emp
group by empsalary 
order by  empsalary desc limit 2,1;

select * from emp where empsalary between 1200 and 1500

select * from emp where empsalary >1600


select * from emp where empsalary <1600

select * from emp where empsalary in (1400 ,1500)

select Upper(empname ) as ename from emp

select Lower(empname ) as ename from emp

SELECT GET DATE();
	
SELECT SUBSTRING(empname, 1, 4) as EsubName  FROM emp;

select empname from emp where empname like "R%"

 select * from   emp order by empsalary desc limit  2
 
 select count(*) from emp where empsalary >1000