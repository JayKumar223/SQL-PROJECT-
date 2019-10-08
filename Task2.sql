
/*Question 2: Once you have finished this, create a query that displays :CompanyName, Address,
of the customer along with the total for each order that the customer has made. Save this query as a sql script called Question2.sql to your desktop.*/

use [Task 2]

select * from Customers
select * from Orders 
Select * from OrderDetails

select 
	Customers.CompanyName,
	Customers.Address,
	Customers.CustomerID,
	OrderDetails.UnitPrice*OrderDetails.Quantity as 'Total Spent'
from
Customers
inner join
Orders on Customers.CustomerID=Orders.CustomerID
inner join 
OrderDetails on Orders.OrderID=OrderDetails.OrderID order by Customers.CompanyName

/*Question 3: Create a View that joins the customers table to the orders table and have the view show CompanyName, Address, City and OrderDate. Save the View as CustomersView.*/

select * from Customers
select * from Orders

Create view CustomersView as Select Customers.CompanyName,Customers.Address,Customers.City,Orders.OrderDate from Customers inner join Orders on Orders.OrderID=Orders.OrderID

Select * from CustomersView

/* Question 4: Once the CustomersView is created query the view to show only Customers from London.*/

Select * from CustomersView
Select * from CustomersView where city = 'London'

/* Question 5: Create a stored procedure will return a list of products based on the parameter values that you pass to stored procedure. Save the stored procedure as ProductSearch. */ 

Select * from Products order by ProductID

Create proc sp_Products
as Begin
Select * from Products order by ProductID
End

exec sp_Products

/* Question 7: Create a nonclustered index on the primary key for the Customers Table and Create a clustered index on the CompanyName field of the Customers table. */

create nonclustered index CustomerID on Customers(CustomerID)
create clustered index CompanyName on Customers(CompanyName)

/* Question 8: Provide a list of suitable fields that you could implement full text searching on. */

ContactTitle
CustomerID
CompanyName



