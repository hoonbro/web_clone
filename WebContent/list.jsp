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
<title>Insert title here</title>
<style>
#small_ul {
	font-size: 12px;
	color: gray;
}

.small_li {
	color: gray;
}

.small_li:hover {
	text-decoration: none;
}

.orderby {
	color: gray;
	font-size: 13px;
}

.orderby:hover {
	text-decoration: none;
}

.order li {
	float: left;
	margin-left: 10px;
	list-style: none
}

.order li::before {
	content: "|";
	color: gray;
	padding-right: 10px;
}

.order li:first-child::before {
	content: none
}

#productlist {
	padding: 0px;
	list-style: none;
	display: block;
}

#productlist li {
	margin-right: 14px;
	margin-bottom: 30px;
	display: inline-block;
}

#productlist a:hover {
	text-decoration: none;
}

.productname {
	padding-right: 25px;
	color: black;
	font-size: 13px;
	white-space: nowrap;
	width: 232px;
	overflow: hidden;
	text-overflow: ellipsis;
}

.product {
	position: relative;
}

.like {
	position: absolute;
	bottom: 12px;
	right: 0;
}

.like_btn {
	background-color: white;
	border-style: none;
}

.like_img {
	width: 15px;
	height: 15px;
}
</style>
</head>
<body style="width: 1400px; margin: 0 auto">
	<%@ include file="/include/header.jsp"%>
	<div style="width: 1250px; margin: 0 auto">
		<div class="row">
			<div class='ml-3'>
				<h4 class="font-weight-bold">브라운앤프렌즈</h4>
			</div>
			<div class="ml-auto" id="small_ul">
				<ul class="nav justify-content-end mr-4">
					<li><a class="small_li" href="/index.jsp">홈</a></li>
					<li><a class="small_li" href="#"> > 캐릭터</a></li>
					<li class="dropdown " id="small_ul"><a
						class="dropdown-toggle small_li" data-toggle="dropdown"
						style="color: black;"> > <b>브라운앤프렌즈(총 n개)</b></a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="#">브라운앤프렌즈</a> <a
								class="dropdown-item" href="#">BT21</a> <a class="dropdown-item"
								href="#">브롤스타즈</a>
						</div></li>
				</ul>
			</div>
		</div>
		<!-- 정렬 -->
		<div class="mt-3 mb-3">
			<ul class="nav order">
				<li><a class="orderby" href="">최신등록순</a></li>
				<li><a class="orderby" href="">낮은가격순</a></li>
				<li><a class="orderby" href="">높은가격순</a></li>
			</ul>
		</div>
		<!-- 상품 리스트 -->
		<ul id="productlist">
			<li>
				<div class=product>
					<a href="/product.jsp">
						<img
						src="https://shop-phinf.pstatic.net/20210415_168/1618480728230sFKpE_JPEG/19329562_59904539.jpg?type=f232_232">
						<div class="productname">
							<strong>라인프렌즈 브라운앤코니 하트 시팅 백참 인형 세트</strong><br> <strong>25,000원</strong>
						</div>
					</a>
					<div class="like">
						<button type="button" class="like_btn" aria-pressed="false">
							<i class="far fa-heart"></i>
						</button>
					</div>
				</div>
			</li>
			<li>
				<div class=product>
					<a href="/product.jsp">
						<img
						src="https://shop-phinf.pstatic.net/20210415_225/1618480723156gaqxH_JPEG/19329478_59901152.jpg?type=f232_232">
						<div class="productname">
							<strong>라인프렌즈 코니 하트 시팅 인형</strong><br> <strong>18,000원</strong>
						</div>
					</a>
					<div class="like">
						<button type="button" class="like_btn" aria-pressed="false">
							<i class="far fa-heart"></i>
						</button>
					</div>
				</div>
			</li>
			<li>
				<div class=product>
					<a href="/product.jsp">
						<img
						src="https://shop-phinf.pstatic.net/20210415_31/1618480718203y3IcU_JPEG/19328993_59900969.jpg?type=f232_232">
						<div class="productname">
							<strong>라인프렌즈 브라운 하트 시팅 인형</strong><br> <strong>18,000원</strong>
						</div>
						<div class="like">
							<button type="button" class="like_btn" aria-pressed="false">
								<i class="far fa-heart"></i>
							</button>
						</div>
					</a>
				</div>
			</li>
			<li>
				<div class=product>
					<a href="/product.jsp">
						<img
						src="https://shop-phinf.pstatic.net/20210415_20/16184807131587a8oF_JPEG/19328850_59904538.jpg?type=f232_232">
						<div class="productname">
							<strong>라인프렌즈 브라운앤코니 큐피드 백참 인형 세트</strong><br> <strong>25,000원</strong>
						</div>
						<div class="like">
							<button type="button" class="like_btn" aria-pressed="false">
								<i class="far fa-heart"></i>
							</button>
						</div>
					</a>
				</div>
			</li>
			<li>
				<div class=product>
					<a href="/product.jsp">
						<img
						src="https://shop-phinf.pstatic.net/20210415_279/1618480707866TNgkb_JPEG/19328514_59900948.jpg?type=f232_232">
						<div class="productname">
							<strong>라인프렌즈 코니 큐피드 스탠딩 인형</strong><br> <strong>20,000원</strong>
						</div>
					</a>
					<div class="like">
						<button type="button" class="like_btn" aria-pressed="false">
							<i class="far fa-heart"></i>
						</button>
					</div>
				</div>
			</li>
