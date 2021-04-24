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

<script>
	$(function() {
		var price1 = "";
		var cnt ="";
		$('#plusbtn').on('click',function() {
			
			cnt = Number($('#prod_cnt').text()) +1;
			console.log(cnt); 
			$('#prod_cnt').empty();
			$('#prod_cnt').append(cnt);
			
			price1 = Number($('#price1').text()) + Number($('#price1').text()) / (cnt-1);
			$('#price1').empty();
			$('#price1').append(price1);
		});
		
		$('#minusbtn').on('click',function() {
			cnt = Number($('#prod_cnt').text()) -1;
			
			if(cnt >0) {
				$('#prod_cnt').empty();
				$('#prod_cnt').append(cnt);
				
				price1 = Number($('#price1').text()) - Number($('#price1').text()) / (cnt+1);
				$('#price1').empty();
				$('#price1').append(price1);
			}
			
		});
		
	});

</script>


<style>
.smalldiv1 {
	display: inline-block;
	width: 25px;
	height: 25px;
}

.smallimg1 {
	width: 100%;
	height: 100%;
}

.drop1 {
	display : inline-block;
	font-size: 12px;
}

.a1 {
	text-decoration : none;
	color : gray;
}
.a2 {
	text-decoration : none;
	color : black;
}

.con1 {
	height: 1000px;
}
.space {
	height : 100px;
}
.coldiv{
	height : 1000px;
}

.carousel-inner {
	width : 100%;
	height : 100%;
}

.carousel-inner img {
    width: 100%;
    height: 100%;
  }

.leftimg1 {
	height : 100%;
}

.leftimgdiv {
	width : 100%;
	height : 600px;
}
.rightdiv1 {
	height : 45px;
	background-color : #F0F0F0;
}
.rightdiv2 {
	height : 260px;
}
.rightdiv3 {
	height : 80px;
	background-color : #F0F0F0;
}
.bin1 {
	height : 400px;
}
.st1 {
	font-size : 25px;
}
.st2 {
	font-size : 21.5px;
}
.st3 {
	float : right;
	font-size : 27px;
	color: #6799FF;
}
.sp1 {
	font-size : 12px;
}
.sp2 {
	font-weight : bold;
	font-size : 12px;
	color : #86E57F;
}
.sp3 {
	font-weight : lighter;
	font-size : 12px;
}
.sp4 {
	font-weight : bold;
	font-size : 12px;
}
.sp5 {
	font-size : 17px;
}
.minidiv {

	width : 20px;
	height : 15px;
	margin-top : 8px;
	display : inline-block;
}
.minidiv2 {
	height : 55px;
}
.tdcolor {
	background-color : #F7F7F7;
}
#card {
	width : 100%;
	height : 100%;
}




</style>




