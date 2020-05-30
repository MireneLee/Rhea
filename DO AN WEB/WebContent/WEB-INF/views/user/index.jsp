<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<base href="${pageContext.servletContext.contextPath}/">
</head>
<body>
	<table class="table table-hover">
		<tr>
			<th>Username</th>
			<th>Password</th>
			<th>Firstname</th>
			<th>Lastname</th>
			<th>Email</th>
			<th>Address</th>
			<th>Phone</th>
			<th></th>
		</tr>
		<c:forEach var="u" items="${users}">
			<tr>
				<td>${u.username}</td>
				<td>${u.password}</td>
				<td>${u.firstname}</td>
				<td>${u.lastname}</td>
				<td>${u.email}</td>
				<td>${u.address}</td>
				<td>${u.phone}</td>
				
			</tr>
		</c:forEach>
	</table>
</body>
</html>