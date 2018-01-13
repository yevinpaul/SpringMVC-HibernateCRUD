<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
	<title>Student Registration</title>
</head>

	<body>
		<c:url var="action" value="/student/create"></c:url>
		
		<form:form method="POST" action="${action}" modelAttribute="student">
			<table>
				<tr>
					<td><form:label path="name">Name</form:label></td>
					<td><form:input path="name"/></td>
				</tr>
				<tr>
					<td><form:label path="age">Age</form:label></td>
					<td><form:input path="age"/></td>
				</tr>
				<tr>
					<td><form:label path="email">E-mail</form:label></td>
					<td><form:input path="email"/></td>
				</tr>				
				<tr>
					<td colspan="2"><input type="submit" value="Submit" /></td>
				</tr>
			</table>
		</form:form>
	</body>
	
</html>