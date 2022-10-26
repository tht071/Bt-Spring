<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<link href="<c:url value="/resources/css/bootstrap522.min.css" />"
	rel="stylesheet">
</head>
<body>
	<div class="container">
		<div
			class="row \${1| ,row-cols-2,row-cols-3, auto,justify-content-md-center,|} d-flex justify-content-center">
			<div class="col-3 justify-content-center">
				<p>
					<c:if test="${message != null}">
						<span class="text-danger fw-bold">${message}</span>
					</c:if>
				</p>
				<h1 class="text-success text-primary">Login</h1>
				<form:form action="login" method="post" modelAttribute="user">
					<div class="mb-3">
						<form:label path="username" cssClass="form-label">Username:</form:label>
						<form:input path="username" cssClass="form-control" />
					</div>
					<div class="mb-3">
						<form:label path="password" cssClass="form-label">Password:</form:label>
						<form:password path="password" cssClass="form-control" />
					</div>
					<div class="mb-3">
						<form:button class="btn btn-primary">Login</form:button>
						<!-- <button type="submit" class="btn btn-primary">Login</button> -->
					</div>
				</form:form>
			</div>
		</div>
	</div>
	<script src="<c:url value="resources/js/bootstrap522.bundle.min.js" />"></script>
</body>
</html>