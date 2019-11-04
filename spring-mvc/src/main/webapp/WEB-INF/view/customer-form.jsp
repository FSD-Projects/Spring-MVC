<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<!-- Font Awesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<!-- Bootstrap core CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.11/css/mdb.min.css" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Customer Registration Form</title>
</head>
<style>
.error {
	color: red;
	display: block;
}
</style>
<body>
	<form:form class="text-center border border-light p-5" action="/customer/processForm" modelAttribute="customer">
		<p class="h4 mb-4">Customer Form</p>
		First Name: <form:input class="mb-2" path="firstName" />
		<form:errors path="firstName" cssClass="error" />
		<br />
		Last Name: <form:input class="mb-2"  path="lastName" />
		<form:errors path="lastName" cssClass="error" />
		<br />
		Free Pass: <form:input class="mb-2"  path="freePass" />
		<form:errors path="freePass" cssClass="error" />
		<br />
		Postal Code: <form:input class="mb-2" path="postalCode" />
		<form:errors path="postalCode" cssClass="error" />
		<br />
		Email: <form:input class="mb-2" path="email" />
		<form:errors path="email" cssClass="error" />
		<br />
		<input type="submit" />
	</form:form>
</body>
</html>