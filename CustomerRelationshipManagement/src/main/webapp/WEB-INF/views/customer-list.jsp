<%@ page isELIgnored="false" language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer List | Customer Relationship Management</title>
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
			<a href="showFormToAdd" class="btn btn-outline-warning btn-lg">Add
				new customers</a>
		</p>
		<hr>
		<div class="container">
			<h2>Customer List</h2>
			<p>Following is existing customer list:</p>
			<table
				class="table table-dark table-bordered table-striped table-hover">
				<thead>
					<tr>
						<th>Sr. No.</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Email</th>
						<th>Action</th>
					</tr>
				</thead>
				<c:forEach var="customer" items="${customers}" varStatus="c">
					<tbody>
						<tr>
							<td>${c.count}</td>
							<td>${customer.first_name}</td>
							<td>${customer.last_name}</td>
							<td>${customer.email}</td>
							<td><a class="btn btn-info" href="update?id=${customer.id}">Update</a>
								<a class="btn btn-danger" href="delete?id=${customer.id}"
								onclick="if(!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a></td>
						</tr>
					</tbody>
				</c:forEach>
			</table>
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