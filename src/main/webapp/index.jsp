<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Book Store</title>

	<!-- Bootstrap core CSS -->
	<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">

	<link type="text/css" href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
	
	<!-- 
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	-->
	
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
			<a class="text-light active" href="/BookStoreMVC">Home</a>
			<a class="text-light" href="/BookStoreMVC/book/viewbooks">Manage Books</a>
			<a class="text-light" href="/BookStoreMVC/viewemp">Manage Employees</a>
			<a class="text-light" href="/BookStoreMVC/purchase/viewpurchases">Manage Purchases</a>
			<a class="text-light" href="/BookStoreMVC/feedback/viewfeedbacks">Manage Feedbacks</a>
		</nav>
	</div>
	
		<div class="jumbotron p-3 p-md-5 text-white rounded bg-dark">
		<div class="col-md-6 px-0">
			<h1 class="display-4 font-italic">Welcome To Group II's <span class=""><b>Book</b>Store</span></h1>
			<h2 class="text-warning">Explore Your Favorite Books</h2>
			<p class="my-3" style="color: rgb(213,213,213);">
				Find any book you want. The most popular genres are listed below. 
				To purchase a book, first, select your favorite books (the price and other detailed information 
				are attached with the book), then employees will purchase for you.
			</p>
			<p class="lead mb-0"><a href="#" class="text-white font-weight-bold">Continue reading...</a></p>
		</div>
		</div>
		<br>
		<h5>Popular Genres</h5>
		<hr>
		<div class="d-flex justify-content-between">
			<a class="tag" href="#">Technology</a>
			<a class="tag" href="#">Design</a>
			<a class="tag" href="#">Culture</a>
			<a class="tag" href="#">Business</a>
			<a class="tag" href="#">Politics</a>
			<a class="tag" href="#">Opinion</a>
			<a class="tag" href="#">Science</a>
			<a class="tag" href="#">Health</a>
			<a class="tag" href="#">Style</a>
			<a href="#">All genres</a>
		</div>
	
		<br><br>
		<h5>Best Sells</h5>
		<hr>
		<div class="row mb-2 py-5">
		<div class="col-md-6">
			<div class="card flex-md-row mb-4 box-shadow h-md-250">
			<div class="card-body d-flex flex-column align-items-start">
				<strong class="d-inline-block mb-2 text-primary">World of books</strong>
				<h3 class="mb-0">
				<a class="text-dark" href="#">The Kite Runner</a>
				</h3>
				<div class="mb-1 text-muted">Nov 12</div>
				<p class="card-text mb-auto">
					The unforgettable, heartbreaking story of the unlikely friendship between a wealthy 
					boy and the son of his father’s servant, The Kite Runner is a beautifully crafted...
				</p>
				<a href="#">Continue reading</a>
			</div>
			<img class="card-img-right flex-auto d-none d-md-block" 
			src="<c:url value="/resources/img/kite-runner.jpg" />" alt="Card image cap">
			</div>
		</div>
		<div class="col-md-6">
			<div class="card flex-md-row mb-4 box-shadow h-md-250">
			<div class="card-body d-flex flex-column align-items-start">
				<strong class="d-inline-block mb-2 text-success">Design</strong>
				<h3 class="mb-0">
				<a class="text-dark" href="#">Post title</a>
				</h3>
				<div class="mb-1 text-muted">Nov 11</div>
				<p class="card-text mb-auto">This is a wider card with supporting text below as a natural lead-in to
				additional content.</p>
				<a href="#">Continue reading</a>
			</div>
			<img class="card-img-right flex-auto d-none d-md-block" 
			src="<c:url value="/resources/img/memories-of-a-geisha.jpg" />" alt="Card image cap">
			</div>
		</div>
		</div>
	</div>
	
	<main role="main" class="container">
		<div class="row">
		<div class="col-md-8 blog-main">
			<h3 class="pb-3 mb-4 font-italic border-bottom">
			Recommendations
			</h3>
	
		</div>
	
		<aside class="col-md-4 blog-sidebar">
			<div class="p-3 mb-3 bg-light rounded">
			<h4 class="font-italic">About</h4>
			<p class="mb-0">Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit
				amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>
			</div>
	
			<div class="p-3">
			<h4 class="font-italic">Best viewed books</h4>
			<ol class="list-unstyled mb-0">
				<li><a href="#">The Alchemist</a></li>
				<li><a href="#">The Subtile art of not giving a f*ck</a></li>
				<li><a href="#">Who's Adil</a></li>
				<li><a href="#">The Alchemist</a></li>
				<li><a href="#">The Subtile art of not giving a f*ck</a></li>
				<li><a href="#">Who's Adil</a></li>
				<li><a href="#">The Alchemist</a></li>
				<li><a href="#">The Subtile art of not giving a f*ck</a></li>
				<li><a href="#">Who's Adil</a></li>
			</ol>
			</div>
		</aside>
	
		</div>
	
	</main><!-- /.container -->
	
	<a class="feedback" href="/BookStoreMVC/feedback/feedbackform">Your Feedback</a>
	
	<footer class="blog-footer">
		<p>&copy; BookStore 2021, Powered by <a href="#">Group II</a>.</p>
		<p>
		<a href="#">Back to top</a>
		</p>
	</footer>
	
	<script src="<c:url value="/resources/js/main.js" />"></script>
</body>
</html>
