<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
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
	height: 120px;
}
section > div {
	height: 80px;
	margin: 10px 0;
}
.userInfo {
	width: 100%;
	height: 100%;
	border: none;
	background: transparent;
}
label {
	font-weight: bold;
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
#userYear, #userDay {
	width: 140px;
	height: 40px;
	border: 1px solid silver;
}
#userMonth {
	width: 140px;
	height: 46px;
	margin: 0 5px;
	border: 1px solid silver;
}
#phoneArea > div {
	height: 50px;
	margin: 5px 0;
}
#userContry {
	height: 46px;
}
#userPhone {
	width: 305px;
	height: 40px;
}
#NumBtn {
	width: 130px;
	height: 40px;
	margin: 0 5px;
	background-color: #47C83E;
	color: white;
	border: 1px solid silver;
}
#joinBtn {
	height: 50px;
	background-color: #47C83E;
	color: white;
	border: 1px solid silver;
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
.box {
	width: 100%;
	height: 50px;
	background-color: white;
	border: 1px solid silver;
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
	<div style="height:40px"></div>
	<div id="logo">
		<a href="#" id="login_logo">NAVER</a>
	</div>
</header>
<section>
	<div>
		<div>
			<label for="userId">아이디</label>
		</div>
		<div class="box">
			<input type="text" name="userId" id="userId" class="userInfo">
		</div>
	</div>
	<div>
		<div>
			<label for="userPwd">비밀번호</label>
		</div>
		<div class="box">
			<input type="password" name="userPwd" id="userPwd" class="userInfo">	
		</div>
	</div>
	<div>
		<div>
			<label for="userRePwd">비밀번호 재확인</label>
		</div>
		<div class="box">
			<input type="password" name="userRePwd" id="userRePwd" class="userInfo">	
		</div>
	</div>
	<div>
		<div>
			<label for="userName">이름</label>
		</div>
		<div class="box">
			<input type="text" name="userName" id="userName" class="userInfo">
		</div>	
	</div>
	<div>
		<div>
			<label for="userYear">생년월일</label>
		</div>
		<div id="born">
			<span id="spanYear">
				<input type="text" name="userYear" id="userYear" placeholder="  년(4자리)">	
			</span>
			<span id="spanMonth">
				<select name="userMonth" id="userMonth">
					<option selected="selected">월</option>
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
					<option>5</option>
					<option>6</option>
					<option>7</option>
					<option>8</option>
					<option>9</option>
					<option>10</option>
					<option>11</option>
					<option>12</option>
				</select>
			</span>
			<span id="spanDay">
				<input type="text" name="userDay" id="userDay" placeholder="  일">
			</span>
		</div>
	</div>
	<div>
		<div>
			<label for="userGender">성별</label>
		</div>
		<div class="box">
			<select name="userGender" id="userGender" class="userInfo">
				<option selected="selected">성별</option>
				<option>남자</option>
				<option>여자</option>
				<option>선택 안함</option>
			</select>
		</div>
	</div>
	<div>
		<div>
			<label for="userEmail">본인 확인 이메일<span>(선택)</span></label>
		</div>
		<div class="box">
			<input type="text" name="userEmail" id="userEmail" placeholder="  선택입력" class="userInfo">	
		</div>
	</div>
	<div style="height:200px;" id="phoneArea">
		<label for="userPhone">휴대전화</label>
		<div class="box">
			<select name="userContry" id="userContry" class="userInfo">
				<option selected="selected">대한민국 +82</option>
			</select>
		</div>
		<div>
			<span>
				<input type="text" name="userPhone" id="userPhone" placeholder="  전화번호 입력">
			</span>
			<span>
				<button id="NumBtn">인증번호 받기</button>
			</span>
		</div>
		<div class="box">
			<input type="text" name="certification" id="certification" placeholder="  인증번호 입력하세요" readOnly="readonly" class="userInfo">
		</div>
	</div>
	<div>
		<input type="submit" class="userInfo" id="joinBtn" value="가입하기">
	</div>
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