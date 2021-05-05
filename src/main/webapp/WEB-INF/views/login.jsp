<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<c:if test="${cookie.saveId.value ne null}">
	<c:set var="saveId" value="${cookie.saveId.value}"/>
	<c:set var="idck" value=" checked=\"checked\""/>
</c:if>
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
<title>로그인</title>
<style>
body {
	background-color: #f5f6f7;
}
header, section, footer {
	position: relative;
	max-width: 460px;
	margin: 10px auto;
}
header {
	height: 170px;
}
#select_lang {
	font-size: 12px;
}
#lang {
	position: absolute;
	right: 0px;
}
#login_logo {
	font-size: 60px;
	font-weight: 900;
	color: #47C83E;
	text-decoration: none;
}
#logo {
	width: 210px;
	height: 40px;
	line-height: 40px;
	margin: 0 auto;
}
#content1 {
	margin: 0 auto 40px;
	border-bottom: 1px solid silver;
	width: 440px;
}
#userId, #userPwd, #login_btn {
	width: 100%;
	height: 40px;
	margin: 5px auto;
	border: 1px solid silver;
}
#userId, #userPwd {
	font-size: 13px;
}
#login_btn {
	background-color: #47C83E;
	height: 50px;
	margin: 7px 0;
	color: white;
}
#login_save, #security {
	display: none;
}
#login_save + span {
	display: inline-block;
	width: 24px;
	height: 24px;
	margin: -2px 10px 0 0;
	vertical-align: middle;
	cursor: pointer;
	background: url(https://t1.daumcdn.net/cfile/tistory/99B9D6455B6C0C330B) left top no-repeat;
	background-size: cover;
}
#login_save:checked + span {
	background: url(https://t1.daumcdn.net/cfile/tistory/99B9D6455B6C0C330B) -26px top no-repeat;
	background-size: cover;
}
#security + span, #security:checked + span + span {
	display: none;
}
#security + span + span {
	display: inline-block;
	color: gray;
	font-weight: 700;
	margin: 0 5px;
}
#security:checked + span {
	display: inline-block;
	color: #47C83E;
	font-weight: 700;
	margin: 0 5px;
}
#content2 {
	margin: 40px auto;
	width: 440px;
}
#content2 div {
	text-align: center;
}
#QRcode, #tempNum {
	margin: 5px;
	width: 200px;
	height: 50px;
	border: 1px solid #47C83E;
	background-color: white;
}
#navs span a {
	color: gray;
	text-decoration: none;
}
.divide {
	color: silver;
	margin: 0 3px
}
section {
	padding-bottom: 40px;
}
footer {
	height: 60px;
	padding: 10px 0;
	text-align: center;
	font-size: 13px;
}
footer div a {
	text-decoration: none;
	color: black;
}
#footer_logo {
	font-weight: 900;
	color: #47C83E;
	text-decoration: none;
	margin: 0 3px;
}
</style>
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
		<form method="post" action="${root}/member/login">
			<div>
				<div><input type="text" name="userId" id="userId" placeholder=" 아이디" value="${saveId}"></div>
				<div><input type="password" name="userPwd" id="userPwd" placeholder=" 비밀번호"></div>
				<div style="font-size:12px; color: red">${msg}</div>
				<div><input type="submit" value="로그인" id="login_btn"></div>
			</div>
			<div style="position: relative; height: 40px; line-height: 40px">
				<span><label><input type="checkbox" id="login_save" name="save" value="saveok" ${idck}><span></span>로그인 상태 유지</label></span>
				<span style="position: absolute; right: 0px">
					<a href="#" style="text-decoration: none; color: black">IP 보안</a>
					<label><input type="checkbox" checked="checked" id="security" name="security"><span>ON</span><span>OFF</span></label>
				</span>
			</div>
		</form>
	</div>
	<div id="content2">
		<div style="font-size: 19px">더욱 간편한 로그인</div>
		<div style="margin: 10px 0"><button id="QRcode">QR코드 로그인</button><button id="tempNum">일회용 번호 로그인</button></div>
		<div id="navs">
			<span><a href="#">아이디 찾기</a></span>
			<span class="divide">|</span>
			<span><a href="#">비밀번호 찾기</a></span>
			<span class="divide">|</span>
			<span><a href="${root}/member/join">회원가입</a></span>
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