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
<link rel="stylesheet" href="./resources/css/savepro.css">
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
						<li><a href="admin/savepro.htm">thêm sản phẩm</a></li>
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


	<div class="edit-product mid">
		<div class="wraper">
			<h3>SẢN PHẨM</h3>

			<div class="form">
					<form action="./admin/savepro.htm"
					enctype="multipart/form-data" method="post">

					<div class="name-pro">
						<p>Tên sản phẩm:</p>
						<input type="text" placeholder="Tên Sản Phẩm" name="name">
					</div>

					<div class="count-pro">
						<p>Gía sản phẩm:</p>
						<input type="number" placeholder="Gía Sản Phẩm" name="count">
					</div>

					<div class="amount-pro">
						<p>Số lượng:</p>
						<input type="number" placeholder="Số Lượng" name="amount">
					</div>

					<!-- <div class="date-pro">
						<p>Ngày nhập hàng:</p>
						<input type="text" placeholder="Ngày Nhập" name="date">
					</div>
 					-->
					<div class="gender-pro">
						<p>Loại sản phẩm:</p>
						<input type="text" placeholder="Loại Sản Phẩm" name="gender">
					</div>

					<div class="brand-pro">
						<p>Nhãn hiệu:</p>
						<input type="text" placeholder="Nhãn Hiệu" name="brand">
					</div>

					<div class="color-pro">
						<p>Màu sắc:</p>
						<input type="text" placeholder="Màu Sản Phẩm" name="color">
					</div>

					<div class="image-pro">
						<p>Ảnh:</p>
						<input type="file" name="images">
					</div>

					<!--  <div class="btn-image">
						<button>Chọn ảnh</button>
					</div>
-->
					<div class="btn-save">
						<button>Lưu</button>
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