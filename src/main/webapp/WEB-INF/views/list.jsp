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
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

<link rel="stylesheet" href="/css/ProductList.css">
<script src = "/js/ProductList.js"></script>
<title>Insert title here</title>
</head>
<body style="width: 1400px; margin: 0 auto">
	<%@ include file="./include/header.jsp"%>
	<div style="width: 1250px; margin: 0 auto">
		<div class="row">
			<div class='ml-3'>
				<h4 class="font-weight-bold">브라운앤프렌즈</h4>
			</div>
			<div class="ml-auto" id="small_ul">
				<ul class="nav justify-content-end mr-4">
					<li><a class="small_li" href="./index.jsp">홈</a></li>
					<li><a class="small_li" href="#"> > 캐릭터</a></li>
					<li class="dropdown " id="small_ul"><a
						class="dropdown-toggle small_li" data-toggle="dropdown"
						style="color: black;"> > <b>브라운앤프렌즈(총 ${list.size()}개)</b></a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="${root}/product/list">브라운앤프렌즈</a> <a
								class="dropdown-item" href="#">BT21</a> <a class="dropdown-item"
								href="#">브롤스타즈</a>
						</div></li>
				</ul>
			</div>
		</div>
		<!-- 정렬 -->
		<div class="mt-3 mb-3">
			<ul class="nav order">
				<li><button class = "orderbyBtn" aria-pressed="false" value = "pDate">최신등록순</button></li>
				<li><button class = "orderbyBtn" aria-pressed="false" value = "pPrice">낮은가격순</button></li>
				<li><button class = "orderbyBtn" aria-pressed="false" value = "pPrice desc">높은가격순</button></li>
			</ul>
		</div>
		<!-- 상품 리스트 -->
		<ul id="productlist">
			<c:forEach var = "item" items = "${list }">
				<li>
				<div class=product>
				
					<a href="${root }/product/detail?pNum=${item.pNum}"> <img
						src="${item.pUrl }">
						<div class="productname">
							<strong>${item.pName }</strong><br> <strong>${item.pPrice}원</strong>
						</div>
					</a>
					<div class="hide_btn d-flex justify-content-center">
						<button type="button" class="like_img_btn" aria-pressed="false">
							<i class="hide_icon far fa-heart"></i>
						</button>
					</div>
					<div class="like">
						<button type="button" class="like_btn" aria-pressed="false">
							<i class="far fa-heart"></i>
						</button>
					</div>
				</div>
			</li>
			</c:forEach>
		</ul>
	</div>
	<%@ include file="./include/footer.jsp"%>
</body>
</html>