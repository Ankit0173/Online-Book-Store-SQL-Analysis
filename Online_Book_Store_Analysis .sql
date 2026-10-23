use Sql_project;
-- Create Table  =================
drop table if exists Books ;
create Table Books (
                 Book_ID int primary key,
	Title varchar(100),
	Author varchar(100),
	Genre  varchar(50),
	Published_Year Int,
	Price numeric(10,2),
	Stock int
                  );
 drop table if exists  Customers;                 
Create Table Customers(
                       Customer_ID int primary key,
                       Name varchar(100),
	     Email varchar(100),
	     Phone varchar(15),
	     City varchar(50),
	     Country varchar(100));
drop table if exists orders;
create table orders( 
                    Order_ID int primary key,
                    Customer_ID int references customers(customer_id),
	 Book_ID   int references Books(Book_ID),
	 Order_Date Date,
	 Quantity  INT,
	 Total_Amount numeric(10,2));
select * from Books;
select * from customers;
select * from orders;

-- 1) Retrieve All Books in the "Fictions" Genere:
select * from Books where Genre = 'Fiction';

-- 2) Find books published after the year 1950:
select * from books where published_Year >1950;

-- 3) List All Customers from Canada:  
select * from customers where country = "Canada";

-- 4) Show Orders placed in November 2023: 
select * from orders where Order_Date Between "2023-11-01" and "2023-11-30";

-- 5)   Retrieve The Total Stock of Book available:
select sum(stock) as Total_Stock from Books;

-- 6)   Find The details of the most Expensive Book:
select * from books 
order by Price desc limit 1;

-- 7)   Show All Customers Who ordered more than 1 quantity of a book:
select * from orders
where quantity >1;

-- 8)  Retrieve All orders where The Total Amount Exceeds $20: 
select * from orders
 where total_amount > 20;
 
--  9) List All Genre available in the books Table:
 select distinct Genre from books;
 
--  10) Find The book with Lowest stock:
select * from books order by stock asc limit 1; 

-- 11)  Calculate the Total revenue generated from all orders: 
select sum(total_amount) as Total_Revenue from orders;

-- Advance Questions :

-- 1) Retrieve the Total Number of books sold for each genre:
select b.genre, sum(o.quantity) as Total_Book_Sold from orders o inner join books b on
          o.book_id = b.book_id  group by b.genre;
	              

-- 2) Find the average price of books in the "Fantasy" genre:
select avg(price) as Total_Average 
from books where genre = "Fantasy";

-- 3) List Customers who have placed at least 2 orders:
select o.customer_id,c.name, count(o.order_id) as Total_Orders 
from orders o inner join customers c on
o.customer_id = c.customer_id
group by o.customer_id 
having count(o.order_id) >=2;

-- 4) Find the most frequently ordered books:
select o.book_id ,b.title, count(o.order_id) as order_count 
from orders o inner join books b on
o.book_id = b.book_id 
group by o.book_id, b.title  
order by order_count desc limit 1;

-- 5) show the top 3 most expensive books of 'Fantasy' Genre:
select * from books
where genre = "Fantasy"
order by price desc limit 3;

-- 6) Retrieve the total quantity of books sold by each author:
select b.author, sum(o.quantity)as Total_Books_Sold from books b inner join
 orders o on 
b.book_id = o.book_id group by b.author;

-- 7)  Lists Cities where customers who spent over $300 are located:

select distinct c.city , o.Total_amount  from customers c 
inner join 
orders o on
o.customer_id = c.customer_id 
where o.Total_amount > 300;

--    8) Find the Customers who spent the most on orders:
select c.customer_id, c.name , sum(o.total_amount) as Total_Spent
from orders o 
inner join customers c on o.customer_id = c.customer_id
group by c.customer_id,c.name
order by Total_Spent desc limit 1;

-- 9) calculate the stock remaining after fulfilling all orders:
select b.book_id, b.title, b.stock, coalesce(sum(o.quantity),0) as order_Quantity,
b.stock -coalesce(sum(o.quantity),0) as Remaing_Quantity
from books b 
left join
orders o on b.book_id = o.book_id group by b.book_id
order by b.book_id;