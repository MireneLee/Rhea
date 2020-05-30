
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Control Products</title>
<base href="${pageContext.servletContext.contextPath}/">
<link
	href="https://fonts.googleapis.com/css2?family=Merriweather&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
<link rel="stylesheet" href="./resources/css/reset.css">
<link rel="stylesheet" href="./resources/css/product-admin.css">
<link href="https://fonts.googleapis.com/css2?family=Merriweather&display=swap" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
<link rel="stylesheet" href="./resources/css/reset.css">
<link rel="stylesheet" href="./resources/css/control.css">
</head>

<body>

	<!-- header -->
	<div class="header mid">
		<div class="wraper space">
			<div class="left">
				<a href="./admin/homeForm.htm"> <img src="./images/logo.png" alt="Phone Ring"
					title="Phone Ring">
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

	<!-- show-datas -->
	<div class="show mid">
		<div class="wraper">
			<table class="table">
				<thead>
					<tr>
						<th scope="col">Mã đơn hàng</th>
						<th scope="col">Tên khách hàng</th>
						<th scope="col">Giá tiền</th>
						<th scope="col">Số lượng</th>
						<th scope="col">Ngày đặt hàng</th>
						<th scope="col">Tổng tiền</th>
						<th scope="col">Tình trạng</th>
						<th scope="col">Thao tác</th>
						<th scope="col">Hủy bỏ</th>
					</tr>
				</thead>

				<tbody>
					<!-- tr++ ? -->
					<tr>
						<td>Mark</td>
						<td>Mark</td>
						<td>Otto</td>
						<td>@mdo</td>
						<td>@mdo</td>
						<td>@mdo</td>
						<td>@mdo</td>
						<td>@mdo</td>
						<td>@mdo</td>
					</tr>

					<tr>
						<td>Mark</td>
						<td>Mark</td>
						<td>Otto</td>
						<td>@mdo</td>
						<td>@mdo</td>
						<td>@mdo</td>
						<td>@mdo</td>
						<td>@mdo</td>
						<td>@mdo</td>
					</tr>

					<tr>
						<td>Mark</td>
						<td>Mark</td>
						<td>Otto</td>
						<td>@mdo</td>
						<td>@mdo</td>
						<td>@mdo</td>
						<td>@mdo</td>
						<td>@mdo</td>
						<td>@mdo</td>
					</tr>

					<tr>
						<td>Mark</td>
						<td>Mark</td>
						<td>Otto</td>
						<td>@mdo</td>
						<td>@mdo</td>
						<td>@mdo</td>
						<td>@mdo</td>
						<td>@mdo</td>
						<td>@mdo</td>
					</tr>

					<tr>
						<td>Mark</td>
						<td>Mark</td>
						<td>Otto</td>
						<td>@mdo</td>
						<td>@mdo</td>
						<td>@mdo</td>
						<td>@mdo</td>
						<td>@mdo</td>
						<td>@mdo</td>
					</tr>

					<tr>
						<td>Mark</td>
						<td>Mark</td>
						<td>Otto</td>
						<td>@mdo</td>
						<td>@mdo</td>
						<td>@mdo</td>
						<td>@mdo</td>
						<td>@mdo</td>
						<td>@mdo</td>
					</tr>

				</tbody>
			</table>
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