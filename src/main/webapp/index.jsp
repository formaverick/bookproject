<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>교보문고</title>

<!-- 폰트와 아이콘 로드 -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;400;500;700&display=swap"
	rel="stylesheet" />
<script src="https://kit.fontawesome.com/4d0d3ba6ba.js"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


<link href="css/reset.css" rel="stylesheet">
<link href="css/fixed.css" rel="stylesheet">
<link href="css/head.css" rel="stylesheet">
<link href="css/body.css" rel="stylesheet">
<link href="css/todayPick.css" rel="stylesheet">
<link href="css/new_recommend_popular.css" rel="stylesheet">
<link href="css/KBbest.css" rel="stylesheet">
<link href="css/picks.css" rel="stylesheet">
<link href="css/madeBook.css" rel="stylesheet">
<link href="css/casting.css" rel="stylesheet">
<link href="css/event.css" rel="stylesheet">
<link href="css/side.css" rel="stylesheet">
<link href="css/footer.css" rel="stylesheet">

<script src="js/fixed.js"></script>
<script src="js/search.js"></script>
<script src="js/category.js"></script>
<script src="js/mainSlider.js"></script>
<script src="js/subSlider.js"></script>
<script src="js/iconmenu.js"></script>
<script src="js/BookFetch.js"></script>
<script src="js/pickSlide.js"></script>
<script src="js/popularSlider.js"></script>
<script src="js/picks.js"></script>
<script src="js/madeBookSlider.js"></script>
<script src="js/KBbest.js"></script>
<script src="js/castingTop.js"></script>
<script src="js/casting.js"></script>
<script src="js/eventSlider.js"></script>
<script src="js/imageSlider.js"></script>
<script src="js/side.js"></script>

</head>

