<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/Join.css">
<title>회원가입</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#userId").blur(function() {
			const idReg = /^[A-Za-z]+[A-Za-z0-9_-]{4,19}$/;
			var userId = $("#userId").val();
			
			if (userId == '') {
				$("#idCheck").text("필수 정보입니다.");
			} else if (!idReg.test(userId)) {
				$("#idCheck").text("5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.");
			}
			else {
				$.ajax({
					url : '/restMember/join/' + userId,
					type : 'GET',
					contentType : 'application/json;charset=utf-8',
					dataType : 'json',
					success : function(isExist) {
						if (!isExist) {
							$("#idCheck").empty();
						} else {
							$("#idCheck").text("이미 사용중인 아이디입니다.");
						}
					}
				});
			}
		});
		
		$("#userPwd").blur(function() {
			const check1 = /[0-9]/;
			const check2 = /[A-Za-z]/;
			const check3 = /[!@#$%^&*]/;
			
			var userPwd = $("#userPwd").val();
			
			if (userPwd == '') {
				$("#pwdCheck").text("필수 정보입니다.");
			} else if (!check1.test(userPwd) || !check2.test(userPwd) || !check3.test(userPwd)) {
				$("#pwdCheck").text("8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.");
			} else {
				$("#pwdCheck").empty();
			}
		});
		
		$("#userRePwd").blur(function() {
			console.log($("#userRePwd").val());
			console.log($("#userPwd").val());
			
			if ($("#userRePwd").val() != $("#userPwd").val()) {
				$("#repwdCheck").text("비밀번호가 일치하지 않습니다.");
			} else {
				$("#repwdCheck").empty();
			}
		});
		
		
		$("#userYear").blur(function() {
			var userYear = $("#userYear").val();
			if(userYear == '' || userYear.length !=4) {
				$("#birthCheck").text("태어난 년도 4자리를 정확하게 입력하세요");
			}
			else if(userYear.length ==4) {
				$("#birthCheck").text("태어난 월을 선택하세요.");				
			}
		});
		
		$("#userMonth").change(function() {
			$("#birthCheck").text("태어난 일(날짜) 2자리를 정확하게 입력하세요.");
		});
		
		$("#userDay").blur(function() {
			let userDay = $("#userDay").val();
			let userMonth = $("#userMonth").val();
			const check1 = /[0-9]/;
			const check2 = /[A-Za-z]/;
			const check3 = /[!@#$%^&*]/;
			
			if(check2.test(userDay) || check3.test(userDay) || userDay.length <2) {
				$("#birthCheck").text("생년월일을 다시 확인해주세요.");
			}				
			else if((userMonth ==1 || userMonth ==3 || userMonth ==5 || userMonth ==7 || userMonth==8 ||
					userMonth == 10 || userMonth ==12) && userDay >31) {
				$("#birthCheck").text("생년월일을 다시 확인해주세요.");
			}
			else if((userMonth==4 || userMonth==6 || userMonth==9 || userMonth==11) && userDay>30) {
				$("#birthCheck").text("생년월일을 다시 확인해주세요.");
			}
			else if((userMonth==2) && userDay>28) {
				$("#birthCheck").text("생년월일을 다시 확인해주세요.");
			}	
			else {
				$("#birthCheck").empty();
			}
		});
		
		
		$("#userEmail").blur(function() {
			var email = $("#userEmail").val();
			
			
			if(email !='') {
				var gol_idx = email.indexOf('@');
				var jum_idx = email.indexOf('.');
				console.log(gol_idx+"      "+jum_idx);
				if(gol_idx <=0 || jum_idx <=0) { //없거나 첫글자로 위치할 떄
					$("#mailCheck").text("이메일 주소를 다시 확인해주세요.");
				}
				else if(gol_idx == email.length-1 || jum_idx == email.length-1) {
					$("#mailCheck").text("이메일 주소를 다시 확인해주세요.");
				}
				else {
					$("#mailCheck").empty();
				}	
			}
		});

		$("#userPhone").blur(function() {
			var phoneNumber = $("#userPhone").val();
			
			if(phoneNumber =='') {
				$("#phoneCheck").text("필수 정보입니다.");
			}
		});
		
		$("#certification").blur(function() {
			var cert = $("#certification").val();
			if(cert=='') {
				$("#phoneCheck").text("인증이 필요합니다.");
			}
		});
		
		
	
	});
