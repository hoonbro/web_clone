<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<%@ include file="/include/header.jsp"%>
	<div id="demo" class="carousel slide" data-ride="carousel">
		<ul class="carousel-indicators" style="z-index: 1">
			<li data-target="#demo" data-slide-to="0" class=""></li>
			<li data-target="#demo" data-slide-to="1" class="active"></li>
			<li data-target="#demo" data-slide-to="2" class=""></li>
		</ul>
		<div class="carousel-inner">
			<div class="carousel-item">
				<img src="https://www.visitcalifornia.com/sites/visitcalifornia.com/files/styles/welcome_image/public/LosAngeles_Hero_Killackey_1280x642_sized.jpg" alt="Los Angeles"
					style="width: 100%; height: 100%;">
			</div>
			<div class="carousel-item active">
				<img src="https://image.chosun.com/sitedata/image/202010/20/2020102000536_0.png" alt="Chicago"
					style="width: 100%; height: 100%;">
			</div>
			<div class="carousel-item">
				<img src="https://youimg1.tripcdn.com/target/100a10000000pfidn47CE_D_1180_558.jpg" alt="New York" style="width: 100%; height: 100%;">
			</div>
		</div>
		<a class="carousel-control-prev" href="#demo" data-slide="prev"> <span
			class="carousel-control-prev-icon"></span>
		</a> <a class="carousel-control-next" href="#demo" data-slide="next">
			<span class="carousel-control-next-icon"></span>
		</a>
	</div>
	
	<%@ include file="/include/footer.jsp"%>
</body>
</html>