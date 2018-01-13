<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
   <head>
      <title>Spring MVC Form Handling</title>
   </head>

   <body>
   
   	<spring:url value="/student/list" var="list"/>
		<a href="${list}">Student List</a>
   	
      <table>
         <tr>
            <td>Name :</td>
            <td>${Name}</td>
         </tr>
         <tr>
            <td>Age :</td>
            <td>${Age}</td>
         </tr>
         <tr>
            <td>E-Mail :</td>
            <td>${EMail}</td>
         </tr>
      </table>  
   </body>
   
</html>