<body>
	<div id="fixedTop">
		<!-- index, sub 공통 상단 고정 바 -->
		<div>
			<img src="img/icon/o-button.png" id="menu_icon2"> <a
				href="index.jsp"><img src="img/icon/KBlogo.svg" id="logo2"></a>
			<form class="search">
				<div class="custom-select">
					<div class="selected">
						통합검색<i class="fa-solid fa-chevron-down arrow"></i>
					</div>
					<ul class="select-options">
						<li>통합검색</li>
						<li>교보문고</li>
						<li>eBook</li>
						<li>sam</li>
						<li>핫트랙스</li>
					</ul>
				</div>
				<input type="text" placeholder="미쉐린 3스타 강민구의 비밀 레시피 『장』" /> <i
					class="fa-sharp fa-solid fa-magnifying-glass"></i>
			</form>
			<div class="myPage">
				<a href="login.do"><img src="img/icon/login.png"></a> <i
					class="fa-solid fa-cart-shopping"></i>
			</div>
		</div>
	</div>

	<header>
		<!-- 맨 위 이미지 배너 -->
		<div id="top_banner">
			<img src="img/header/head_banner.jpg" alt="">
		</div>

		<!-- 상단 브랜드 메뉴 -->
		<div class="topMenuWrap">
			<div class="topMenu">
				<img src="img/header/menubar.png">

				<ul class="imgBar">
					<li><img src="img/header/menubar1.png"><span>교보문고</span></li>
					<li><img src="img/header/menubar2.png"><span>eBook</span></li>
					<li><img src="img/header/menubar4.png"><span>sam</span></li>
					<li><img src="img/header/menubar3.png"><span>핫트랙스</span></li>
					<li><img src="img/header/menubar5.png"><span>스토리</span></li>
					<li id="moreBrand"><span>브랜드 더보기</span></li>
				</ul>

				<ul class="login">
					<li><a href="join.do">회원가입</a></li>
					<li>|</li>
					<li><c:choose>
							<c:when test="${empty loginUser}">
								<li><a href="login.do">로그인</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="logout.do">로그아웃</a></li>
							</c:otherwise>
						</c:choose></li>
					<li>|</li>
					<li><a href="#">회원혜택</a></li>
					<li>|</li>
					<li><a href="#">주문배송</a></li>
					<li>|</li>
					<li><a href="productList.do">상품목록</a></li>
					<li>|</li>
					<li><a href="BoardServlet?command=board_list">게시판</a></li>
				</ul>
			</div>
		</div>
		<!-- 상단 브랜드 메뉴 끝 -->

		<!-- 헤더 바디 -->
		<div id="topwrap">
			<div class="logoBox">
				<a href="sub.jsp"><img src="img/icon/KBlogo.svg" id="logo2" /></a>
			</div>

			<form class="search">
				<div class="custom-select">
					<div class="selected">
						통합검색<i class="fa-solid fa-chevron-down arrow"></i>
					</div>
					<ul class="select-options">
						<li>통합검색</li>
						<li>교보문고</li>
						<li>eBook</li>
						<li>sam</li>
						<li>핫트랙스</li>
					</ul>
				</div>
				<input type="text" placeholder="미쉐린 3스타 강민구의 비밀 레시피 『장』" /> <i
					class="fa-sharp fa-solid fa-magnifying-glass"></i>
			</form>

			<div class="myPage">
				<c:choose>
					<c:when test="${empty loginUser}">
						<a href="login.do"><img src="img/icon/login.png" alt="로그인 아이콘" /></a>
					</c:when>
					<c:otherwise>
						<a href="memberMain.jsp"><img src="img/icon/login.png"
							alt="마이페이지 아이콘" /></a>
					</c:otherwise>
				</c:choose>
				<i class="fa-solid fa-cart-shopping"></i>
			</div>

			<div class="menuBar">
				<ul class="menuBar_left">
					<!-- 버튼 클릭 카테고리 -->
					<li><img src="img/icon/o-button.png" id="menu_icon">
						<div class="navBox nav_loc">
							<div class="navBoxTitle">
								<div>카테고리 전체보기</div>
								<div class="backgroundGrey ">서비스 전체보기</div>
							</div>
							<div class="navBoxMain">
								<ul>
									<!-- 카테고리 전체보기 -->
									<li class="categoryAll">
										<ul class="categoryTop">
											<li>교보문고</li>
											<li>eBook</li>
											<li>sam</li>
											<li>핫트랙스</li>
										</ul>
										<ul class="categoryMain">

											<li>
												<div class="selectBox">
													<ul>
														<li>국내도서</li>
														<li>서양도서</li>
														<li>일본도서</li>
														<li>교보Only</li>
													</ul>
												</div>

												<div class="mainBox">
													<div class="mainAll">
														<ul>
															<li>
																<div>
																	<div class="koreaAll fontOfTop">
																		국내도서 전체<img src="img/icon/arrow.png">
																	</div>
																	<ul>
																		<li>소설</li>
																		<li>시/에세이</li>
																		<li>인문</li>
																		<li>가정/육아</li>
																		<li>요리</li>
																		<li>건강</li>
																		<li>취미/실용/스포츠</li>
																		<li>경제/경영</li>
																		<li>자기계발</li>
																		<li>정치/사회</li>
																	</ul>
																</div>
																<div>
																	<ul>
																		<li>종교</li>
																		<li>예술/대중문화</li>
																		<li>중/고등참고서</li>
																		<li>기술/공학</li>
																		<li>외국어</li>
																		<li>과학</li>
																		<li>취업/수험서</li>
																		<li>여행</li>
																		<li>컴퓨터/IT</li>
																		<li>잡지</li>
																	</ul>
																</div>
																<div>
																	<ul>
																		<li>초등참고서</li>
																		<li>유아(0~7세)</li>
																		<li>어린이(초등)</li>
																		<li>만화</li>
																		<li>대학교제</li>
																		<li>한국소개도서</li>
																		<li>교보오리지널</li>
																	</ul>
																</div>
															</li>

															<li>
																<div>
																	<div class="koreaAll fontOfTop">
																		서양도서 전체 <img src="img/icon/arrow.png">
																	</div>
																	<ul>
																		<li>문학</li>
																		<li>취미/실용/여행</li>
																		<li>예술/건축</li>
																		<li>인문/사회</li>
																		<li>경제/경영</li>
																		<li>과학/기술</li>
																		<li>어린이ELT</li>
																		<li>유아/아동/청소년</li>
																	</ul>
																</div>
																<div>
																	<ul>
																		<li>한국관련도서</li>
																		<li>문구/멀티/비도서</li>
																		<li>ELT/수험서</li>
																		<li>프랑스도서</li>
																		<li>독일도서</li>
																		<li>스페인도서</li>
																		<li>기타도서</li>
																		<li>교재</li>
																	</ul>
																</div>
																<div></div>
															</li>

															<li>
																<div>
																	<div class="koreaAll fontOfTop">
																		일본도서 전체<img src="img/icon/arrow.png">
																	</div>
																	<ul>
																		<li>잡지</li>
																		<li>엔터테인먼트</li>
																		<li>만화/애니</li>
																		<li>문학</li>
																		<li>라이트노벨</li>
																		<li>문고</li>
																		<li>신서</li>
																		<li>아동</li>
																</div>
																<div>
																	<ul>
																		<li>실용서/예술</li>
																		<li>인문/사회</li>
																		<li>자연/기술과학</li>
																		<li>어학/학습</li>
																		<li>문구/멀티/기타</li>
																		<li>중국도서</li>
																	</ul>
																</div>
																<div></div>
															</li>

															<li>
																<div>
																	<div class="koreaAll fontOfTop">
																		교보Only 전체<img src="img/icon/arrow.png">
																	</div>
																	<ul>
																		<li>강연</li>
																		<li>여행</li>
																		<li>인문</li>
																		<li>교보문고 굿즈</li>
																		<li>책향</li>
																		<li>교보문고 기프트카드</li>
																		<li></li>
																		<li></li>
																		<li></li>
																		<li></li>
																		<li></li>
																	</ul>
																</div>
																<div></div>
																<div></div>
															</li>
														</ul>
													</div>

													<div class="mainSpecial">
														<ul>
															<li>
																<div class="fontOfTop">스페셜 코너</div>
																<ul>
																	<li>오늘의 선택</li>
																	<li>추천</li>
																	<li>선물하기</li>
																	<li>분철서비스</li>
																	<li>특가</li>
																	<li>정가인하</li>
																	<li>배송라운지</li>
																</ul>
															</li>

															<li>
																<div class="fontOfTop">스페셜 코너</div>
																<ul>
																	<li>오늘의 선택</li>
																	<li>수준별 원서읽기</li>
																</ul>
															</li>

															<li>
																<div class="fontOfTop">스페셜 코너</div>
																<ul>
																	<li>오늘의 선택</li>
																</ul>
															</li>

															<li>
																<div class="fontOfTop">스페셜 코너</div>
																<ul>
																	<li>문화공간</li>
																	<li>교보문고 기프트카드</li>
																</ul>
															</li>
														</ul>
													</div>
												</div>

												<div class="subBox">
													<img src="img/category/adbox1.png" alt="img">
												</div>

												<div class="iconMenuBox">
													<ul>
														<li></li>
														<li></li>
														<li></li>
														<li></li>
														<li></li>
														<li></li>
														<li></li>
														<li></li>
														<li></li>
													</ul>
												</div>
											</li>

											<li>
												<div class="selectBox">
													<ul id="EbookSelectBox">
														<li>eBook</li>
														<li>오디오(북)</li>
														<li>동영상</li>
													</ul>
												</div>
												<div class="mainBoxEbook">
													<div class="mainAll2">
														<ul>
															<li>
																<ul>
																	<li>일반</li>
																	<li>경제경영</li>
																	<li>자기계발</li>
																	<li>소설</li>
																	<li>시/에세이</li>
																	<li>인문</li>
																	<li>정치/사회</li>
																	<li>국어/외국어</li>
																	<li>IT/프로그래밍</li>
																	<li>과제/수험서</li>
																	<li>과학/공학</li>
																</ul>
																<ul>
																	<li></li>
																	<li>종교</li>
																	<li>매거진</li>
																	<li>청소년</li>
																	<li>아동</li>
																	<li>유아</li>
																	<li>가정/생활/요리</li>
																	<li>건강/의학</li>
																	<li>예술/대중문화</li>
																	<li>여행/취미</li>
																	<li>외국도서</li>
																</ul>
																<ul>
																	<li>장르</li>
																	<li>로맨스</li>
																	<li>로맨스판타지</li>
																	<li>BL</li>
																	<li>판타지</li>
																	<li>무협</li>
																	<li>라이트노벨</li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																</ul>
																<ul>
																	<li>웹소설</li>
																	<li>로맨스</li>
																	<li>로맨스판타지</li>
																	<li>BL</li>
																	<li>판타지</li>
																	<li>무협</li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																</ul>
																<ul>
																	<li>만화</li>
																	<li>드라마</li>
																	<li>순정만화</li>
																	<li>할리퀸</li>
																	<li>BL만화</li>
																	<li>학원물</li>
																	<li>스포츠</li>
																	<li>액션/무협</li>
																	<li>SF/판타지</li>
																	<li>명랑/코믹</li>
																	<li>탐정/추리</li>
																</ul>
															</li>
															<li>
																<ul>
																	<li>일반</li>
																	<li>인문</li>
																	<li>종교</li>
																	<li>국어/외국어</li>
																	<li>정치/사회</li>
																	<li>역사/문화</li>
																	<li>과학/공학</li>
																	<li>IT/프로그래밍</li>
																	<li>건강/의학</li>
																	<li>가정/생활/요리</li>
																	<li>여행/취미</li>
																	<li>예술/대중문화</li>
																	<li>유아</li>
																</ul>
																<ul>
																	<li></li>
																	<li>교재/수험서</li>
																	<li>외국도서</li>
																	<li>매거진</li>
																	<li>멀티미디어</li>
																	<li>로맨스</li>
																	<li>로맨스판타지</li>
																	<li>BL</li>
																	<li>판타지</li>
																	<li>무협</li>
																	<li>추리</li>
																	<li>미스터리</li>
																	<li>스릴러</li>
																</ul>
																<ul>
																	<li>가기계발</li>
																	<li>설공/처세</li>
																	<li>화술/협상</li>
																	<li>비즈니스소양</li>
																	<li>세일즈/매너</li>
																	<li>인간관계</li>
																	<li>자기능력계빨</li>
																	<li>기타</li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																</ul>
																<ul>
																	<li>시/에세이</li>
																	<li>시</li>
																	<li>에세이</li>
																	<li>테마시/에세이</li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																</ul>
																<ul>
																	<li>소설</li>
																	<li>한국소설</li>
																	<li>영미소설</li>
																	<li>일본소설</li>
																	<li>중국소설</li>
																	<li>러시아소설</li>
																	<li>프랑스소설</li>
																	<li>독일소설</li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																</ul>
															</li>
															<li>
																<ul>
																	<li>학습/자기계발</li>
																	<li>직무교육</li>
																	<li>어학</li>
																	<li>자격증</li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																</ul>
																<ul>
																	<li></li>
																	<li>초중고</li>
																	<li>기타</li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																</ul>
																<ul>
																	<li>재테크</li>
																	<li>주식</li>
																	<li>부동산</li>
																	<li>기타</li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																</ul>
																<ul>
																	<li>아동</li>
																	<li>아동전집</li>
																	<li>어린이학습/자기계발</li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																</ul>
																<ul></ul>
															</li>
														</ul>
													</div>

													<div class="mainSpecial2">
														<ul>
															<li>
																<ul>
																	<li>스페셜코너</li>
																	<li>선물하기</li>
																	<li>교보e캐시</li>
																	<li>eBook 집중탐구</li>
																	<li>혜택 라운지</li>
																	<li>이벤트 캘린더</li>
																	<li>신간 캘린더</li>
																	<li>교보 오리지널</li>
																	<li>신간</li>
																	<li>이번주 주목 작품</li>
																	<li>Picks</li>
																</ul>
															</li>
															<li>
																<ul>
																	<li>스페셜코너</li>
																	<li>선물하기</li>
																	<li>교보e캐시</li>
																	<li>eBook 집중탐구</li>
																	<li>혜택 라운지</li>
																	<li>이벤트 캘린더</li>
																	<li>신간 캘린더</li>
																	<li>교보 오리지널</li>
																	<li>신간</li>
																	<li>RTS</li>
																	<li></li>
																	<li></li>
																	<li></li>
																</ul>
															</li>
															<li>
																<ul>
																	<li>스페셜코너</li>
																	<li>선물하기</li>
																	<li>교보e캐시</li>
																	<li>eBook 집중탐구</li>
																	<li>혜택 라운지</li>
																	<li>이벤트 캘린더</li>
																	<li>신간 캘린더</li>
																	<li>교보 오리지널</li>
																	<li>신간</li>
																	<li>RTS</li>
																</ul>
															</li>
														</ul>
													</div>
												</div>
												<div class="iconMenuBox2">
													<ul>
														<li></li>
														<li></li>
														<li></li>
														<li></li>
														<li></li>
													</ul>
												</div>
												<div class="subBox2">
													<img src="img/category/adbox2.jpg" alt="img">
												</div>
											</li>

											<li>
												<div class="selectBox">
													<ul id="samSelectBox">
														<li>eBook</li>
														<li>오디오(북)</li>
														<li>동영상</li>
														<li>학술논문</li>
													</ul>
												</div>
												<div class="mainBoxEbook">
													<div class="mainAll2">
														<ul id="samMainBox">
															<li>
																<ul>
																	<li>일반</li>
																	<li>경제경영</li>
																	<li>자기계발</li>
																	<li>소설</li>
																	<li>시/에세이</li>
																	<li>인문</li>
																	<li>정치/사회</li>
																	<li>국어/외국어</li>
																	<li>IT/프로그래밍</li>
																	<li>과제/수험서</li>
																	<li>과학/공학</li>
																</ul>
																<ul>
																	<li></li>
																	<li>종교</li>
																	<li>매거진</li>
																	<li>청소년</li>
																	<li>아동</li>
																	<li>유아</li>
																	<li>가정/생활/요리</li>
																	<li>건강/의학</li>
																	<li>예술/대중문화</li>
																	<li>여행/취미</li>
																	<li>외국도서</li>
																</ul>
																<ul>
																	<li>판타지</li>
																	<li>정통판타지</li>
																	<li>현대판타지</li>
																	<li>퓨전판타지</li>
																	<li>게임/레이드</li>
																	<li>전쟁/대체역사</li>
																	<li>스포츠</li>
																	<li>장통무협</li>
																	<li>신무협</li>
																	<li></li>
																	<li></li>
																</ul>
																<ul>
																	<li>웹소설</li>
																	<li>현대로맨스</li>
																	<li>TL/라이트노벨</li>
																	<li>할리퀸</li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																</ul>
																<ul></ul>
															</li>
															<li>
																<ul>
																	<li>일반</li>
																	<li>인문</li>
																	<li>종교</li>
																	<li>국어/외국어</li>
																	<li>정치/사회</li>
																	<li>역사/문화</li>
																	<li>과학/공학</li>
																	<li>IT/프로그래밍</li>
																	<li>건강/의학</li>
																	<li>가정/생활/요리</li>
																	<li>여행/취미</li>
																	<li>예술/대중문화</li>
																	<li>유아</li>
																</ul>
																<ul>
																	<li></li>
																	<li>교재/수험서</li>
																	<li>외국도서</li>
																	<li>매거진</li>
																	<li>멀티미디어</li>
																	<li>로맨스</li>
																	<li>로맨스판타지</li>
																	<li>BL</li>
																	<li>판타지</li>
																	<li>무협</li>
																	<li>추리</li>
																	<li>미스터리</li>
																	<li>스릴러</li>
																</ul>
																<ul>
																	<li>가기계발</li>
																	<li>설공/처세</li>
																	<li>화술/협상</li>
																	<li>비즈니스소양</li>
																	<li>세일즈/매너</li>
																	<li>인간관계</li>
																	<li>자기능력계빨</li>
																	<li>기타</li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																</ul>
																<ul>
																	<li>시/에세이</li>
																	<li>시</li>
																	<li>에세이</li>
																	<li>테마시/에세이</li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																</ul>
																<ul>
																	<li>소설</li>
																	<li>한국소설</li>
																	<li>영미소설</li>
																	<li>일본소설</li>
																	<li>중국소설</li>
																	<li>러시아소설</li>
																	<li>프랑스소설</li>
																	<li>독일소설</li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																</ul>
															</li>
															<li>
																<ul>
																	<li>학습/자기계발</li>
																	<li>직무교육</li>
																	<li>어학</li>
																	<li>자격증</li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																</ul>
																<ul>
																	<li></li>
																	<li>초중고</li>
																	<li>기타</li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																</ul>
																<ul>
																	<li>재테크</li>
																	<li>주식</li>
																	<li>부동산</li>
																	<li>기타</li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																</ul>
																<ul>
																	<li>아동</li>
																	<li>아동전집</li>
																	<li>어린이학습/자기계발</li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																</ul>
																<ul></ul>
															</li>
															<li>
																<ul>
																	<li>사회과학</li>
																	<li>사회과학일반</li>
																	<li>정치외교학</li>
																	<li>사회학</li>
																	<li>사회복지학</li>
																	<li>지역학</li>
																	<li>교육학</li>
																	<li>심리학</li>
																	<li>행정학</li>
																	<li></li>
																	<li></li>
																</ul>
																<ul>
																	<li></li>
																	<li>정책학</li>
																	<li>지리학</li>
																	<li>지역개발</li>
																	<li>관광학</li>
																	<li>신문방송학</li>
																	<li>여성학</li>
																	<li>무역학</li>
																	<li>개인저작물</li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																</ul>
																<ul>
																	<li>예술체육</li>
																	<li>예술일반</li>
																	<li>음악학</li>
																	<li>미술</li>
																	<li>의상</li>
																	<li>체육</li>
																	<li>무용</li>
																	<li>개인저작물</li>
																	<li></li>
																	<li></li>
																	<li>경제경영</li>
																	<li></li>
																	<li></li>
																</ul>
																<ul>
																	<li>인문학/복합학</li>
																	<li>역사학</li>
																	<li>철학</li>
																	<li>과학기술학</li>
																	<li>기술정책</li>
																	<li>여성학</li>
																	<li>인지과학</li>
																	<li>뇌과학</li>
																	<li>감성과학</li>
																	<li>학제간연구</li>
																	<li></li>
																	<li></li>
																	<li>법학</li>
																</ul>
																<ul>
																	<li>공학</li>
																	<li>공학일반</li>
																	<li>기계공학</li>
																	<li>자동차공학</li>
																	<li>화학공학</li>
																	<li>제어계측공학</li>
																	<li>환경공학</li>
																	<li>전자/정보통식공학</li>
																	<li>컴퓨터학</li>
																	<li>토목공학</li>
																	<li>건축공학</li>
																	<li>산업공학</li>
																	<li>해양공학</li>
																</ul>
															</li>
														</ul>
													</div>

													<div class="mainSpecial2">
														<ul id="samSpeical">
															<li>
																<ul>
																	<li>스페셜코너</li>
																	<li>sam 집중탐구</li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																	<li></li>
																</ul>
															</li>
															<li>
																<ul>
																	<li>스페셜코너</li>
																	<li>선물하기</li>
																	<li>교보e캐시</li>
																	<li>eBook 집중탐구</li>
																	<li>혜택 라운지</li>
																	<li>이벤트 캘린더</li>
																	<li>신간 캘린더</li>
																	<li>교보 오리지널</li>
																	<li>eBook+</li>
																	<li>신간</li>
																	<li>RTS</li>
																	<li></li>
																	<li></li>
																</ul>
															</li>
															<li>
																<ul>
																	<li>스페셜코너</li>
																	<li>선물하기</li>
																	<li>교보e캐시</li>
																	<li>eBook 집중탐구</li>
																	<li>혜택 라운지</li>
																	<li>이벤트 캘린더</li>
																	<li>신간 캘린더</li>
																	<li>교보 오리지널</li>
																	<li>신간</li>
																	<li>RTS</li>
																</ul>
															</li>
															<li>
																<ul></ul>
															</li>
														</ul>
													</div>
												</div>
												<div class="iconMenuBox3">
													<ul>
														<li></li>
														<li></li>
														<li></li>
														<li></li>
														<li></li>
													</ul>
												</div>
											</li>

											<li>
												<div class="selectBox2">
													<ul id="HTSelectBox">
														<li>필기구</li>
														<li>디자인문구</li>
														<li>미술/오피스</li>
														<li>독서용품</li>
														<li>전시/굿즈</li>
														<li>디지털-tech</li>
													</ul>
												</div>
												<div class="mainBoxHT">
													<div class="mainAll3">
														<ul id="HTMainBox">
															<li>
																<ul>
																	<li>필기구</li>
																	<li>볼펜</li>
																	<li>멀티펜</li>
																	<li>만년필</li>
																	<li>연필/샤프/홀더</li>
																	<li>형광펜</li>
																</ul>
																<ul>
																	<li></li>
																	<li>마카/매직</li>
																	<li>사인펜</li>
																	<li>캘리그래피펜</li>
																	<li>지우개</li>
																	<li>프리미엄 페이퍼</li>
																	<li>펜 파우치/필통</li>
																</ul>
															</li>
															<li>
																<ul>
																	<li>디자인문구</li>
																	<li>필통/파우치</li>
																	<li>노트/메모</li>
																	<li>파일/바인더/앨범</li>
																	<li>문구세트</li>
																	<li>스톱워치/타이머</li>
																	<li>LIVE</li>
																</ul>
																<ul>
																	<li></li>
																	<li>스티커</li>
																	<li>로이텀</li>
																	<li>인덱스/스탬프</li>
																	<li>디자인굿즈</li>
																	<li>굿노트/디지털문구</li>
																	<li>2025 다이어리&플래너</li>
																	<li>키즈문구</li>
																</ul>
															</li>
															<li>
																<ul>
																	<li>미술/오피스</li>
																	<li>화방/전문용품</li>
																	<li>편지/카드/봉투</li>
																	<li>포장/데코</li>
																	<li>오피스/사무</li>
																	<li>프린터/잉크/출력용지</li>
																	<li>데스크용품</li>
																	<li>테이프</li>
																</ul>
																<ul></ul>
															</li>
															<li>
																<ul>
																	<li>독서용품</li>
																	<li>독서대</li>
																	<li>북커버</li>
																	<li>북마크</li>
																	<li>책수납</li>
																	<li>돋보기</li>
																	<li>발받침대</li>
																	<li>북퍼퓸</li>
																	<li>북라이트</li>
																	<li>문진</li>
																	<li>독서노트</li>
																</ul>
																<ul></ul>
															</li>
															<li>
																<ul>
																	<li>전시/굿즈</li>
																	<li>티켓/서비스</li>
																	<li>포스터</li>
																	<li>홈갤러리</li>
																	<li>굿즈/에디션</li>
																</ul>
																<ul></ul>
															</li>
															<li>
																<ul>
																	<li>디지털-Tech</li>
																	<li>헤드폰/이어폰</li>
																	<li>모바일/웨어러블</li>
																	<li>USB 소형가전</li>
																	<li>스마트폰/태블릿 주변기기</li>
																	<li>포토</li>
																	<li>음향기기/스피커</li>
																</ul>
																<ul>
																	<li></li>
																	<li>PC/노트북</li>
																	<li>노트북가방/파우치</li>
																	<li>1인미디어</li>
																	<li>자동차용품</li>
																	<li>주방가전</li>
																	<li>생활가전</li>
																	<li>계절가전</li>
																</ul>
															</li>
														</ul>
													</div>
												</div>
												<div class="iconMenuBox4">
													<ul>
														<li></li>
														<li></li>
														<li></li>
														<li></li>
														<li></li>
														<li></li>
														<li></li>
													</ul>
												</div>
											</li>
										</ul>
									</li>
									<!-- 서비스 전체보기 -->
									<li class="seviceAll">
										<div class="list_service">
											<div>
												<span>주요서비스</span>
												<ul>
													<li>종합 베스트셀러</li>
													<li>스테디셀러</li>
													<li>신상품</li>
													<li>사은품</li>
													<li>특가</li>
													<li>정가인하</li>
													<li>인물&작품</li>
													<li>선물하기</li>
													<li>추천</li>
												</ul>
												<span>웹소설 톡소다</span>
												<ul>
													<li>웹소설</li>
													<li>웹툰</li>
													<li>자유연재</li>
													<li>베스트</li>
												</ul>
												<span>회원혜택 </span>
												<ul>
													<li>교보북클럽</li>
													<li>등급별 혜택</li>
													<li>신규회원혜택</li>
													<li>Prestige Lounge</li>
													<li>제휴포인트상품권</li>
													<li>참좋은교보문고</li>
												</ul>
												<span>협력사여러분</span>
												<ul>
													<li>협력사여러분</li>
													<li>제휴/제안</li>
													<li>애드북</li>
													<li>협력사네트워크</li>
													<li>CP관리시스템</li>
												</ul>
											</div>
											<div>
												<span>이벤트 / 혜택 </span>
												<ul>
													<li>출석체크</li>
													<li>이벤트당첨자</li>
													<li>이벤트</li>
												</ul>
												<span>핫트랙스</span>
												<ul>
													<li>오늘만특가</li>
													<li>베스트</li>
													<li>핫딜특가</li>
													<li>쿠폰/혜택</li>
												</ul>
												<span>고객센터</span>
												<ul>
													<li>자주묻는질문</li>
													<li>1:1문의</li>
													<li>공지사항</li>
													<li>전화상담 안내도</li>
													<li>법인회원 대량주문</li>
												</ul>
												<span>기타</span>
												<ul>
													<li>이용약관</li>
													<li>개인정보처리방침</li>
													<li>청소년보호정책</li>
												</ul>
											</div>
											<div>
												<span>ONLY서비스</span>
												<ul>
													<li>책 그리고 꽃</li>
													<li>오늘의 선택</li>
													<li>이달의 책</li>
													<li>POD</li>
													<li>스펙비교</li>
													<li>우리가만드는책</li>
													<li>기프트카드</li>
													<li>분철서비스</li>
													<li>바로찾는바로드림</li>
													<li>수준별원서읽기</li>
												</ul>
												<span>중고장터</span>
												<ul>
													<li>중고도서</li>
													<li>중고음반</li>
													<li>중고블루레이·DVD</li>
													<li>최저가 중고도서</li>
												</ul>
												<span>마이</span>
												<ul>
													<li>주문내역</li>
													<li>선물내역</li>
													<li>활동내역</li>
													<li>영수증조회/출력</li>
													<li>영수증 후 적립</li>
													<li>회원정보</li>
													<li>알림센터</li>
													<li>나의혜택/포인트</li>
												</ul>
											</div>
											<div>
												<span>캠페인</span>
												<ul>
													<li>손글씨문화확산</li>
													<li>손글씨대회</li>
													<li>일상속손글씨</li>
													<li>손글씨폰트</li>
													<li>손글씨이벤트</li>
												</ul>
												<span>CASTing</span>
												<ul>
													<li>홈</li>
													<li>라이브</li>
													<li>영상</li>
													<li>포스트</li>
													<li>이벤트</li>
												</ul>
												<span>라이브러리</span>
												<ul>
													<li>리스트</li>
													<li>코멘트</li>
													<li>클로버리뷰</li>
													<li>문장수집</li>
												</ul>
											</div>
											<div>
												<span>문화공간 </span>
												<ul>
													<li>강연/공연</li>
													<li>여행/체험</li>
													<li>전시</li>
													<li>이벤트/소식</li>
												</ul>
												<span>북모닝</span>
												<ul>
													<li>이달의 북모닝도서</li>
													<li>이 주의 북브리핑</li>
													<li>이벤트</li>
													<li>회원가입</li>
												</ul>
												<span>매장안내</span>
											</div>
											<div>
												<span>eBook/sam </span>
												<ul>
													<li>오디오북</li>
													<li>대여</li>
													<li>신간</li>
													<li>교보오리지널</li>
													<li>sam무제한</li>
													<li>sam프리미엄</li>
													<li>sam그리고책</li>
													<li>학술논문</li>
												</ul>
												<span>스토리 </span>
												<ul>
													<li>포트폴리오</li>
													<li>스토리공모전</li>
													<li>테마공모전</li>
													<li>스토리마켓</li>
												</ul>
												<span>회사소개</span>
												<ul>
													<li>교보문고 소개</li>
													<li>사업현황</li>
													<li>사회공헌</li>
													<li>채용정보</li>
												</ul>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div></li>
					<a href="sub.jsp"><li class="pointGreen">책의날특집</li></a>
					<a href="sub.jsp"><li class="pointGreen">한강산문집</li></a>
					<a href="BoardServlet?command=board_list"><li>게시판</li></a>
					<a href="sub.jsp"><li>신상품</li></a>
					<a href="sub.jsp"><li>이벤트</li></a>
					<a href="sub.jsp"><li>바로펀딩</li></a>
					<a href="sub.jsp"><li>PICKS</li></a>
					<a href="sub.jsp"><li>CASTing</li></a>
					<a href="sub.jsp"><li>컬처라운지</li></a>
				</ul>

				<ul class="menuBar_rigth">
					<li>오늘의 미션</li>
					<li>할인혜택</li>
					<li>한강 신작 알림</li>
				</ul>
			</div>
		</div>
		<!-- 헤더 바디 끝 -->
	</header>

	<div id="bodywrap">
		<div id="wrapper">
			<!-- 상단 슬라이드+오늘만 특가 -->
			<section class="topslide">
				<div>
					<div class="mainSlider">
						<ul class="slideList">
							<li><img src="img/mainSlider/slider1.jpg"></li>
							<li><img src="img/mainSlider/slider2.jpg"></li>
							<li><img src="img/mainSlider/slider3.jpg"></li>
							<li><img src="img/mainSlider/slider4.jpg"></li>
							<li><img src="img/mainSlider/slider5.jpg"></li>
							<li><img src="img/mainSlider/slider6.jpg"></li>
							<li><img src="img/mainSlider/slider7.jpg"></li>
							<li><img src="img/mainSlider/slider8.jpg"></li>
							<li><img src="img/mainSlider/slider9.jpg"></li>
							<li><img src="img/mainSlider/slider10.jpg"></li>
							<li><img src="img/mainSlider/slider11.jpg"></li>
							<li><img src="img/mainSlider/slider12.jpg"></li>
							<li><img src="img/mainSlider/slider13.jpg"></li>
							<li><img src="img/mainSlider/slider14.jpg"></li>
							<li><img src="img/mainSlider/slider15.jpg"></li>
							<li><img src="img/mainSlider/slider16.jpg"></li>
							<li><img src="img/mainSlider/slider17.jpg"></li>
							<li><img src="img/mainSlider/slider18.jpg"></li>
							<li><img src="img/mainSlider/slider19.jpg"></li>
							<li><img src="img/mainSlider/slider20.jpg"></li>
						</ul>


						<div class="mainSliderbottom">
							<div class="sliderStopBtn">
								<i class="fas fa-pause"></i>
							</div>
							<div class="sliderpagebox">
								<i class="fas fa-chevron-left arrow-icon"></i> <span
									class="pageNum">1 - 20</span> <i
									class="fas fa-chevron-right arrow-icon"></i> <span
									class="viewAll">전체보기</span>
							</div>
						</div>
					</div>
				</div>
				<div class="todaysale">
					<div class="todaySaleBoxWrap">
						<div class="todaySaleSlide">
							<div class="todaySaleBox">
								<div class="todaySaleimg"></div>
								<div class="todaySaleDetail">
									<p></p>
									<span></span>
								</div>
							</div>
							<div class="todaySaleBox">
								<div class="todaySaleimg"></div>
								<div class="todaySaleDetail">
									<p></p>
									<span></span>
								</div>
							</div>
							<div class="todaySaleBox">
								<div class="todaySaleimg"></div>
								<div class="todaySaleDetail">
									<p></p>
									<span></span>
								</div>
							</div>
						</div>
					</div>
					<div class="todaySaleBtn">
						<i class="fas fa-chevron-left arrow-icon"></i> <span
							class="pagenum">1 - 3</span> <i
							class="fas fa-chevron-right arrow-icon"></i>
					</div>
				</div>
			</section>

			<!-- 아이콘 메뉴 -->
			<section class="iconbarwrap">
				<div class="icon_bar">
					<ul>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
					</ul>
				</div>
				<div class="sideimage">
					<img src="img/iconmenu/iconmenu_right.jpg">
				</div>
			</section>

			<!-- 오늘의 선택 -->
			<section class="today_pick">
				<div class="todayPickTitle">
					<p id="firstTitle">오늘의 선택</p>
					<ul id="selectBrand">
						<li>국내도서</li>
						<li>|</li>
						<li>외국도서</li>
						<li>|</li>
						<li>eBook</li>
						<li>|</li>
						<li>핫트랙스</li>
						<li>|</li>
						<li>교보only</li>
					</ul>
					<span id="moreRight"> 더보기 <i class="fa-regular fa-plus"></i>
					</span>
				</div>
				<div class="todayPickBox">
					<i class="fa-solid fa-chevron-left arrow_left todayPicBtn_L"
						id="todayPicBtn_L"></i>
					<div class="todayPic_left">
						<ul class="TodayBox1">
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
						</ul>
						<ul class="TodayBox2">
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
						</ul>
						<ul class="TodayBox3">
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
						</ul>
						<ul class="TodayBox4">
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
						</ul>
						<ul class="TodayBox5">
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
						</ul>
						<ul class="TodayBox6">
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
								<div class="todayBoxDetail"></div>
							</li>
						</ul>
					</div>
					<div class="todayPic_right">
						<ul class="TodayBoxSmall1">
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
						</ul>
						<ul class="TodayBoxSmall2">
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
						</ul>
						<ul class="TodayBoxSmall3">
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
						</ul>
						<ul class="TodayBoxSmall4">
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
						</ul>
						<ul class="TodayBoxSmall5">
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
						</ul>
						<ul class="TodayBoxSmall6">
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
							<li>
								<div class="todayBoxImg">
									<img src="" alt="">
								</div>
							</li>
						</ul>
					</div>
					<i class="fa-solid fa-chevron-right arrow_right todayPicBtn_R"
						id="todayPicBtn_R"></i>
				</div>
			</section>

			<!-- 이미지배너 1 -->
			<div class="middlebanner">
				<a href="sub.jsp"><img src="img/middlebanner/middlebanner1.png"
					alt="middlebanner"></a> <a href="sub.jsp"><img
					src="img/middlebanner/middlebanner2.png" alt="middlebanner"></a>
			</div>

			<!-- 신작 -->
			<section class="new">
				<div class="Title">
					<p id="firstTitle">한강 신작 산문집이 곧 출간돼요</p>
					<span> 더보기 <i class="fa-regular fa-plus"></i>
					</span>
				</div>
				<div class="Content">
					<ul class="newBookList">
						<li><img><span></span></li>
						<li><img><span></span></li>
						<li><img><span></span></li>
						<li><img><span></span></li>
						<li><img><span></span></li>
						<li><img><span></span></li>
					</ul>
				</div>
			</section>

			<!-- 출판사 추천 -->
			<section class="recommend">
				<div class="Title">
					<p id="firstTitle">출판사에서 자신있게 추천해요</p>
					<span>AD</span>
				</div>
				<div class="Content">
					<ul class="recommendBookList">
						<li><img src="" alt=""><span></span></li>
						<li><img src="" alt=""><span></span></li>
						<li><img src="" alt=""><span></span></li>
						<li><img src="" alt=""><span></span></li>
						<li><img src="" alt=""><span></span></li>
						<li><img src="" alt=""><span></span></li>
					</ul>
				</div>
			</section>

			<!-- 사람들이 많이 찾고있어요 -->
			<section class="popular">
				<i class="fa-solid fa-chevron-left arrow_left todayPicBtn_L"
					id="popularBtn_L"></i>
				<p id="firstTitle">사람들이 많이 찾고있어요</p>
				<div class="popularContent">
					<ul class="popularBookListSlide" id="bookSlider">
						<li><img src="" alt=""><span></span></li>
						<li><img src="" alt=""><span></span></li>
						<li><img src="" alt=""><span></span></li>
						<li><img src="" alt=""><span></span></li>
						<li><img src="" alt=""><span></span></li>
						<li><img src="" alt=""><span></span></li>
						<li><img src="" alt=""><span></span></li>
						<li><img src="" alt=""><span></span></li>
						<li><img src="" alt=""><span></span></li>
						<li><img src="" alt=""><span></span></li>
					</ul>
				</div>
				<i class="fa-solid fa-chevron-right arrow_right todayPicBtn_R"
					id="popularBtn_R"></i>
			</section>

			<!-- 이미지배너2 -->
			<div class="middlebannerSlide">
				<ul class="slidebannerWrap">
					<li><img src="img/event/event_slide1.jpg"></li>
					<li><img src="img/event/event_slide2.jpg"></li>
					<li><img src="img/event/event_slide3.jpg"></li>
					<li><img src="img/event/event_slide4.jpg"></li>
					<li><img src="img/event/event_slide5.jpg"></li>
				</ul>
			</div>

			<!-- AI추천 Piks -->
			<section class="picks">
				<div class="picksleft">
					<div class="picksLeftTop">
						<div class="pickLeftTop_L">
							<h2>AI 추천</h2>
							<img src="img/icon/pick.svg" alt="picklogo">
						</div>
						<span> 더보기 <i class="fa-regular fa-plus"></i>
						</span>
					</div>
					<p class="picksLeftDetail">
						발견의 기쁨을 선물합니다. <br> 취향을 분석해 꼭 맞는 책을 <br> 추천해 드릴게요!
					</p>
					<button class="picksLeftBtn">로그인하고 더 많은 추천 받기</button>
				</div>
				<ul class="picksright">
					<li></li>
					<li></li>
					<li></li>
					<li></li>
				</ul>
			</section>

			<!-- 베스트 -->
			<section class="kb_best">
				<div class="bestleft">
					<div class="bestTitle">
						<h2>베스트</h2>
						<span>더보기<i class="fa-regular fa-plus"></i>
						</span>
					</div>
					<div class="bestCategory">
						<ul>
							<li>전체</li>
							<li>국내도서</li>
							<li>외국도서</li>
							<li>eBook</li>
							<li>sam</li>
							<li>핫트랙스</li>
							<li>교보only</li>
						</ul>
					</div>
					<div class="steady">
						<h2>스테디셀러</h2>
						<ul>
							<li>국내도서</li>
							<li>외국도서</li>
						</ul>
					</div>
				</div>
				<div class="bestright">
					<ul class="bestList1">
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div class="bestListFirst">교보문고 Best 1</div>
								<span class="red"><i
									class="fa-sharp fa-solid fa-caret-up"></i>1</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>2</div>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>3</div>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>4</div>
								<span class="blue"><i
									class="fa-sharp fa-solid fa-caret-down"></i>3</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>5</div>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>6</div>
								<span class="green">NEW</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>7</div>
								<span class="red"><i
									class="fa-sharp fa-solid fa-caret-up"></i>3</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>8</div>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>9</div>
								<span class="red"><i
									class="fa-sharp fa-solid fa-caret-up"></i>5</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>10</div>
								<span class="blue"><i
									class="fa-sharp fa-solid fa-caret-down"></i>6</span>
							</div> <span class="bestListbookTitle"></span></li>
					</ul>
					<ul class="bestList2">
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div class="bestListFirst">교보문고 Best 1</div>
								<span class="red"><i
									class="fa-sharp fa-solid fa-caret-up"></i>1</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>2</div>
								<span class="green">NEW</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>3</div>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>4</div>
								<span class="blue"><i
									class="fa-sharp fa-solid fa-caret-down"></i>3</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>5</div>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>6</div>
								<span class="green">NEW</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>7</div>
								<span class="red"><i
									class="fa-sharp fa-solid fa-caret-up"></i>3</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>8</div>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>9</div>
								<span class="red"><i
									class="fa-sharp fa-solid fa-caret-up"></i>5</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>10</div>
								<span class="blue"><i
									class="fa-sharp fa-solid fa-caret-down"></i>6</span>
							</div> <span class="bestListbookTitle"></span></li>
					</ul>
					<ul class="bestList3">
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div class="bestListFirst">교보문고 Best 1</div>
								<span class="red"><i
									class="fa-sharp fa-solid fa-caret-up"></i>1</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>2</div>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>3</div>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>4</div>
								<span class="red"></i>43 급상승</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>5</div>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>6</div>
								<span class="green">NEW</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>7</div>
								<span class="red"><i
									class="fa-sharp fa-solid fa-caret-up"></i>3</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>8</div>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>9</div>
								<span class="red"><i
									class="fa-sharp fa-solid fa-caret-up"></i>5</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>10</div>
								<span class="blue"><i
									class="fa-sharp fa-solid fa-caret-down"></i>6</span>
							</div> <span class="bestListbookTitle"></span></li>
					</ul>
					<ul class="bestList4">
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div class="bestListFirst">교보문고 Best 1</div>
								<span class="red"><i
									class="fa-sharp fa-solid fa-caret-up"></i>11</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>2</div>
								<span class="red"><i
									class="fa-sharp fa-solid fa-caret-up"></i>6</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>3</div>
								<span class="red"><i
									class="fa-sharp fa-solid fa-caret-up"></i>10</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>4</div>
								<span class="blue"><i
									class="fa-sharp fa-solid fa-caret-down"></i>3</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>5</div>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>6</div>
								<span class="green">NEW</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>7</div>
								<span class="red"><i
									class="fa-sharp fa-solid fa-caret-up"></i>72급상승</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>8</div>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>9</div>
								<span class="red"><i
									class="fa-sharp fa-solid fa-caret-up"></i>5</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>10</div>
								<span class="blue"><i
									class="fa-sharp fa-solid fa-caret-down"></i>18</span>
							</div> <span class="bestListbookTitle"></span></li>
					</ul>
					<ul class="bestList5">
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div class="bestListFirst">교보문고 Best 1</div>
								<span class="red"><i
									class="fa-sharp fa-solid fa-caret-up"></i>1</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>2</div>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>3</div>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>4</div>
								<span class="blue"><i
									class="fa-sharp fa-solid fa-caret-down"></i>3</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>5</div>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>6</div>
								<span class="green">NEW</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>7</div>
								<span class="red"><i
									class="fa-sharp fa-solid fa-caret-up"></i>3</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>8</div>
								<span class="red"><i
									class="fa-sharp fa-solid fa-caret-up"></i>2</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>9</div>
								<span class="red"><i
									class="fa-sharp fa-solid fa-caret-up"></i>5</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>10</div>
								<span class="green">NEW</span>
							</div> <span class="bestListbookTitle"></span></li>
					</ul>
					<ul class="bestList6">
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div class="bestListFirst">교보문고 Best 1</div>
								<span class="red"><i
									class="fa-sharp fa-solid fa-caret-up"></i>1</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>2</div>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>3</div>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>4</div>
								<span class="blue"><i
									class="fa-sharp fa-solid fa-caret-down"></i>3</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>5</div>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>6</div>
								<span class="green">NEW</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>7</div>
								<span class="red"><i
									class="fa-sharp fa-solid fa-caret-up"></i>3</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>8</div>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>9</div>
								<span class="red"><i
									class="fa-sharp fa-solid fa-caret-up"></i>5</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>10</div>
								<span class="blue"><i
									class="fa-sharp fa-solid fa-caret-down"></i>6</span>
							</div> <span class="bestListbookTitle"></span></li>
					</ul>
					<ul class="bestList7">
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div class="bestListFirst">교보문고 Best 1</div>
								<span class="red"><i
									class="fa-sharp fa-solid fa-caret-up"></i>1</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>2</div>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>3</div>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>4</div>
								<span class="blue"><i
									class="fa-sharp fa-solid fa-caret-down"></i>3</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>5</div>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>6</div>
								<span class="green">NEW</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>7</div>
								<span class="red"><i
									class="fa-sharp fa-solid fa-caret-up"></i>3</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>8</div>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>9</div>
								<span class="red"><i
									class="fa-sharp fa-solid fa-caret-up"></i>5</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>10</div>
								<span class="blue"><i
									class="fa-sharp fa-solid fa-caret-down"></i>6</span>
							</div> <span class="bestListbookTitle"></span></li>
					</ul>
					<ul class="bestList8">
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div class="bestListFirst">교보문고 Best 1</div>
								<span class="red"><i
									class="fa-sharp fa-solid fa-caret-up"></i>1</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>2</div>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>3</div>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>4</div>
								<span class="blue"><i
									class="fa-sharp fa-solid fa-caret-down"></i>3</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>5</div>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>6</div>
								<span class="green">NEW</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>7</div>
								<span class="red"><i
									class="fa-sharp fa-solid fa-caret-up"></i>3</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>8</div>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>9</div>
								<span class="red"><i
									class="fa-sharp fa-solid fa-caret-up"></i>5</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>10</div>
								<span class="blue"><i
									class="fa-sharp fa-solid fa-caret-down"></i>6</span>
							</div> <span class="bestListbookTitle"></span></li>
					</ul>
					<ul class="bestList9">
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div class="bestListFirst">교보문고 Best 1</div>
								<span class="red"><i
									class="fa-sharp fa-solid fa-caret-up"></i>1</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>2</div>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>3</div>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>4</div>
								<span class="blue"><i
									class="fa-sharp fa-solid fa-caret-down"></i>3</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>5</div>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>6</div>
								<span class="green">NEW</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>7</div>
								<span class="red"><i
									class="fa-sharp fa-solid fa-caret-up"></i>3</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>8</div>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>9</div>
								<span class="red"><i
									class="fa-sharp fa-solid fa-caret-up"></i>5</span>
							</div> <span class="bestListbookTitle"></span></li>
						<li><img src="" alt="bookimg">
							<div class="bestListTop">
								<div>10</div>
								<span class="blue"><i
									class="fa-sharp fa-solid fa-caret-down"></i>6</span>
							</div> <span class="bestListbookTitle"></span></li>
					</ul>
				</div>
			</section>

			<!-- 이미지배너3 -->
			<div class="middlebanner">
				<a href="sub.html"><img src="img/middlebanner/middlebanner3.png"
					alt="middlebanner"></a> <a href="sub.html"><img
					src="img/middlebanner/middlebanner4.png" alt="middlebanner"></a>
			</div>

			<!-- 교보문고가 만들었어요 -->
			<section class="madeBook">
				<i class="fa-solid fa-chevron-left arrow_left todayPicBtn_L"
					id="madeBookBtn_L"></i>
				<p id="firstTitle">교보문고가 만들었어요</p>
				<div class="madeBookContent">
					<ul class="madeBookListSlide">
						<li><img src="" alt=""><span></span></li>
						<li><img src="" alt=""><span></span></li>
						<li><img src="" alt=""><span></span></li>
						<li><img src="" alt=""><span></span></li>
						<li><img src="" alt=""><span></span></li>
						<li><img src="" alt=""><span></span></li>
						<li><img src="" alt=""><span></span></li>
						<li><img src="" alt=""><span></span></li>
						<li><img src="" alt=""><span></span></li>
						<li><img src="" alt=""><span></span></li>
					</ul>
				</div>
				<i class="fa-solid fa-chevron-right arrow_right todayPicBtn_R"
					id="madeBookBtn_R"></i>
			</section>

			<!-- casting -->
			<section class="casting">
				<div class="castingBackImg">
					<div></div>
				</div>

				<i class="fa-solid fa-chevron-left arrow_left" id="castingBtn_L"></i>
				<div class="castingTop">
					<h2>CASTing</h2>
					<span>더보기<i class="fa-regular fa-plus"></i></span>
				</div>
				<div class="castingslide">
					<i class="fa-solid fa-chevron-left arrow_left"
						id="castingSlidBtn_L"></i>
					<div class="castingBackground">
						<div class="castingInfo"></div>
						<div class="castingTopimg"></div>
					</div>
					<i class="fa-solid fa-chevron-right arrow_right"
						id="castingSlidBtn_R"></i>
				</div>
				<div class="castingBottom">
					<ul class="castingSlider">
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
					</ul>
				</div>
				<i class="fa-solid fa-chevron-right arrow_right" id="castingBtn_R"></i>
			</section>

			<!-- event -->
			<section class="event">
				<i class="fa-solid fa-chevron-left arrow_left todayPicBtn_L"></i>
				<div class="eventTop">
					<p id="firstTitle">이벤트의 정성이 달라요</p>
					<ul class="selctbrnadEventSlide" id="selectBrand">
						<li>교보문고</li>
						<li>|</li>
						<li>eBook</li>
						<li>|</li>
						<li>핫트랙스</li>
					</ul>
					<span id="moreRight"> 더보기 <i class="fa-regular fa-plus"></i>
					</span>
				</div>
				<div class="eventContent">
					<div class="eventContentWrap">
						<ul>
							<li><img src="img/event/event1_1.jpg" alt="eventimage"></li>
							<li><img src="img/event/event1_2.jpg" alt="eventimage"></li>
							<li><img src="img/event/event1_3.jpg" alt="eventimage"></li>
						</ul>
						<ul>
							<li><img src="img/event/event2_1.jpg" alt="eventimage"></li>
							<li><img src="img/event/event2_2.png" alt="eventimage"></li>
							<li><img src="img/event/event2_3.jpg" alt="eventimage"></li>
						</ul>
						<ul>
							<li><img src="img/event/event3_1.jpg" alt="eventimage"></li>
							<li><img src="img/event/event3_2.jpg" alt="eventimage"></li>
							<li><img src="img/event/event3_3.jpg" alt="eventimage"></li>
						</ul>
					</div>
				</div>
				<i class="fa-solid fa-chevron-right arrow_right todayPicBtn_R"></i>
			</section>

			<div class="slidebanner">
				<ul class="slidebannerWrap">
					<li><img src="img/event/event_slide1.jpg"></li>
					<li><img src="img/event/event_slide2.jpg"></li>
					<li><img src="img/event/event_slide3.jpg"></li>
					<li><img src="img/event/event_slide4.jpg"></li>
					<li><img src="img/event/event_slide5.jpg"></li>
				</ul>
			</div>
		</div>

		<div id="side_ad">
			<div>
				<a href="#"><img src="img/side/side4.jpg"></a>
			</div>
			<a href="#">이벤트</a>
			<div>
				<a href="#" target="_self"><img src="img/side/side2.jpg"></a>
				<div id="adBtn">
					<i class="fa-solid fa-chevron-left"></i>
					<ul>
						<li>01</li>
						<li>-</li>
						<li>02</li>
					</ul>
					<i class="fa-solid fa-chevron-right"></i>
				</div>
			</div>
			<a href="#">쿠폰</a>
		</div>
		<button id="topBtn">TOP</button>
	</div>

	<footer>
		<div class="footer_header">
			<div class="footer_header_wrap">
				<div class="fheader1">
					<span>공지사항</span> <a href="#" class="maintxt">[공지]교보북클럽 메가박스 제휴
						혜택 종료(4/1~)</a> <a href="#" class="moretxt"> <span>더보기</span>
					</a>
				</div>
				<div class="fheader2">
					<span>당첨자발표</span> <a href="#" class="maintxt">[로맨스][50년대여+e캐시]꿀잼
						확신 200% 로판 데려옴! 당첨자 발표</a> <a href="#" class="moretxt"> <span>더보기</span>
					</a>
				</div>
			</div>
		</div>

		<div class="footer_wrapper">
			<div class="footer_body">
				<div class="footer_logo">
					<a href="#"> <img src="img/icon/KBlogo.svg" alt="logo">
					</a>
				</div>

				<div class="footer_right">
					<div class="footer_menu_box">
						<a href="#">회사소개</a>
						<p>|</p>
						<a href="#">이용약관</a>
						<p>|</p>
						<a href="#">개인정보처리방침</a>
						<p>|</p>
						<a href="#">청소년보호정책</a>
						<p>|</p>
						<a href="#">대량주문안내</a>
						<p>|</p>
						<a href="#">상품입점문의</a>
						<p>|</p>
						<a href="#">협력사여러분</a>
						<p>|</p>
						<a href="#">채용정보</a>
						<p>|</p>
						<a href="#">광고소개</a>
					</div>

					<div class="footer_info_box">
						<p>(주)교보문고</p>
						<P>|</P>
						<p>서울특별시 종로구 종로1</p>
						<P>|</P>
						<p>대표이사:허정도</p>
						<P>|</P>
						<p>사업자등록번호:102-81-11670</p>
						<br>
						<p>대표자(발신부담):1544-1900(발신자 부담전화)</p>
						<P>|</P>
						<p>FAX:0502-987-5711(지역번호 공통)</p>
						<P>|</P>
						<p>서울특별시 통신판매업소신고번호:제653호</p>

						<a href="#">사업자정보확인></a>
					</div>

					<div class="copyright">ⓒ KYOBO BOOK CENTRE</div>
				</div>
				<div class="footer_left">
					<div class="footer_service">
						<span>토스페이먼츠 구매안전서비스</span> <a href="#">서비스 가입 확인></a>
						<p>고객님은 안전거래를 위해 현금 등으로 결제시 저희 쇼핑몰에서 가입한 토스페이먼츠의 구매안전서비스를 이용하실
							수 있습니다.</p>
					</div>

					<div class="footer_mark">
						<a href="#"> <img src="img/icon/ISMS.png" alt="ismsicon">
							정보보호관리체계 <br> ISMS 인증획득
						</a>

						<p>
							[인증범위]인터넷 교보문고 및 브랜드 서비스 운영 <br> [유효기간] 2023.11.15 ~
							2026.11.14
						</p>
					</div>
				</div>
			</div>
		</div>
	</footer>
</body>

</html>