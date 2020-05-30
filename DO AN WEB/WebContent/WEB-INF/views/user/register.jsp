<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Đăng ký</title>
<base href="${pageContext.servletContext.contextPath}/">
<link href="https://fonts.googleapis.com/css2?family=Merriweather&display=swap" rel="stylesheet">
<link rel="stylesheet" href="./resources/css/register.css">
</head>
<body>
 <form:form action="user/register.htm" name="register-form" method="post" modelAttribute="user">

		<p>ĐĂNG KÝ</p>
		<label for=""> Username </label> 
			<form:input path="username" name="username" id="username" />
			<form:errors path="username"></form:errors>
			<br>
		<label for=""> Password </label> 
			<form:password path="password" name="password"
						id="password" />
			<form:errors path="password"></form:errors>
			<br>
		<label for=""> Firstname </label> 
			<form:input path="firstname" name="firstname"
						id="firstname" />
			<form:errors path="firstname"></form:errors>
			<br>
		<label for="">Lastname</label> 
			<form:input path="lastname" name="lastname" id="lastname" />
			<form:errors path="lastname"></form:errors>	
			<br>
		<label for="">Email </label> 
			<form:input path="email" type="email" name="email" id="email" />
			<form:errors path="email"></form:errors>
			<br>
			
		<label for="">Address </label> 
			<form:input path="address" name="address" id="address" />
			<form:errors path="address"></form:errors>	
			<br>
			
		<label for="">Phone</label> 
			<form:input path="phone" type="phone" name="phone" id="phone" />
			<form:errors path="phone"></form:errors>
			<br>
					
		
		<button>Đăng ký</button>
		${message}
		<p>
			Tôi đã có tài khoản, <a href="user/login.htm" class="login-here">đăng nhập tại đây!</a>
		</p>
		<a href="./admin/homeForm.htm" class="create">Quay laị trang chủ!</a>
	</form:form>

	
	
</body>
</html>