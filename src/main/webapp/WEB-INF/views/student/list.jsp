<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student List</title>

<style>
        tr:first-child{
            font-weight: bold;
            background-color: #C6C9C4;
        }
</style>
 

</head>
	<body>
		<spring:url value="/student/register" var="register" />
		<a href="${register}">Register</a>
		<c:if test="${!empty studentList}">
			<table>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Age</th>
					<th>E-Mail</th>
					<th>Settings</th>
				</tr>
	
				<c:forEach items="${studentList}" var="student">
					<tr>
						<td><c:out value="${student.id}"/></td>
						<td><c:out value="${student.name}"/></td>
						<td><c:out value="${student.age}"/></td>
						<td><c:out value="${student.email}"/></td>
						<td>
							<a href="<c:url value='/student/edit/${student.id}' />">Edit</a>
							<a href="<c:url value='/student/delete/${student.id}' />">Delete</a>
							<a href="<c:url value='/student/details/${student.id}' />">Details</a>
						</td> 
					</tr>
				</c:forEach>
			</table>
		</c:if>
	</body>
</html>