# Bookstore management system

## Technologies used:
	- Server: Apache Tomcat 9.0.55
	- Database: MySQL
	- Backend
		- JDBC
		- Spring MVC
		- Servlet
	- Frontend
		- JSP
		- Bootstrap
		- CSS

## Project Perspective:

	- User management(only for Admins and Employees(not for customers)):
		- Register
		- Login/Logout
	- Customers view or find books easly without going anywhere
	- Customers can search books by title using search input or by clicking 
	  tags specified on the home page
	- After customers select their books, then employees sells selected books 
		to the customer by adding customer and purchase detail
	- Admin can Add, Edit and Delete employees
	- Admin can Add, Edit and Delete books
	- Admin can Add, Edit and Delete purchases
	- Admin can view, and Delete feedbacks
	- Customers can give feedback
	- Stores purchase history
	- The header navbar only display for Admin

## Tables creation queries:

**Before running the project, create the tables by running this sql commands**
```sql
create table bookstore.user
(
	id int(50) primary key auto_increment, 
	first_name varchar(220),  
	last_name varchar(220), 
	phone varchar(120), 
	email varchar(120), 
	password varchar(220),
	date_created timestamp default now()
);
```
```sql
create table bookstore.admin
(
	id int(50) primary key auto_increment, 
	user_id int(45),  
	is_admin boolean default(false),
	FOREIGN KEY (user_id) REFERENCES bookstore.user(id)
);
```
```sql
create table bookstore.book
(
	id int(50) primary key auto_increment, 
	title varchar(220), 
	author varchar(120), 
	genre varchar(120), 
	description text, 
	date_created timestamp default now(), 
	copy int(10), 
	price decimal(2)
);
```
```sql
create table bookstore.employee
(
	id int(50) primary key auto_increment, 
	name varchar(120), 
	salary decimal(50), 
	department varchar(120), 
	reg_date timestamp default now()
);
```
```sql
create table bookstore.feedback 
(
	id int(50) primary key auto_increment, 
	name varchar(120), 
	phone varchar(120), 
	email varchar(120), 
	feedback text, 
	date_created timestamp default now()
);
```
```sql
create table bookstore.purchase_detail
(
	id int(50) primary key auto_increment,  
	name varchar(120), 
	phone varchar(120), 
	books text, 
	quantity int(50), 
	total_price decimal(50), 
	date_purchased timestamp default now()
);
```
## Useful? Give it a star✨✨🤩
# Thanks
