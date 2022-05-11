create table EmployeeDemo(id int not null, name varchar(255), age varchar(255))
insert into EmployeeDemo (id,name ,age )values(1,"Ravi",23)
insert into EmployeeDemo (id,name ,age )values(3,"Raju",23)
alter table EmployeeDemo add column address varchar(255)
select * from EmployeeDemo;
update EmployeeDemo
Set address ="jagdishpur ballia " where name ="Uttam"
Delete from EmployeeDemo where name ="Raju"
alter table EmployeeDemo add column  emp_lib_id int

alter table EmployeeDemo add foreign key (emp_lib_id)

create table library (Lid int  not null,Lname varchar(255) ) 
insert into library (Lid,Lname)values(2,"ballia")
select * from library

alter table library add   foreign key(Lid) references EmployeeDemo(id)
alter table library add column id int 
update   library  set id =2
where Lname ="ballia"

CREATE TABLE Orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    ID int ,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (ID) REFERENCES EmployeeDemo(Id)
);

CREATE TABLE Orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (PersonID) REFERENCES Persons(PersonID)
);



create table persons(
PersonID int not null,
 pfirstName varchar(250),
 plastName varchar(250),
   PRIMARY KEY (PersonID)

 )
 
 insert into persons (personID, pfirstName ,plastName) values(3,"shyam","gupta")
insert into orders (orderId,orderNumber ,personid)values (6,126,4)

select * from persons 
select * from orders


select *  from persons full join  orders  group by pfirstname having pfirstname ="ram"

select * from persons join orders order by ordernumber 
