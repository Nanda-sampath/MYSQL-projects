CREATE DATABASE ASSIGNMENT;
use assignment

CREATE TABLE SalesPeople (
Snum INT NOT NULL PRIMARY KEY,
Sname VARCHAR(50) NOT NULL,
City VARCHAR(50),
Comm FLOAT0
);


desc salespeople
insert into salespeople values ('1001', 'Peel', 'London','12')
insert into salespeople values ('1002', 'Serres', 'Sanjose', '13')
insert into salespeople values ('1004', 'Motika', 'London','11')
insert into salespeople values ('1007', 'Rifkin', 'Barcelona', '15')
insert into salespeople values ('1003', 'Axelrod', 'Newyork', '10')


select * from salespeople


CREATE TABLE Customers (
Cnum INT NOT NULL,
Cname VARCHAR(50) NOT NULL,
City VARCHAR(50),
Rating INT,
Snum INT NOT NULL,
CONSTRAINT PK_Customers_Cnum PRIMARY KEY(Cnum),
CONSTRAINT FK_Customers_Snum FOREIGN KEY(Snum) REFERENCES SalesPeople(Snum)
);


insert into Customers values ('2001','Hoffman','London','1001')
insert into Customers values ('2002','Giovanne','Rome','1003')
insert into Customers values ('2003','Liu','San Jose','1002')
insert into Customers values (2004,'Grass','Brelin','1002')
insert into Customers values (2006,'Clemens','London','1007')
insert into Customers values (2007,'Pereira','Rome','1004')

desc Customers
select * from Customers


CREATE TABLE Orders (
Onum INT NOT NULL,
AMT FLOAT NOT NULL,
Odate DATE NOT NULL,
Cnum INT NOT NULL,
Snum INT NOT NULL,
CONSTRAINT PK_Orders_Onum PRIMARY KEY(Onum),
CONSTRAINT FK_Orders_Cnum FOREIGN KEY(Cnum) REFERENCES Customers(Cnum),
CONSTRAINT FK_Orders_Snum FOREIGN KEY(Snum) REFERENCES SalesPeople(Snum)
);

desc orders
select * from orders
insert into orders values ('3001','18.69','1990-10-03','2008','1007') 

insert into orders values ('3003','767.19','1990-10-03','2001','1001')
insert into orders values ('3002','1900.10','1990-10-03','2007','1004')
insert into orders values ('3005','5160.45','1990-10-03','2003','1002')

insert into orders values ('3006','1098.16','1990-10-03','2008','1007') 

insert into orders values ('3009','1713.23','1990-10-04','2002','1003')
insert into orders values ('3007','75.75','1990-10-04','2004','1002')
insert into orders values ('3008','4273.00','1990-10-05','2006','1001')
insert into orders values ('3010','1309.95','1990-10-06','2004','1002') 
insert into orders values ('3011','9891.88','1990-10-06','2006 ','1001')

select * from orders

 # 1 Count the number of Salesperson whose name begin with ‘a’/’A’.
SELECT *
FROM SalesPeople
WHERE sname LIKE 'A%';


 # 2 Display all the Salesperson whose all orders worth is more than Rs. 2000.
SELECT *
FROM Orders
WHERE AMT > 2000;

# 3 Count the number of Salesperson belonging to Newyork.
select *
from salespeople
where city = 'newyork';


# 4 Display the number of Salespeople belonging to London and belonging to Paris.
SELECT sname, city
FROM SalesPeople
WHERE City = 'London' or 'paris';


# 5 Display the number of orders taken by each Salesperson and their date of orders.
SELECT count(odate)||' SALES PERSON REGISTREDDON' "TOTAL",
       odate
FROM orders
GROUP BY odate;













