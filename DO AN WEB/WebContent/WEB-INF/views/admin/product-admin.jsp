<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">


<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Products</title>
<base href="${pageContext.servletContext.contextPath}/">
<link
	href="https://fonts.googleapis.com/css2?family=Merriweather&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
<link rel="stylesheet" href="./resources/css/reset.css">
<link rel="stylesheet" href="./resources/css/product-admin.css">
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
					<li><a href="./admin/homeForm.htm"><img src="./images/cart.png"
							alt="cart"></a></li>
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
						<a href="admin/home.htm">trang chủ</a>
					</div></li>

				<li><i class="fas fa-calendar-week"></i>
					<div class="infor" id="products">
						<a href="admin/pro.htm">sản phẩm</a>
					</div></li>

				<li>
					<!-- dropdown --> <a href="#" style="color: white;">DANH MỤC
						SẢN PHẨM <i class="fas fa-angle-down" style="margin-left: 10px;"></i>
				</a>
					<ul>
						<li><a href="admin/savepro.htm">thêm sản
								phẩm</a></li>
						<li><a href="admin/pro.htm">xóa</a></li>
						<li><a href="admin/pro.htm">sửa</a></li>
					</ul>
				</li>

				<li><i class="fas fa-phone"></i>
					<div class="infor">
						<a href="admin/control.htm">quản lí đơn hàng</a>
					</div></li>
			</ul>
		</div>
	</div>

	<!-- show products -->
	<div class="product mid">
		<div class="container">
			<div class="menu-product">
				<h1>SẢN PHẨM</h1>
			</div>

			<div class="lists">
				<c:forEach var="p" items="${product}">
					<div class="item">
					<div>
						<form action="./admin/pro.htm?idpro=${p.id}" method="post">
							<div>
								<img src="./images/${p.images}" alt="">
								<div class="infor">
									<p>${p.name}</p>

								</div>
							</div>
							<div class="btn">
								<a href="./admin/update.htm?idpro=${p.id}"> <i class="far fa-edit"></i>
								</a> 
								<button style="padding: 0px 10px; border-radius: 2px; margin-left: 5px;"> 
									<i style="color: #fff;" class="fas fa-trash-alt"></i>
								
								</button>
								
								${messge}
							</div>
						</form>
					</div>
					</div>
				</c:forEach>
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

</html>