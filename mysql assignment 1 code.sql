## ************   MYSQL ASSIGNMENT NUMBER-1    *****************

# 1. Count the number of Salesperson whose name begin with ‘a’/’A’.
Select count(Sname)"Name"
from Salespeople
 where Sname like 'A%' or 'a%';

# 2.  Display all the Salesperson whose all orders worth is more than Rs. 2000.
select Sname,Amt
from Orders
    inner join SalesPeople on Orders.Snum = SalesPeople.Snum
where Orders.Amt > 2000;

# 3. Count the number of Salesperson belonging to Newyork.
Select count(Sname)"Name"
 from Salespeople
 where City="Newyork";
 
# 4.Display the number of Salespeople belonging to London and belonging to Paris.
Select City,count(*)
 from Salespeople
 where City="London" or "Paris";
 
 
# 5.Display the number of orders taken by each Salesperson and their date of orders.
select Salespeople.Sname,count(*),Orders.Odate
from SalesPeople
    inner join Orders on SalesPeople.Snum = Orders.Snum
group by
Salespeople.Sname,
Orders.Odate;
    










