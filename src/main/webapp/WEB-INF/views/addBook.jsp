<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<html>
<body>
	<h1>Add a book</h1>
	<form:form method="post" action="saveBook">
		<table>
			<tr>
				<td>Book Id :</td>
				<td><form:input path="id" /></td>
			</tr>
			<tr>
				<td>Book Name :</td>
				<td><form:input path="bookName" /></td>
			</tr>
			<tr>
				<td>Book Author :</td>
				<td><form:input path="author" /></td>
			</tr>
			<tr>
				<td>Book Price :</td>
				<td><form:input path="price" /></td>
			</tr>
			<tr>
				<td>Book Status :</td>
				<td><form:input path="status" /></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Save Book" /></td>
			</tr>
		</table>
	</form:form>
	
	
	
</body>
