<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>Edit Drink</title>
</head>
<body>
	<h2>Edit a Book</h2>
	<form:form method="POST"
		action="${pageContext.request.contextPath}/book/saveBook"
		modelAttribute="command">
		<form:hidden path="id" />
		<table>
			<tr>
				<td>Id:</td>
				<td><form:input path="id" readonly="true" /></td>
			</tr>
			<tr>
				<td>Book Name:</td>
				<td><form:input path="bookName" /></td>
			</tr>
			<tr>
				<td>Author Name :</td>
				<td><form:input path="author" /></td>
			</tr>
			<tr>
				<td>Book Price :</td>
				<td><form:input path="price" /></td>
			</tr>
			<tr>
				<td>Status :</td>
				<td><form:input path="status" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Save" /></td>
			</tr>
		</table>
	</form:form>
</body>
</html>
