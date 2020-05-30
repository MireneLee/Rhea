<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Thông tin sản phẩm</title>
<base href="${pageContext.servletContext.contextPath}/">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
<script src="./resources/js/jquery.min.js"></script>
<script src="./resources/js/owl.carousel.js"></script>
<script src="./resources/js/owl.autoplay.js"></script>
<link rel="stylesheet" href="./resources/css/owl.carousel.css">
<script src="./resources/js/script.js"></script>



<link rel="stylesheet" href="./resources/css/show.css">
<link rel="stylesheet" href="./resources/css/reset.css">
</head>
<body>

	<div class="header mid">
		<div class="container space">
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
					<li><a href="./admin/homeForm.htm"><img src="./images/cart.png"
							alt="cart">
							<p style="padding:5px 10px; position: relative; top: -35px;left:30px;border-radius: 20px;">${dem}</p>
						</a></li>
				</ul>
			</div>
		</div>
	</div>

	<!-- menu -->
	<div class="menu mid">
		<div class="container">
			<ul class="space">
				<li><i class="fab fa-servicestack"></i>
					<div class="infor">
						<h5>GIAO HÀNG</h5>
						<p>Tận nơi toàn quốc</p>
					</div></li>

				<li><i class="fas fa-calendar-week"></i>
					<div class="infor">
						<h5>15 NGÀY</h5>
						<p>Đổi trả hàng</p>
					</div></li>

				<li><i class="fas fa-tools"></i>
					<div class="infor">
						<h5>BẢO HÀNH</h5>
						<p>Nhanh chóng</p>
					</div></li>

				<li><i class="fas fa-phone"></i>
					<div class="infor">
						<h5>Liên hệ</h5>
						<p>0123456789</p>
					</div></li>
			</ul>
		</div>
	</div>


	<div class="body mid">

		<div class="container space">
			<!-- thong tin -->
			<div class="list-products">
				<form:form action="./user/pay.htm?idprod=${pro.id}"
					modelAttribute="pro" style="display: flex;">
					<div class="left">
						<a href=""><img src="./images/${pro.images}" alt=""></a>
					</div>
					<div style="margin-left: 20px" class="right">
						<h1 style="margin-top: 10px">${pro.name}</h1>
						<p style="margin-top: 10px">Mã hàng:${pro.id}</p>
						<p style="margin-top: 10px">Thương hiệu:${pro.brand}</p>
						<p style="margin-top: 10px">Tình trạng:${pro.status}</p>
						<p style="margin-top: 10px">Màu sắc:${pro.color}</p>
						<h2 style="margin-top: 10px">Giá:${pro.count}</h2>
						<button style="margin-top:10px; color:white ;width: 150px;height: 40px;background-color: #3498db;">Mua ngay</button>
					</div>

				</form:form>

				<a href="">Mô tả</a> 
				<a href="">Thông số</a>
			</div>
		</div>
	</div>
	<!-- footer -->
	<div class="footer mid">
		<div class="container">
			<p>Công ty TNHH MTV Global Fashion. Văn phòng: Lầu 4 tòa nhà ACM
				số 96 Cao Thắng phường 04 quận 03 TP Hồ Chí Minh.</p>
			<p>GP số 0314657558 do sở KHĐT Tp Hồ Chí Minh cấp lần đầu ngày
				05/10/2017</p>
		</div>
	</div>

</body>
</html>