<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Đăng nhập</title>
<base href="${pageContext.servletContext.contextPath}/">
<link href="https://fonts.googleapis.com/css2?family=Merriweather&display=swap" rel="stylesheet">
<link rel="stylesheet" href="./resources/css/login.css">
<script type="text/javascript" src="js/query.js"></script>
</head>
<body>



	<form:form action="" modelAttribute="user" method="POST">
		<p>ĐĂNG NHẬP</p>
		<div>Username</div>

		<form:input path="username" name="username" id="username" />
		<div>Password</div>
		<form:password path="password" name="password"
						id="password" />

		<button>Login</button>
	<!--  	<a href="user/fogot_pass.htm">Quên mật khẩu</a> -->
		${message}
		<p>
			Chưa có tài khoản?<a href="user/register.htm" class="create">Tạo
				tài khoản tại đây!</a>
		</p>
		<a href="./admin/homeForm.htm" class="create">Quay laị trang chủ!</a>
	</form:form>











	
</body>
</html>