</head>
<body>
	<%@ include file="/include/header.jsp"%>

	<div class="container">
		<div class="d-flex justify-content-between mb-3">
			<div class="p-2">
				<div class="smalldiv1">
					<img class="smallimg1"
						src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDEyMDJfMTYx%2FMDAxNjA2ODk2MTYxOTE0.-79SjEgDQprxsz2dXXhK6VnO22kSpt2nSyOxOgb2Zmog.Bu-xtPfQiV3gES2PlmTYsf0LFoXCXzZLAkJ6Uj2Bqr0g.JPEG.yh164950%2Fnaver_com_20201202_165758.jpg&type=sc960_832" />

				</div>
				<div class="smalldiv1">
					<img class="smallimg1"
						src="https://ww.namu.la/s/050ba5bd9b5ecdbd5c4ae8e9f4aa28526aba9d3ccbd3f6354086f5a5cc3d77a99da495a132dfb97c139426f83cc93e9861bc212945ba6c3ad8f5e51bf06662351aa1d0957537621831c3ce73070e4b85c50dc1df44a1811415f6b16484a6504c" />
				</div>
				<div class="smalldiv1">
					<img class="smallimg1"
						src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDEyMDJfMTYx%2FMDAxNjA2ODk2MTYxOTE0.-79SjEgDQprxsz2dXXhK6VnO22kSpt2nSyOxOgb2Zmog.Bu-xtPfQiV3gES2PlmTYsf0LFoXCXzZLAkJ6Uj2Bqr0g.JPEG.yh164950%2Fnaver_com_20201202_165758.jpg&type=sc960_832" />

				</div>
				<div class="smalldiv1">
					<img class="smallimg1"
						src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDEyMDJfMTYx%2FMDAxNjA2ODk2MTYxOTE0.-79SjEgDQprxsz2dXXhK6VnO22kSpt2nSyOxOgb2Zmog.Bu-xtPfQiV3gES2PlmTYsf0LFoXCXzZLAkJ6Uj2Bqr0g.JPEG.yh164950%2Fnaver_com_20201202_165758.jpg&type=sc960_832" />

				</div>

			</div>
			<div class="p-2">
				<a href="https://brand.naver.com/linefriends" class = "drop1 a1">홈</a> > 
				<div class="dropdown drop1">
					<a href = "#" class="dropdown-toggle a1"
						data-toggle="dropdown">캐릭터</a> >
					<div class="dropdown-menu">
						<a class="dropdown-item" href="#">캐릭터</a> 
						<a class="dropdown-item" href="#">NEW</a>
						<a class="dropdown-item-text" href="#">THEME</a>
						<a class="dropdown-item-text" href="#">BT21 BABY</a>
						<a class="dropdown-item-text" href="#">SALE</a>
						<a class="dropdown-item-text" href="#">TOY</a>
						<a class="dropdown-item-text" href="#">디자인문구</a>
						<a class="dropdown-item-text" href="#">디지털</a>
						<a class="dropdown-item-text" href="#">패션의류</a>
						<a class="dropdown-item-text" href="#">패션잡화</a>
						<a class="dropdown-item-text" href="#">리빙</a>
						<a class="dropdown-item-text" href="#">키즈</a>
						<a class="dropdown-item-text" href="#">전체상품</a>
					</div>
				</div>
				<div class="dropdown drop1">
					<a href = "#" class="dropdown-toggle a2"
						data-toggle="dropdown">브라운앤프렌즈(총 198개)</a> |
					<div class="dropdown-menu">
						<a class="dropdown-item" href="#">브라운앤프렌즈</a> 
						<a class="dropdown-item" href="#">BT21</a>
						<a class="dropdown-item-text" href="#">브롤스타즈</a>
					</div>
				</div>
				
				<div class="dropdown drop1">
					<a href = "#" class="dropdown-toggle a1"
						data-toggle="dropdown">다른상품보기</a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="#">라인프렌즈 코니 하트 시팅 인형</a> 
						<a class="dropdown-item" href="#">라인프렌즈  브라운 하트 시팅 인형</a> 
						<a class="dropdown-item" href="#">라인프렌즈 브라운앤코니 큐피드백참 인형 세트</a> 
						<a class="dropdown-item" href="#">라인프렌즈 코니 큐피드 스탠딩 인형</a> 
						<a class="dropdown-item" href="#">라인프렌즈 브라운 큐피드 스탠딩 인형</a> 
					</div>
				</div>
				
			</div>

			
		</div>
	</div>
	
	
	
	<div class = "container con1">
		<div class = "row">
			<div class = "col-sm-6 border border-right-0 coldiv">   <!-- 왼쪽 사진 -->
				<div class = "row">
					<div class = "col-sm-12 border border-top-0 border-right-0 border-left-0">
						<div class = "leftimgdiv1 d-flex justify-content-center">	
							<img class = "leftimg1" src = "https://shop-phinf.pstatic.net/20210415_168/1618480728230sFKpE_JPEG/19329562_59904539.jpg?type=m510"/>
						</div>
					</div>	
				</div>
				
				
				<div class = "row">
					<div class = "bin1">  <!-- 공백 -->
					</div>
				</div>
				<div class = "row">
					<div class = "ml-3">
					<span class="sp1">리뷰 수</span> <strong class ="st1">0</strong> <span class="sp1"> &nbsp; ◦ &nbsp; 사용자 총 평점</span>
					<strong class ="st1">0.0 / 5</strong>
					</div>
				</div>
				<div class = "row">
					<div class = "ml-3">
						<span class="sp1">아직 작성된 리뷰가 없습니다.</span>
					</div>
				</div>
					
			</div>  
				
				
				
				
				
			<div class = "col-sm-6 border coldiv">   <!-- 오른쪽 사진에 대한 정보 -->
				<div class = "row mt-4">
					<div class = "col-sm-1"></div> <!--  공백 --> 
					<div class = "col-sm-10">
						<strong class="st2">라인프렌즈 브라운앤코니 하트 시팅 백참 인형 세트</strong>
					</div>
					<div class = "col-sm-1"></div> <!--  공백 --> 
				</div>
				
				
				<div class = "row mt-2">
					<div class = "col-sm-1"></div> <!--  공백 --> 
					<div class = "col-sm-10">
						<strong  class="st3">25000원</strong>
					</div>
					<div class = "col-sm-1"></div> <!--  공백 --> 
				</div>
				
				
				<div class = "row mt-3 ">
					<div class = "col-sm-1"></div> <!--  공백 --> 
					<div class = "col-sm-10 border rightdiv1">
						<div class = "minidiv">
							<img id = "card" src ="https://res.cloudinary.com/valuechampion/image/upload/c_limit,dpr_1.0,f_auto,h_1600,q_auto,w_1600/v1/referral_logos/kr/banking/gorilla-hd-green"/>
						</div>
						<span class = "sp2">현대카드 간편결제 시 5% 청구할인</span>
						<span class = "sp1">(최대 2천원)</span>
					
					</div>
					<div class = "col-sm-1"></div> <!--  공백 --> 
				</div>
				
				
				<div class = "row mt-3">
					<div class = "col-sm-1"></div> <!--  공백 --> 
					<div class = "col-sm-10 rightdiv2 border border-dark">
						<div class = "row">
							<div class = "col-sm-12 minidiv2 border border-top-0 border-right-0 border-left-0">
								<div class = "mt-3">
									<strong>라인프렌즈 고객을 위한 혜택</strong>
								</div>
							</div>
						</div>
						
						<div>
						<div class = "row mt-3">
							<div class ="col-sm-10">
								<span class = "sp4">최대 적립 포인트</span>
							</div>		
							<div class ="col-sm-2">
								<strong>400</strong><span class = "sp4">원</span>
							</div>		
						</div>
							
						<div class = "row">
							<div class ="col-sm-10">
								<span class = "sp3">↳</span> &nbsp;&nbsp;
								<span class = "sp3">기본적립</span>
							</div>		
							<div class ="col-sm-2">
								<span class = "sp3">250원</span>
							</div>		
						</div>
						
						<div class = "rightdiv3 mt-3 border">
							<div class = "row mt-1">
								<div class ="col-sm-8">
									<span class = "sp4">&nbsp;&nbsp; TIP.포인트 더 받는 방법</span>
								</div>		
								<div class ="col-sm-4">
									<strong>+최대 1,500</strong><span class = "sp4">원</span>
								</div>	
							</div>
						</div>
					</div>
				</div>
					<div class = "col-sm-1"></div> <!--  공백 --> 
				</div>
				
				
				<div class="row mt-3">
					<div class="col-sm-1"></div>
					<div class="col-sm-10">
						<hr>
						
						<p class="sp1">단품</p>
						<div class = "row mt-3">
							<div class ="col-sm-9">
								<div class="btn-group">
									<button type="button" id="minusbtn" class="btn border">-</button>
									<button type="button" id="prod_cnt" class="btn btn-primary">1</button>
									<button type="button" id="plusbtn" class="btn border">+</button>
								</div>
							</div>
							<div class = "col-sm-3">
							<strong id="price1">25000</strong><span>원</span>
							</div>
						</div>
						<hr>
						 <button type="button" class="btn btn-success btn-lg btn-block sp5">구매하기</button>
					</div>
					<div class="col-sm-1"></div>
				</div>
				
					
					
					
					
					
					
					
					
					
				
			</div>
						
			
			
		</div>
	</div>
	<div class = "space"></div>
	<div class = "container mt-4">
		
	
		<div class = "row">
				<strong class = "mb-4">상품정보</strong>
	 <table class="table table-bordered">
	 	<colgroup>
	 	<col style = "width:10%">
	 	<col style = "width:20%">
	 	<col style = "width:10%">
	 	<col style = "width:20%">
	 	</colgroup>
	      <tr class ="sp1">
	        <td class="tdcolor">상품번호</td>
	        <th>5527228495</th>
	        <td class="tdcolor">상품상태</td>
	        <td>신상품</td>
	      </tr>
	      <tr class ="sp1">
	        <td class="tdcolor">제조사</td>
	        <td>라인프렌즈</td>
	        <td class="tdcolor">브랜드</td>
	        <td>라인프렌즈</td>
	      </tr>
	      <tr class ="sp1">
	        <td class="tdcolor">모델명</td>
	        <td>8809592543962</td>
	        <td class="tdcolor">원산지</td>
	        <td>중국</td>
	      </tr>
	      <tr class ="sp1">
	        <td class="tdcolor">제조일자</td>
	        <td colspan="3">2021.04.01.</td>
	      </tr>
  </table>
		</div>
	
	</div>
	


	<%@ include file="/include/footer.jsp"%>
</body>
</html>