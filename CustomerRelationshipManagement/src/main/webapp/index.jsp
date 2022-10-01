<%@ page isELIgnored="false" language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Relationship Management</title>
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

p {
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
			Find the existing customers <a href="customers/list"
				class="btn btn-outline-warning btn-lg">Here</a>
		</p>
		<p>
			Add new customer <a href="customers/showFormToAdd"
				class="btn btn-outline-warning btn-lg">Here</a>
		</p>
	</div>
</body>
</html>