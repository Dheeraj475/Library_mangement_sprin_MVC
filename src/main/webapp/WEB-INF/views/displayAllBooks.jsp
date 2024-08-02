<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>

<head>
<title>Library Management</title>

<style type="text/css">
.container , .place-btn{
	display: flex;
	justify-content: center;
	align-items: center;
}

a {
	text-decoration: none;
}

table, th, td {
	border-collapse: collapse;
	text-align: center;
	border: 2px solid white;
}

td {
	background-color: lightgreen;
}

th {
	background-color: cyan;
	padding: 10px;
}

.btn {
	color: white;
	font-weight: bolder;
	padding: 10px;
	border-radius: 20px;
	outline: none;
	border: none;
	background-color: blue;
}

.btn:active, .btn:hover, .btn-link:hover, .btn-link:active {
	background-color: #1589FF;
}

.btn-link {
	border-radius: 20px;
	outline: none;
	border: none;
	color: white;
	font-weight: bolder;
	background-color: blue;
	padding: 5px;
}

td {
	padding: 6px;
}
</style>

</head>

<body>

	<h1 style="text-align:center;">Welcome to the BEC Library</h1>
	<p style="text-align:center;">Here you get all favorite books list</p>
	<br>
	<c:if test="${not empty msg}">
		<div style="text-align:center;"><mark><b>${msg}</b></mark></div>
	</c:if>
	<br>
	<div class="container">
		<table border="2" width="70%" cellpadding="2">
			<tr>
				<th>Id</th>
				<th>Book Name</th>
				<th>Author</th>
				<th>Price</th>
				<th>Status</th>
				<th>Borrow</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			<c:forEach var="book" items="${books}">
				<tr>
					<td>${book.id}</td>
					<td>${book.bookName}</td>
					<td>${book.author}</td>
					<td>${book.price}</td>
					<td>${book.status}</td>

					<td><a
						href="${pageContext.request.contextPath}/book/borrowBook/${book.id}"><button
								class="btn-link">Borrow</button></a></td>

					<td><a
						href="${pageContext.request.contextPath}/book/editBook/${book.id}"><button
								class="btn-link">Edit</button></a></td>

					<td><a
						href="${pageContext.request.contextPath}/book/deleteBook/${book.id}"><button
								class="btn-link">Delete</button></a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<br />

	<div class="place-btn">
	<a href="${pageContext.request.contextPath}/book/addBook">
		<button class="btn">Add a Book</button>
	</a>
   </div>


</body>
</html>