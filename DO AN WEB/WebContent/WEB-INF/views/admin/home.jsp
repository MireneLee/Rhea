
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin</title>
<base href="${pageContext.servletContext.contextPath}/">
<link href="https://fonts.googleapis.com/css2?family=Merriweather&display=swap" rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
<link rel="stylesheet" href="./resources/css/admin.css">
<link rel="stylesheet" href="./resources/css/reset.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
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
	<div class="menu mid">
		<div class="container">
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

	<!-- body -->
	<div class="body mid">
		<div class="container space">
			<div class="left">
				<img src="./images/slider-2.jpg" alt="">
			</div>

			<div class="right">
				<p>Tất cả các thiết bị âm thanh phục vụ cho nhu cầu thưởng thức
					cá nhân bạn đều có thể tìm thấy ở Phone ring Audio : Tai nghe True
					Wireless, Tai nghe Bluetooth, Tai nghe nhạc Hi-res, Tai nghe kiểm
					âm cao cấp, DAC/AMP di động, Máy nghe nhạc chất lượng cao, Loa di
					động, Phụ kiện âm thanh..</p>

				<p>Phone ring Audio là đối tác chính thức của nhiều thương hiệu
					âm thanh lớn như : SONY, JBL, Marshall, Skullcandy, Padmate,
					Harman-Kardon, Ultimate Ears, Chord, Pioneer, Jabra, Bose,
					Audio-Technica, Sennheiser, AKG, Shure, Astell&Kern...</p>

				<p>Chúng tôi tự hào là hệ thống có số lượng tai nghe và thiết bị
					trải nghiệm đồ sộ bậc nhất Việt Nam. Đến với Xuân Vũ Audio, bạn sẽ
					được đội ngũ nhân viên tận tình với phương châm : “Phục vụ khách
					hàng như chính người nhà của mình”. Khách hàng được trải nghiệm sản
					phẩm và nhận tư vấn hoàn toàn miễn phí trước khi quyết định mua
					hàng</p>
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

<script src="/js/jquery-3.5.0.min.js"></script>
<script src="/js/admin.js"></script>

</html>