</script>
</head>
<body>
	<header>
		<div style="height: 40px"></div>
		<div id="logo">
			<a href="/" id="login_logo">NAVER</a>
		</div>
	</header>
	<section>
		<form method="post" action="">
			<div class="item">
				<div class="label">
					<label for="userId">아이디</label>
				</div>
				<div class="box">
					<input type="text" name="userId" id="userId" class="userInfo" />
				</div>
				<div id="idCheck" class="checkItem"></div>
			</div>
			<div class="item">
				<div class="label">
					<label for="userPwd">비밀번호</label>
				</div>
				<div class="box">
					<input type="password" name="userPwd" id="userPwd" class="userInfo">
				</div>
				<div id="pwdCheck" class="checkItem"></div>
			</div>
			<div class="item">
				<div class="label">
					<label for="userRePwd">비밀번호 재확인</label>
				</div>
				<div class="box">
					<input type="password" name="userRePwd" id="userRePwd"
						class="userInfo">
				</div>
				<div id="repwdCheck" class="checkItem"></div>
			</div>
			<div class="item">
				<div class="label">
					<label for="userName">이름</label>
				</div>
				<div class="box">
					<input type="text" name="userName" id="userName" class="userInfo">
				</div>
			</div>
			<div class="item">
				<div class="label">
					<label for="userYear">생년월일</label>
				</div>
				<div id="born">
					<span id="spanYear"> <input type="text" name="userYear"
						id="userYear" placeholder="  년(4자리)" maxlength="4">
					</span> <span id="spanMonth"> <select name="userMonth"
						id="userMonth">
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
					</span> <span id="spanDay"> <input type="text" name="userDay"
						id="userDay" placeholder="  일" maxlength="2">
					</span>
				</div>
				<div id="birthCheck" class="checkItem"></div>
			</div>
			<div class="item">
				<div class="label">
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
			<div class="item">
				<div class="label">
					<label for="userEmail">본인 확인 이메일<span>(선택)</span></label>
				</div>
				<div class="box">
					<input type="text" name="userEmail" id="userEmail"
						placeholder="  선택입력" class="userInfo">
				</div>
				<div id="mailCheck" class="checkItem"></div>
			</div>
			<div class="item">
				<div class="label">
					<label for="userPhone">휴대전화</label>
				</div>
				<div class="box">
					<select name="userContry" id="userContry" class="userInfo">
						<option selected="selected">대한민국 +82</option>
					</select>
				</div>
				<div style="margin: 8px 0;">
					<span> <input type="text" name="userPhone" id="userPhone"
						placeholder="  전화번호 입력" maxlength="16">
					</span> <span>
						<button id="NumBtn">인증번호 받기</button>
					</span>
				</div>
				<div class="box">
					<input type="text" name="certification" id="certification"
						placeholder="  인증번호 입력하세요" readOnly="readonly" class="userInfo">
				</div>
				<div id="phoneCheck" class="checkItem"></div>
			</div>
			<div class="item">
				<input type="submit" class="userInfo" id="joinBtn" value="가입하기">
			</div>
		</form>
	</section>
	<footer>
		<div>
			<span><a href="#">이용약관</a></span> <span class="divide">|</span> <span><a
				href="#"><strong>개인정보처리방침</strong></a></span> <span class="divide">|</span>
			<span><a href="#">책임의 한계와 법적고지</a></span> <span class="divide">|</span>
			<span><a href="#">회원정보 고객센터</a></span>
		</div>
		<div>
			<span><a target="_blank" href="https://www.naver.com"
				id="footer_logo">NAVER</a></span> <span style="font-size: 12px">Copyright
				© <strong>NAVER Corp.</strong> All Rights Reserved.
			</span>
		</div>
	</footer>
</body>
</html>