<li>
				<div class=product>
					<a href="/product.jsp">
						<img
						src="https://shop-phinf.pstatic.net/20210415_168/1618480728230sFKpE_JPEG/19329562_59904539.jpg?type=f232_232">
						<div class="productname">
							<strong>라인프렌즈 브라운앤코니 하트 시팅 백참 인형 세트</strong><br> <strong>25,000원</strong>
						</div>
					</a>
					<div class="like">
						<button type="button" class="like_btn" aria-pressed="false">
							<i class="far fa-heart"></i>
						</button>
					</div>
				</div>
			</li>
			<li>
				<div class=product>
					<a href="/product.jsp">
						<img
						src="https://shop-phinf.pstatic.net/20210415_225/1618480723156gaqxH_JPEG/19329478_59901152.jpg?type=f232_232">
						<div class="productname">
							<strong>라인프렌즈 코니 하트 시팅 인형</strong><br> <strong>18,000원</strong>
						</div>
					</a>
					<div class="like">
						<button type="button" class="like_btn" aria-pressed="false">
							<i class="far fa-heart"></i>
						</button>
					</div>
				</div>
			</li>
			<li>
				<div class=product>
					<a href="/product.jsp">
						<img
						src="https://shop-phinf.pstatic.net/20210415_31/1618480718203y3IcU_JPEG/19328993_59900969.jpg?type=f232_232">
						<div class="productname">
							<strong>라인프렌즈 브라운 하트 시팅 인형</strong><br> <strong>18,000원</strong>
						</div>
						<div class="like">
							<button type="button" class="like_btn" aria-pressed="false">
								<i class="far fa-heart"></i>
							</button>
						</div>
					</a>
				</div>
			</li>
			<li>
				<div class=product>
					<a href="/product.jsp">
						<img
						src="https://shop-phinf.pstatic.net/20210415_20/16184807131587a8oF_JPEG/19328850_59904538.jpg?type=f232_232">
						<div class="productname">
							<strong>라인프렌즈 브라운앤코니 큐피드 백참 인형 세트</strong><br> <strong>25,000원</strong>
						</div>
						<div class="like">
							<button type="button" class="like_btn" aria-pressed="false">
								<i class="far fa-heart"></i>
							</button>
						</div>
					</a>
				</div>
			</li>
			<li>
				<div class=product>
					<a href="/product.jsp">
						<img
						src="https://shop-phinf.pstatic.net/20210415_279/1618480707866TNgkb_JPEG/19328514_59900948.jpg?type=f232_232">
						<div class="productname">
							<strong>라인프렌즈 코니 큐피드 스탠딩 인형</strong><br> <strong>20,000원</strong>
						</div>
					</a>
					<div class="like">
						<button type="button" class="like_btn" aria-pressed="false">
							<i class="far fa-heart"></i>
						</button>
					</div>
				</div>
			</li>
		</ul>
	</div>
	<%@ include file="/include/footer.jsp"%>
</body>
</html>