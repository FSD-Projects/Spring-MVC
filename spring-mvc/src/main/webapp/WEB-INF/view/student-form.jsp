<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<!-- Font Awesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<!-- Bootstrap core CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.11/css/mdb.min.css" rel="stylesheet"><meta charset="ISO-8859-1">
<title>Student Form</title>
</head>
<body>
	<form:form class="text-center border border-light p-5" action="processForm" modelAttribute="student">
	<p class="h4 mb-4">Student Form</p>
	First Name: <form:input class="mb-2" path="firstName" /><br/>
	Last Name: <form:input class="mb-2" path="lastName" /><br/>
	Select Country: <form:select class="mb-2" path="countryName">
			<form:options items="${student.countryMap}" />
		</form:select><br/>
	<input type="submit" />
	</form:form>
</body>
</html>