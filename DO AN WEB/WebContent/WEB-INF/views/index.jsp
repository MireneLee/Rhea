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
			<th>Tên</th>
			<th>Giá tiền</th>
			<th>Số lượng</th>
			<th>Loại</th>
			<th>Thương hiệu</th>
			<th>Màu sắc</th>
			<th></th>
		</tr>
		<c:forEach var="p" items="${product}">
			<tr>
				<td>${p.name}</td>
				<td>${p.count}</td>
				<td>${p.amount}</td>
				<td>${p.gender}</td>
				<td>${p.brand}</td>
				<td>${p.color}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>