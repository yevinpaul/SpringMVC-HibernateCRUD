<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit User</title>
</head>
	<body>
		<spring:url value="/student/list" var="list"/>
		<a href="${list}">Student List</a>
		<c:url var="action" value="/student/update"></c:url>
		<form:form method="POST" action="${action}" modelAttribute="student">
			<table>
				<tr>
					<td><form:hidden path="id" /> <form:label path="name">Name</form:label>
					</td>
					<td><form:input path="name" /></td>
				</tr>
				<tr>
					<td><form:label path="age">Age</form:label></td>
					<td><form:input path="age" /></td>
				</tr>
				<tr>
					<td><form:label path="email" type="email">E-Mail</form:label></td>
					<td><form:input path="email" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Update Student" /></td>
				</tr>
			</table>
		</form:form>
	</body>
</html>