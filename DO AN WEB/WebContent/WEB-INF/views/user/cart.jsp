<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">

<title>SAVE PRODUCT</title>
<base href="${pageContext.servletContext.contextPath}/">
<link
	href="https://fonts.googleapis.com/css2?family=Merriweather&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
<link rel="stylesheet" href="./resources/css/cart.css">
<link rel="stylesheet" href="./resources/css/reset.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body>


	<!-- header -->
	<div class="header mid">
		<div class="wraper space">
			<div class="left">
				<a href="./admin/homeForm.htm"> <img src="./images/logo.png"
					alt="Phone Ring" title="Phone Ring">
				</a>
			</div>

			<div class="mid">
				<button>
					<i class="fas fa-search"></i>
				</button>
				<input type="text" autocomplete="off"
					placeholder="Tìm kiếm sản phẩm">
			</div>

			<div class="right">
				<ul class="space">
					<li><a href="user/register.htm">đăng ký</a></li>
					<li>/</li>
					<li><a href="user/login.htm">đăng nhập</a></li>
					<li><a href="./admin/homeForm.htm"><img
							src="./images/cart.png" alt="cart"></a></li>
				</ul>
			</div>
		</div>
	</div>

	<!-- menu -->
	<div class="menu-products">
		<div class="wraper">
			<ul class="space">
				<li><i class="fab fa-servicestack"></i>
					<div class="infor">
						<a href="admin/home.htm">giao hàng</a>
					</div></li>

				<li><i class="fas fa-calendar-week"></i>
					<div class="infor" id="products">
						<a href="admin/pro.htm">15 ngày</a>
					</div></li>

				<li>
					<!-- dropdown --> <a href="#" style="color: white;">BẢO HÀNH <i
						class="fas fa-angle-down" style="margin-left: 10px;"></i>
				</a>

				</li>

				<li><i class="fas fa-phone"></i>
					<div class="infor">
						<a href="admin/control.htm">liên hệ: 0337824083</a>
					</div></li>
			</ul>
		</div>
	</div>


	<div class="edit-product mid">
		<div class="wraper">
			<h3>KHÁCH HÀNG</h3>

			<div class="form">
				<form action="">

					<div class="name-pro">
						<c:forEach var="u" items="${cartlist}">
							<p>Tên khách hàng: ${u.firstname} ${u.lastname} ${u.username}</p>
						</c:forEach>

					</div>

					<div class="name-pro">
						<c:forEach var="u" items="${cartlist}">
							<p>Địa chỉ giao hàng : ${u.address}</p>
						</c:forEach>
					</div>

					<div class="name-pro">

						<c:forEach var="u" items="${cartlist}">
							<p>Số điện thoại: ${u.phone}</p>
						</c:forEach>

					</div>

					<div style="display: block" class="name-pro">
						<p>Tên sản phẩm: </p>
						<ul>
							<c:forEach var="u" items="${plist}">
								<p>${u.name}</p>
							</c:forEach>
						</ul>
						
						
					</div>

					<div class="name-pro">
						<p>Tổng tiền:</p>
						<p>${thanhtien+30000}</p>
					</div>



					<div class="btn-save">
						<a href="./user/save.htm">DAT HANG</a>
						${message}
					</div>
				</form>
			</div>
		</div>
	</div>







	<!-- footer -->
	<div class="footer mid">
		<div class="wraper">
			<p>Công ty TNHH MTV PTIT. Văn phòng: 97 Man Thiện, Quận 9, TP Hồ
				Chí Minh.</p>
			<p>GP số 0314657558 do sở KHĐT Tp Hồ Chí Minh cấp lần đầu ngày
				05/10/2017</p>
		</div>
	</div>

</body>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

</html>