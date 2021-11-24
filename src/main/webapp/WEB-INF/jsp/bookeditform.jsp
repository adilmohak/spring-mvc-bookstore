<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Book | Book Store</title>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">

    <link type="text/css" href="<c:url value="/resources/css/style.css" />" rel="stylesheet">

</head>

<body>
<div class="container">
    
	<header class="blog-header py-3">
		<div class="row flex-nowrap justify-content-between align-items-center">
			<div class="col-4 pt-1">
			<a class="text-muted" href="/BookStoreMVC/subscribe">Subscribe</a>
			</div>
			<div class="col-4 text-center">
			<a class="blog-header-logo text-dark" href="/BookStoreMVC"><b>Book</b>Store</a>
			</div>
			<div class="col-4 d-flex justify-content-end align-items-center">
			<a class="text-muted" href="#">
				<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none"
				stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="mx-3">
				<circle cx="10.5" cy="10.5" r="7.5"></circle>
				<line x1="21" y1="21" x2="15.8" y2="15.8"></line>
				</svg>
			</a>
			<a class="btn btn-sm btn-outline-secondary me-2" href="/BookStoreMVC/login">Login</a>
			<a class="btn btn-sm btn-secondary" href="/BookStoreMVC/register">Sign up</a>
			</div>
		</div>
	</header>
	
	<div class="nav-scroller bg-dark text-light mb-2" style="border-radius: 4px;">
		<nav class="nav d-flex justify-content-between">
			<a class="text-light" href="/BookStoreMVC">Home</a>
			<a class="text-light active" href="/BookStoreMVC/book/viewbooks">Manage Books</a>
			<a class="text-light" href="/BookStoreMVC/viewemp">Manage Employees</a>
			<a class="text-light" href="/BookStoreMVC/purchase/viewpurchases">Manage Purchases</a>
			<a class="text-light" href="/BookStoreMVC/feedback/viewfeedbacks">Manage Feedbacks</a>
		</nav>
	</div>
	
	<br><br>
	
    <div class="col-md-8 mx-auto border">
	    <div class="bg-light p-3 mb-3"><h4>Edit Book</h4></div>
	    
		    <form:form method="post" action="/BookStoreMVC/book/editsave" class="p-3">

			    <div class="mb-3">
				  <label for="title" class="form-label">title</label>
				  <form:input class="form-control" placeholder="Book Title" path="title" />
				</div>
			    <div class="mb-3">
				  <label for="author" class="form-label">Author</label>
				  <form:input class="form-control" placeholder="Book Author" path="author" />
				</div>
			    <div class="mb-3">
				  <label for="genre" class="form-label">Genre</label>
				  <form:input class="form-control" placeholder="Genre" path="genre" />
				</div>
			    <div class="mb-3">
				  <label for="price" class="form-label">price</label>
				  <form:input class="form-control" placeholder="Price" path="price" />
				</div>
			    <div class="mb-3">
				  <label for="copy" class="form-label">Copies</label>
				  <form:input class="form-control" placeholder="Copy" path="copy" />
				</div>
			    <div class="mb-3">
				  <label for="description" class="form-label">Description</label>
				  <form:textarea class="form-control" placeholder="Description/Summary" path="description" />
				</div>
				<button type="submit" class="btn btn-primary">Update Book</button>
				
			</form:form>
			
		</div>
	</div>
</body>

</html>