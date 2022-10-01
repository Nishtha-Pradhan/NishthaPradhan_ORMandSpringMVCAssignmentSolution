<%@ page isELIgnored="false" language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Registration | Customer Relationship Management</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

<style type="text/css">
h1 {
	text-align: center;
}

h2 {
	text-align: center;
}

hr {
	background-color: white;
	height: 1px;
}
</style>

</head>
<body>
	<div class="container p-3 my-3 bg-dark text-white">
		<h1>Customer Relationship Management</h1>
		<hr>
		<p>
			<a href="list" class="btn btn-outline-warning btn-lg">Find
				existing customers</a>
		</p>
		<hr>
		<div class="container">
			<h2>Customer Registration Form</h2>
			<form action="save" method="post">
				<div class="form-group">
					<input type="hidden" class="form-control" name="id"
						value="${customer.id}">
				</div>
				<div class="form-group row">
					<div class="col-sm-2 col-form-label">

						<label for="first_name">Enter First Name</label>
					</div>
					<div class="col-sm-8">
						<input type="text" class="form-control"
							placeholder="Enter First Name" name="first_name"
							value="${customer.first_name}">
					</div>
				</div>
				<div class="form-group row">
					<div class="col-sm-2 col-form-label">

						<label for="last_name">Enter Last Name</label>
					</div>
					<div class="col-sm-8">
						<input type="text" class="form-control"
							placeholder="Enter Last Name" name="last_name"
							value="${customer.last_name}">
					</div>
				</div>
				<div class="form-group row">
					<div class="col-sm-2 col-form-label">
						<label for="email">Enter Email</label>
					</div>
					<div class="col-sm-8">
						<input type="text" class="form-control" placeholder="Enter Email"
							name="email" value="${customer.email}">
					</div>
				</div>

				<button type="submit" class="btn btn-outline-warning btn-lg">Save</button>
			</form>
		</div>
		<hr>
		<p>
			Go back to front page <a href="/CustomerRelationshipManagement"
				class="btn btn-outline-warning btn-lg">&lt;&lt; Back</a>
		</p>
		<hr>
	</div>
</body>
</html>