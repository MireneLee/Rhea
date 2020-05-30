<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home</title>
<base href="${pageContext.servletContext.contextPath}/">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
<script src="./resources/js/jquery.min.js"></script>
<script src="./resources/js/owl.carousel.js"></script>
<script src="./resources/js/owl.autoplay.js"></script>
<link rel="stylesheet" href="./resources/css/owl.carousel.css">
<script src="./resources/js/script.js"></script>



<link rel="stylesheet" href="./resources/css/demo.css">
<link rel="stylesheet" href="./resources/css/reset.css">

</head>
<body>


	<!-- header -->
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
				<ul style="display:flex;justify-content:space-between ;align-items: center" class="space">
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

	<!-- main body -->
	<div class="landing mid">
		<div class="container space">
			<!-- products -->
			<div class="list-products">
				<ul>
					<li><h2>
							DANH MỤC SẢN PHẨM <i class="fas fa-angle-down"></i>
						</h2></li>
					<c:forEach var="l" items="${list}">
						<li><a href="">${l.namelist}</a></li>

					</c:forEach>
				</ul>
			</div>

			<!-- slider -->
			<div class="owl-carousel" id="landing">
				<div class="items">
					<img src="./images/slider-1.jpg" alt="">
				</div>
				<div class="items">
					<img src="./images/slider-2.jpg" alt="">
				</div>
			</div>
		</div>
	</div>

	<div class="new-products mid">
		<div class="container">
			<div class="menu-new-product">
				<h1>SẢN PHẨM MỚI</h1>
			</div>
			<div class="owl-carousel" id="new-products">
				<div class="items">
					<div>
						<a href="#"><img
							src="./images/phone in air 1.jpg" alt=""></a>
						<div class="infor">
							<p>True Wireless Sesh</p>
							<p>1.500.000đ</p>
						</div>
					</div>
				</div>

				<div class="items">
					<div>
						<a href=""><img src="./images/phone over 1 .jpg" alt=""></a>
						<div class="infor">
							<p>Skullcandy Crusher ANC</p>
							<p>6.690.000đ</p>
						</div>
					</div>
				</div>

				<div class="items">
					<div>
						<a href=""><img src="./images/phone bluetooth 1.jpg" alt=""></a>
						<div class="infor">
							<p>True Wireless Indy</p>
							<p>2.050.000đ</p>
						</div>
					</div>
				</div>

				<div class="items">
					<div>
						<a href=""><img src="./images/phone on air 2.jpg" alt=""></a>
						<div class="infor">
							<p>Koss Porta Pro</p>
							<p>650.000đ</p>
						</div>
					</div>
				</div>

				<div class="items">
					<div>
						<a href=""><img src="./images/phone sport 1.jpg" alt=""></a>
						<div class="infor">
							<p>JBL Reflect Mini 2</p>
							<p>2.250.000đ</p>
						</div>
					</div>
				</div>
				<div class="items">
					<div>
						<a href=""><img src="./images/phone in air 3.jpg" alt=""></a>
						<div class="infor">
							<p>BGVP DMS</p>
							<p>2.650.000đ</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- show products -->
	<div class="products mid">
		<div class="container">
			<div class="menu-product">
				<h1>SẢN PHẨM</h1>
			</div>
			<div class="list">
				<c:forEach var="p" items="${product}">
					<div class="items">
						<div>
							<a href="./user/show.htm?idpro=${p.id}"><img src="./images/${p.images}" alt=""></a>
							<div class="infor">
								<p>${p.name}</p>
								<p>${p.count}</p>
							</div>
						</div>

					</div>
				</c:forEach>
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