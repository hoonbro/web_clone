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
<style>
.img1 {
	width: 100%;
	height: 120%;
	border-radius: 30px;
}
.img2 {
	width : 100%;
	height : 80%;
	border-radius : 10px;
}

.p1 {
	font-size : small;
}
.p2 {
	font-size : xx-small;
	
}

p {
	overflow : hidden;
	text-overflow : ellipsis;
	position : absolute;
	height : 80px;
}

.div1 {
	height : 90px;
}

.st1 {
	font-size : 15px;
}




</style>

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
	
	<div style="height:50px"></div>
		
		
	
	
	<div class="container">
		<div class="d-flex justify-content-center">
			<h3 class="font-weight-bold mt-5 mb-4">주목해야 할 소식</h3>
		</div>
		<div class="row">
			<div class="col-sm-12">
				<div class="row mb-5">
					<!--body content -->
					<div class="col-sm-4">
						<a href ="https://brand.naver.com/linefriends/shoppingstory/detail?id=2001754803"><img class="img1 mb-5"
							src="https://shop-phinf.pstatic.net/20210119_299/1611051957745V23Qw_JPEG/story_car_accessories1.jpg?type=w860" />
						</a> 
					</div>
					<div class="col-sm-4">
						<a href = "https://brand.naver.com/linefriends/shoppingstory/detail?id=2001929490"><img class="img1"
							src="https://shop-phinf.pstatic.net/20210331_194/1617181826009ai0Xb_JPEG/STORY_BANNER.jpg?type=w860" />
						</a>
					</div>
					<div class="col-sm-4">
						<a href = "https://brand.naver.com/linefriends/shoppingstory/detail?id=2001926541"><img class = "img1"
							src="https://shop-phinf.pstatic.net/20210406_99/1617699832751hMWig_JPEG/STORY_BANNER_1.jpg?type=w860" />
						</a>
					</div>

				</div>


			</div>
		</div>
	</div>
	<div class="container mb-3">
		<div class="row mt-3">
			<div class="col-sm-4"><h5>잘나가는 차는 내부도 귀엽지 </h5></div>
			<div class="col-sm-4"><h5>[직원피셜]직원도 사서 쓰는 4월의 히든템</h5></div>
			<div class="col-sm-4"><h5>월간 내돈내산 3월 베스트 리뷰 선정</h5></div>
		</div>
	</div>

	<div class="container mb-3 div1">
		<div class="row mt-3" >
				<div class="col-sm-4"><p class = "p1">BT21 무선 충전기 컬렉션 우리 사이, 선이 필요 없지! 운전 중인 차 안에서, 열공 중인 책상 위에 슥- 걸쳐만 주세요. 무선 충전과 거치대 역할까지 완벽 소화하는 BT21 친구들이 사랑스러움까지 100% 꽉꽉 채워줄게요! FAST CAR CHARGER 고속 충전이 최대 15W까지 지원되고 스마트폰에 꼬옥 밀착해 고정해줍니다. 무선이라 휴대폰 탈부착이 쉽고 간편해요. 가로, 세로 방향 전환도 자유롭게~ 운전 중 네비게이션을 확인하는 용도로 활용이 가능해요. 전원을 연결하면 충전기 바디에 담긴 친구들의 얼굴이 반짝반짝 또렷한 LED로 빛이 납니다. 차량 내부 구조에 따라 사용해보세요! 젤타입으로 부착하는 거치대가 포함되어 차량 송풍구에 끼워 사용하거나 대시보드 위에 고정할 수 있어요. FAST CHARGER STAND 중요한 순간에는 멈출 수 없으니까~ 영화를 보거나 게임할 때 일상의 가벼운 순간에도, 오랜 시간 화상 회의가 필요한 업무 시간에도 활용도 만능! BT21 친구들의 얼굴이 빼꼼~등장해 책상이나 화장대에 러블리 포인트! 가로와 세로 거치 모두 가능하고 10W 고속 무선 충전까지 탑재했어요. 전원을 연결하면 뒷편의 LED 표시등이 반짝반짝 빛을 냅니다. 무선 충전기 컬렉션으로 일상생활에 찾아오는 간편함을 경험해보세요. *고속 충전은 소지하고 계신 휴대폰의 모델에 따라 차이가 있을 수 있습니다. -오프라인 스토어- 라인프렌즈 한국 오프라인 스토어 전체 매장 정보 바로가기👇 </p></div>
				<div class="col-sm-4"><p class = "p1">[직원피셜] 직원도 사서 쓰는 4월의 히든템 많은 분들이 애타게 기다렸던 엄선된 추천 아이템! 직원피셜에서는 온라인 스토어에서 판매하는 놓칠 수 없는 제품들을 소개해드려요. 4월은 아기자기한 매너템 골프 액세서리로 준비되었답니다. 단 7일 동안만, 최대 30% 할인되는 득템의 기회를 꼭 놓치지 마세요! 할인기간 2021년 4월 8일 오전 10시부터 2021년 4월 14일 저녁 5시 59분까지 아이언 커버 세트 베이비들의 섬세한 표정이 자수로 정교하게 새겨져 디테일이 살아있어요. 5, 6, 7, 8, 9, A, S, P, Spare 커버가 세트로 구성되어 활용하기 좋아요. 골프공 세트 고탄력 소재로 볼 표면 딤플 면적이 84%에 달해 늘어난 체공 시간으로 향상된 비거리를 도와줍니다. 12개로 구성된 제품과 볼마커와 골프공 세트 두 가지 버전으로 만나보세요. 골프 볼마커 볼마커란 퍼팅 후 공의 위치를 표시해주는 뱃지입니다. 푸른 필드 위 선명한 색감으로 한 눈에 알아보기 좋아요. 강력한 네오디움 자석이 부착되어 모자나 캐디백, 벨트에 끼워 사용할 수 있어요. 드라이버 커버 캐디백 위 존재감 가득한 베이비들! 폭신폭신 부드러운 소재로 묵직한 드라이버를 포근하게 감싸줍니다. 일반적인 사이즈의 드라이버, 페어웨이 우드, 하이브리드 클럽까지 사용할 수 있어요. 필드 위 옹기종기 모여 뜨거운 응원을 보내는 베이비들과 라운딩을 함께 준비해보세요. 4월 8일 오전 10시부터 적용되는 할인은 오직 라인프렌즈 온라인 스토어에서만 진행됩니다.</p></div>
				<div class="col-sm-4"><p class = "p1">3월의 베스트 리뷰 3월 한달간 4,759개의 소중한 리뷰를 적어주신 모든 분께 감사의 마음을 드려요💖 한 글자 한 글자 직접 적어주신 꿀팁 방출부터 재미있는 사연들 중 베스트 오브 베스트, 선정자 두분을 소개합니다. 베스트 리뷰로 선정되신 분께는 네이버 쇼핑 5,000 포인트와 라인프렌즈 온라인 스토어에서 준비한 특별한 선물을 전해드립니다! 멋진 사진을 남겨주신 포토 리뷰어, 3월에만 진행하는 이벤트! 텍스트 리뷰어 선정도 진행되었으니 끝까지 주목해 주세요~ BT21 CHIMMY BABY 블루투스 마이크 리뷰어 seve****님! 꼼꼼하고 상세한 사용기를 적어주신 seve****님과 진행한 미니 인터뷰 내용도 소개해드릴게요! Q) BT21 블루투스 마이크 제품은 어떻게 구매하게 되셨나요? A) 외출이 적어지고 노래방에 가기 어려워서 구매했어요! Q) BT21 블루투스 마이크의 가장 중요한 매력포인트가 있다면? A) 블루투스 스피커 기능이 함께 있어서 노래를 함께 재생할 수 있는 점이요! 무엇보다 치미가 귀여워요~ Q) BT21 블루투스 마이크의 장점, 다른 분들께도 소개해 주세요! A) 제품의 퀄리티가 만족스러웠고 스피커 음질도 좋아 추천합니다! WDZY TUK 스탠딩 인형 리뷰어 ria8****님! 사전판매로 첫 출시한 윗지 제품을 득템하셨네요! ria8****님과 진행한 미니 인터뷰 내용도 소개해 드릴게요! Q) WDZY TUK 스탠딩 인형은 어떻게 구매하게 되셨나요? A) 라인프렌즈와 잇지와의 콜라보레이션 제품이고 디자인이 귀여워 구매하게 되었습니다. Q) WDZY TUK 스탠딩 인형의 가장 중요한 매력포인트가 있다면? A) 후드티의 모자를 벗기고 씌울 수 있는 점과 디테일이 잘 살아 있고 촉감도 좋아요! Q) WDZY TUK 스탠딩 인형을 다른 분들께도 소개해 주세요! A) 손에 꼭 들어오는 사이즈와 툭의 귀여운 디자인이 포인트 입니다! 앞으로도 귀여운 상품 많이 출시해 주세요~ 포토 리뷰 멋진 사진 3장과 리뷰 글 150자 이상 적어주신 6분 선정을 축하드립니다🎉 포토 리뷰로 선정되신 분들께는 네이버 쇼핑 3,000 포인트를 선물해 드려요! sunn****님 goa4****님 dhwl****님 jour****님 hyul****님 kjwo****님 텍스트 리뷰 상세한 리뷰 글 150자 이상 적어주신 텍스트 리뷰어 2분 선정을 축하드립니다🎉 포토 리뷰로 선정되신 분들께는 네이버 쇼핑 1,000 포인트를 선물해 드려요! qmff****님 naho****님 4월에도 월간 내돈내산은 쭈욱-계속됩니다. 베스트 리뷰의 주인공이 되어보세요! 베스트 상품 구매하고 리뷰 쓰러 가기&gt; *베스트 리뷰로 선정되신 분께는 개별 안내로 선물이 발송됩니다. *선정되신 분들의 네이버쇼핑 포인트는 네이버 아이디를 통해 자동으로 일괄 지급됩니다.</p></div>
		</div>
	</div>
	
	<div class="container div1 mb-5">
		<div class="row" >
			<div class="col-sm-4">
				<div class = "row">
					<div class = "col-sm-3">
						<img class = "img2" src="https://shop-phinf.pstatic.net/20210121_82/1611188479797jjDX5_JPEG/18709983_56112484.jpg?type=m510"/>
					</div>
				
					<div class = "col-sm-9">
						<p class = "p2">라인프렌즈 BT21 KOYA BABY 차량용 고속 무선 충전 거치대</p> <br>
						<strong class ="st1">45,000원</strong>
						<p class = "p2">평점 4.9 . 리뷰 16</p> <br>
					</div>	
				</div>
				<hr>		
			</div>			
				
			<div class="col-sm-4">
				<div class = "row">
					<div class = "col-sm-3">
						<img class = "img2" src="https://shop-phinf.pstatic.net/20210316_153/1615872857501BRnMA_JPEG/19114337_58441546.jpg?type=m510"/>
					</div>
				
					<div class = "col-sm-9">
						<p class = "p2">라인프렌즈 BT21 BABY 골프공 세트 (12개입)</p> <br>
						<strong class ="st1">49,500원</strong>
						<p class = "p2">평점 5.0 . 리뷰 4</p> <br>
					</div>	
					
				</div>
				<hr>	
			</div>
			<div class="col-sm-4">
				<div class = "row">
					<div class = "col-sm-3">
						<img class = "img2" src="https://shop-phinf.pstatic.net/20200727_13/1595825937928KGhlh_JPEG/17526640_48549220.jpg?type=m510"/>
					</div>
				
					<div class = "col-sm-9">
						<p class = "p2"> 라인프렌즈 브라운 인펀트 오가닉 애착 인형</p> <br>
						<strong class ="st1">29,000원</strong>
						<p class = "p2">평점 4.8 . 리뷰 197</p> <br>
					</div>	
				</div>	
				<hr>
			</div>
		</div>
	</div>

	<div class="container div1 mb-5">
		<div class="row" >
			<div class="col-sm-4">
				<div class = "row">
					<div class = "col-sm-3">
						<img class = "img2" src="https://shop-phinf.pstatic.net/20210121_13/1611188477949YrCft_JPEG/18709682_56112483.jpg?type=m510"/>
					</div>
				
					<div class = "col-sm-9">
						<p class = "p2">라인프렌즈 BT21 RJ BABY 차량용 고속 무선 충전 거치대</p> <br>
						<strong class ="st1">45,000원</strong>
						<p class = "p2">평점 4.8 . 리뷰 78</p> <br>
					</div>	
				</div>
				<hr>		
			</div>			
				
			<div class="col-sm-4">
				<div class = "row">
					<div class = "col-sm-3">
						<img class = "img2" src="https://shop-phinf.pstatic.net/20210316_64/1615872852597HXir1_JPEG/19114328_58441459.jpg?type=m510"/>
					</div>
				
					<div class = "col-sm-9">
						<p class = "p2">라인프렌즈 BT21 BABY 골프 아이언커버 세트</p> <br>
						<strong class ="st1">99,000원</strong>
						<p class = "p2">평점 5.0 . 리뷰 9</p> <br>
					</div>	
					
				</div>
				<hr>	
			</div>
			<div class="col-sm-4">
				<div class = "row">
					<div class = "col-sm-3">
						<img class = "img2" src="https://shop-phinf.pstatic.net/20210316_64/1615872852597HXir1_JPEG/19114328_58441459.jpg?type=m510"/>
					</div>
				
					<div class = "col-sm-9">
						<p class = "p2"> 라인프렌즈 BT21 BABY 골프 아이언커버 세트</p> <br>
						<strong class ="st1">99,000원</strong>
						<p class = "p2">평점 5.0 . 리뷰 9</p> <br>
					</div>	
				</div>	
				<hr>
			</div>
		</div>
	</div>

		<div style="height:50px"></div>

	<div class="row" style="margin:0px">
		<div class="col-2"></div>
		<div class="col-8"><%@ include file="/include/footer.jsp"%></div>
		<div class="col-2"></div>
	</div>
	<div style="height:50px"></div>
</body>
</html>