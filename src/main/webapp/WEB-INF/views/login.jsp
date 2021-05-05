<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href ="/css/Login.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>로그인</title>

</head>
<body>
<header>
	<div id="lang">
		<select id="select_lang">
			<option>한국어</option>
			<option>English</option>
		</select>
	</div>
	<div style="height:80px"></div>
	<div id="logo">
		<a href="#" id="login_logo">NAVER</a>
	</div>
</header>
<section>
	<div id="content1">
		<div><input type="text" name="userId" id="userId" placeholder=" 아이디"></div>
		<div><input type="password" name="userPwd" id="userPwd" placeholder=" 비밀번호"></div>
		<div><button id="login_btn">로그인</button></div>
		<div style="position: relative; height: 40px; line-height: 40px">
			<span><label><input type="checkbox" checked="checked" id="login_save"><span></span>로그인 상태 유지</label></span>
			<span style="position: absolute; right: 0px">
				<a href="#" style="text-decoration: none; color: black">IP 보안</a>
				<label><input type="checkbox" checked="checked" id="security"><span>ON</span><span>OFF</span></label>
			</span>
		</div>
	</div>
	<div id="content2">
		<div style="font-size: 19px">더욱 간편한 로그인</div>
		<div style="margin: 10px 0"><button id="QRcode">QR코드 로그인</button><button id="tempNum">일회용 번호 로그인</button></div>
		<div id="navs">
			<span><a href="#">아이디 찾기</a></span>
			<span class="divide">|</span>
			<span><a href="#">비밀번호 찾기</a></span>
			<span class="divide">|</span>
			<span><a href="${pageContext.request.contextPath}/member/join">회원가입</a></span>
		</div>
	</div>
	<div>
		<img src="https://ssl.pstatic.net/static/nid/login/m_920_294_210308.png" alt="광고 자리" style="max-width:460px; height:147px;">
	</div>
	<div style="height: 100px"></div>
</section>
<footer>
	<div>
		<span><a href="#">이용약관</a></span>
		<span class="divide">|</span>
		<span><a href="#"><strong>개인정보처리방침</strong></a></span>
		<span class="divide">|</span>
		<span><a href="#">책임의 한계와 법적고지</a></span>
		<span class="divide">|</span>
		<span><a href="#">회원정보 고객센터</a></span>
	</div>
	<div>
		<span><a target="_blank" href="https://www.naver.com" id="footer_logo">NAVER</a></span>
		<span style="font-size: 12px">Copyright © <strong>NAVER Corp.</strong> All Rights Reserved.</span>
	</div>
</footer>
</body>
</html>