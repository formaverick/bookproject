<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>삶의 발명 | 정혜윤 - 교보문고</title>

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;400;500;700&display=swap"
        rel="stylesheet" />
    <script src="https://kit.fontawesome.com/4d0d3ba6ba.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


    <link href="css/reset.css" rel="stylesheet">
    <link href="css/fixed.css" rel="stylesheet">
    <link href="css/head.css" rel="stylesheet">
    <link href="css/subbodyhead.css" rel="stylesheet">
    <link href="css/subbodyLeft.css" rel="stylesheet">
    <link href="css/subbodyRight.css" rel="stylesheet">
    <link href="css/side.css" rel="stylesheet">
    <link href="css/footer.css" rel="stylesheet">

    <script src="js/fixed.js"></script>
    <script src="js/search.js"></script>
    <script src="js/category.js"></script>
    <script src="js/iconmenu.js"></script>
    <script src="js/bookimgchange.js"></script>
    <script src="js/BookFetchSub.js"></script>
    <script src="js/writerInfo.js"></script>
    <script src="js/writerAther.js"></script>
    <script src="js/SubPick.js"></script>
    <script src="js/intotheBook.js"></script>
    <script src="js/bookReport.js"></script>
    <script src="js/side.js"></script>
</head>

<body>
    <div id="fixedTop">
        <!-- index, sub 공통 상단 고정 바 -->
        <div>
            <img src="img/icon/o-button.png" id="menu_icon2">
            <a href="index.jsp"><img src="img/icon/KBlogo.svg" id="logo2"></a>
            <form class="search">
                <div class="custom-select">
                    <div class="selected">통합검색<i class="fa-solid fa-chevron-down arrow"></i></div>
                    <ul class="select-options">
                        <li>통합검색</li>
                        <li>교보문고</li>
                        <li>eBook</li>
                        <li>sam</li>
                        <li>핫트랙스</li>
                    </ul>
                </div>
                <input type="text" placeholder="미쉐린 3스타 강민구의 비밀 레시피 『장』" />
                <i class="fa-sharp fa-solid fa-magnifying-glass"></i>
            </form>
            <div class="myPage">
                <a href="member/login.html"><img src="img/icon/login.png"></a>
                <i class="fa-solid fa-cart-shopping"></i>
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
                    <li><a href="member/join.jsp">회원가입</a></li>
                    <li>|</li>
                    <li><a href="member/login.jsp">로그인</a></li>
                    <li>|</li>
                    <li><a href="#">회원혜택</a></li>
                    <li>|</li>
                    <li><a href="#">주문배송</a></li>
                    <li>|</li>
                    <li><a href="#">매장안내</a></li>
                    <li>|</li>
                    <li><a href="#">고객센터</a></li>
                </ul>
            </div>
        </div>
        <!-- 상단 브랜드 메뉴 끝 -->

        <!-- 헤더 바디 -->
        <div id="topwrap">
            <a href="index.jsp"><img src="img/icon/KBlogo.svg" id="logo2" /></a>
            <form class="search">
                <div class="custom-select">
                    <div class="selected">통합검색<i class="fa-solid fa-chevron-down arrow"></i></div>
                    <ul class="select-options">
                        <li>통합검색</li>
                        <li>교보문고</li>
                        <li>eBook</li>
                        <li>sam</li>
                        <li>핫트랙스</li>
                    </ul>
                </div>
                <input type="text" placeholder="미쉐린 3스타 강민구의 비밀 레시피 『장』" />
                <i class="fa-sharp fa-solid fa-magnifying-glass"></i>
            </form>
            <div class="myPage">
                <a href="login.do"><img src="img/icon/login.png"></a>
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
                                                                    <div class="koreaAll fontOfTop">국내도서 전체<img
                                                                            src="img/icon/arrow.png"></div>
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
                                                                    <div class="koreaAll fontOfTop">서양도서 전체
                                                                        <img src="img/icon/arrow.png">
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
                                                                    <div class="koreaAll fontOfTop">일본도서 전체<img
                                                                            src="img/icon/arrow.png"></div>
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
                                                                    <div class="koreaAll fontOfTop">교보Only 전체<img
                                                                            src="img/icon/arrow.png"></div>
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
                                                <div class="subBox2"><img src="img/category/adbox2.jpg" alt="img"></div>
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
                        </div>
                    </li>
                    <li class="pointGreen">책의날특집</li>
                    <li class="pointGreen">한강산문집</li>
                    <li>베스트</li>
                    <li>신상품</li>
                    <li>이벤트</li>
                    <li>바로펀딩</li>
                    <li>PICKS</li>
                    <li>CASTing</li>
                    <li>컬처라운지</li>
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
        <!-- 책 주문정보  -->
        <section class="detailVeiw">
            <div class="detailVeiwBox">
                <div class="veiwBoxTop">
                    <i class="fa-solid fa-house"></i>
                    <ul id="flowChart">
                        <li>국내도서</li>
                        <li>시/에세이</li>
                        <li>나라별 에세이</li>
                        <li>한국에세이</li>
                    </ul>
                </div>
                <div class="veiwBoxBook">
                    <h1>삶의 발명</h1>
                    <p>당신은 어떤 이야기의 일부가 되겠습니까</p>
                    <div class="prodTypeWrap">
                        <div class="prodKo">
                            <span>국내도서</span>
                            <span>15,300원</span>
                        </div>
                        <div class="prodEbook">
                            <span>eBook</span>
                            <span>10,710원</span>
                        </div>
                    </div>
                    <div class="bookWrap">
                        <img src="img/subimgs/mainbook.jpg" class="mainBookimg">
                    </div>
                </div>
                <div class="veiwBoxInfo">
                    <div class="priceBook">
                        <div class="tagBox">
                            <div class="tagBoxWrap">
                                <span>무료배송</span>
                                <span>소득공제</span>
                            </div>
                            <div><img src="img/subimgs/share_icon"></div>
                        </div>
                        <div class="priceBox">
                            <span class="discount">10%</span>
                            <span class="last_price">15,300원</span>
                            <span class="origin_price">17,000원</span>
                        </div>
                        <div class="pointBox">
                            <span>적립/혜택</span>
                            <div>850P</div>
                        </div>
                        <div class="delivery">
                            <div>
                                <span>배송안내</span>
                                <span class="mark_icon">무료배송</span>
                            </div>
                            <div>
                                <span class="purpleBox">새벽배송</span>
                                <span class="boldText mark_icon">내일(4/25,금 오전 7시 전)도착</span>
                            </div>
                            <div>
                                <span>기본배송지 기준</span>
                            </div>
                        </div>
                        <div class="deliverySub">
                            <div>
                                <span>이달의 꽃과 함께 책을 받아보세요!<div class="morebtn">자세히 보기 ></div></span>
                                <p>· 1권 구매 시 결제 단계에서 적용 가능합니다.</p>
                            </div>
                        </div>
                        <div class="alram">
                            <div>
                                <p>알림 신청하시면 원하시는 정보를 받아보실 수 있습니다.</p>
                                <div class="alramBtn">알림신청</div>
                            </div>
                            <div class="locationBtn"><img src="img/subimgs/location_icon">매장 재고 · 위치</div>
                        </div>
                    </div>
                    <div class="preBook">
                        <h3>정혜윤 저자(글)</h3>
                        <p>위고 · 2023년 10월 25일</p>
                        <div class="bestBox">
                            <span class="bestBoxfirst">주간베스트</span>
                            <span>국내도서 <span class="rank">113</span>위 · 경제/경영 <span class="rank">14</span> 위</span>
                        </div>
                        <div class="reviewBox">
                            <div class="reviewLuck">
                                <span class="score">9.7</span>
                                <div>
                                    <img src="img/subimgs/ico_klover_fill.png">
                                    <img src="img/subimgs/ico_klover_fill.png">
                                    <img src="img/subimgs/ico_klover_fill.png">
                                    <img src="img/subimgs/ico_klover_fill.png">
                                </div>
                                <span>(<span class="val">42</span>개의 리뷰)</span>
                            </div>
                            <div class="reviewBest">
                                <div><img src="img/subimgs/quotes_icon"></div>
                                <span class="BestTitle">최고예요</span>
                                <span>(<span class="val">45%</span>의 구매자)</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="menuBox">
                <ul>
                    <li>상품정보</li>
                    <li>리뷰(42)</li>
                    <li>교환/반품/품절</li>
                </ul>
            </div>
        </section>

        <!-- 책 정보 바디-->
        <section class="detailContents">
            <div class="detailContentsLeft">
                <!-- 북카드 -->
                <div class="bookCard">
                    <h1 class="AllTitle">북카드</h1>
                    <div>
                        <ul>
                            <li><img src="img\subimgs\bookcard\bookcard1.jpg"></li>
                            <li><img src="img\subimgs\bookcard\bookcard2.jpg"></li>
                            <li><img src="img\subimgs\bookcard\bookcard3.jpg"></li>
                            <li><img src="img\subimgs\bookcard\bookcard4.jpg"></li>
                            <li><img src="img\subimgs\bookcard\bookcard5.jpg"></li>
                            <li><img src="img\subimgs\bookcard\bookcard6.jpg"></li>
                            <li><img src="img\subimgs\bookcard\bookcard7.jpg"></li>
                            <li><img src="img\subimgs\bookcard\bookcard8.jpg"></li>
                            <li><img src="img\subimgs\bookcard\bookcard9.jpg"></li>
                            <li><img src="img\subimgs\bookcard\bookcard10.jpg"></li>
                            <li><img src="img\subimgs\bookcard\bookcard11.jpg"></li>
                            <li><img src="img\subimgs\bookcard\bookcard12.jpg"></li>
                        </ul>
                    </div>
                </div>

                <!-- 함께 구매한 상품 -->
                <div class="buyTogether">
                    <h1 class="AllTitle">함께 구매한 상품</h1>
                    <div class="togetherBook">
                        <h2 class="smallTitle">도서</h2>
                        <div class="togetherBookWrap">
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
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                            </ul>
                        </div>
                    </div>
                    <div class="togetherLife">
                        <h2 class="smallTitle">라이프</h2>
                        <div class="togetherLifeWrap">
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
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <!-- 키워드 Pick -->
                <div class="keyPick">
                    <h1 class="AllTitle mark_icon">키워드 Pick</h1>
                    <div class="PickBtn">
                        <span>안부</span>
                        <span>성장 드라마</span>
                        <span>우정</span>
                        <span>다짐</span>
                        <span>도착지</span>
                        <span>여정</span>
                    </div>
                    <div class="PickPic">
                        <div class="PickPicMain">
                            <ul class="PickPic1">
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                            </ul>
                            <ul class="PickPic2">
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                            </ul>
                            <ul class="PickPic3">
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                            </ul>
                            <ul class="PickPic4">
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                            </ul>
                            <ul class="PickPic5">
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                            </ul>
                            <ul class="PickPic6">
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                            </ul>
                        </div>
                        <div>
                            <span>더보기</span>
                        </div>
                    </div>
                </div>

                <!-- 도서 Main 사진 -->
                <div class="bookDetailMain">
                    <img src="img/subimgs/bookinfo1.jpg" alt="bookinfo">
                </div>

                <!-- 책 소개 -->
                <div class="bookInfoMain">
                    <div class="introBook">
                        <h1 class="AllTitle">책 소개</h1>
                        <p>이 책이 속한 분야</p>
                        <ul>
                            <li>국내도서<i class="fas fa-chevron-right"></i></li>
                            <li>시/에세이<i class="fas fa-chevron-right"></i></li>
                            <li>나라별 에세이<i class="fas fa-chevron-right"></i></li>
                            <li>한국에세이</li>
                        </ul>
                    </div>
                    <div class="award">
                        <p>수상내역/미디어추천</p>
                        <ul>
                            <li>미디어 추천도서<i class="fas fa-chevron-right"></i></li>
                            <li>주요일간지소개도서<i class="fas fa-chevron-right"></i></li>
                            <li>한겨레신문<i class="fas fa-chevron-right"></i></li>
                            <li>2023년 10월 4주 선정</li>
                        </ul>
                        <ul>
                            <li>미디어 추천도서<i class="fas fa-chevron-right"></i></li>
                            <li>주요일간지소개도서<i class="fas fa-chevron-right"></i></li>
                            <li>한겨레신문<i class="fas fa-chevron-right"></i></li>
                            <li>2025년 1월 1주 선정</li>
                        </ul>
                    </div>
                    <div class="introBottom">
                        <p> &ldquo; 삶은 삶에 대해 이야기하는 방식이다<br>
                            모든 생명체는 나름의 이야기를 가지고 있고 <br>
                            언젠가 우리는 모두 이야기 속으로 사라진다 &rdquo;</p>
                    </div>
                </div>

                <!-- 작가 정보 -->
                <div class="writerInfo">
                    <h1 class="AllTitle">작가정보</h1>
                    <div class="writerBox">
                        <div class="writerName">
                            <h3>
                                <span>저자(글)</span>
                                정혜윤
                                <div><img src="img/subimgs/heart_icon"></div>
                            </h3>
                            <div><img src="img/subimgs/writer_info_icon.png">인물정보</div>
                        </div>
                        <div class="writerJob">
                            <div>기자/PD</div>
                        </div>
                        <div class="writerinfo">
                            <div class="writerPhoto">
                                <img src="img/subimgs/writerPhoto.jpg">
                            </div>
                            <div class="writerInfoMain">
                                <div class="writerInfoText">
                                    <p>마술적 저널리즘을 꿈꾸는 라디오 피디. 세월호 유족의 목소리를 담은 팟캐스트 〈416의 목소리〉 시즌 1, 재난참사 가족들과 함께 만든 팟캐스트
                                        〈세상 끝의 사랑: 유족이 묻고 유족이 답하다〉 등을 제작했다. 다큐멘터리 〈자살률의 비밀〉로 한국피디대상을 받았고, 다큐멘터리 〈불안〉,
                                        세월호 참사 2주기 특집 다큐멘터리 〈새벽 4시의 궁전〉, 〈남겨진 이들의 선물〉, 〈조선인 전범 75년 동안의 고독〉 등의 작품들이
                                        한국방송대상 작품상을 수상했다. 저서로는 『삶을 바꾸는 책 읽기』, 『사생활의 천재들』, 쌍용차 노동자의 삶을 담은 르포르타주 『그의 슬픔과
                                        기쁨』, 『아무튼, 메모』, 『앞으로 올 사랑』, 『슬픈 세상의 기쁜 말』, 『마음 편해지고 싶은 사람들을 위한 워크숍』 등이 있다.
                                        <br> 기후위기시대 예술창작집단 이동시(이야기와 동물과 시) 일원이다.
                                    </p>
                                    <div class="showBtn" id="showBtn1">
                                        <span>펼치기<i class="fa-sharp fa-solid fa-angle-up"></i></span>
                                        <span>접기<i class="fa-sharp fa-solid fa-angle-down"></i></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="writerAther">
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
                    </div>
                </div>

                <!-- 목차/책 속으로/출판사 서평 -->
                <div class="bookInfoSub">
                    <div class="bookInfoIndex">
                        <h1 class="AllTitle">목차</h1>
                        <span>
                            들어가며 <br><br>
                            앎의 발명 <br>
                            사랑의 발명 <br>
                            목소리의 발명 <br>
                            관계의 발명 <br>
                            경이로움의 발명 <br>
                            이야기의 발명 <br>
                        </span>
                    </div>
                    <div class="intotheBook">
                        <h1 class="AllTitle">책 속으로</h1>
                        <p>
                            “그 이야기 참 좋다.”
                            <br>
                            이 말의 힘을 나는 백 퍼센트 믿는다. 이야기가 좋으면 나도 모르게 감탄하면서 마음이 환해진다. 감탄할 때 현실이 달리 보였고, 살 만한 가치가 있는 삶이란 게 분명
                            존재한다고 느껴졌고, 사는 것이 더 재미있어지고 더 좋아지고 내가 뭘 해야 할지도 알 것 같았다. 그때는 세상은 따라 해야 할 일투성이로 보였고 세상 또한 사랑할
                            만한 것으로 보였다. 감탄 속에 있을 때 나는 잘 살고 있다. 그렇지 않을 때는 왜 사는지 잘 모르겠다. 어디에 마음을 둬야 할지 잘 모르겠다.(p. 9)
                            <br>
                            <br>
                            어떤 앎은 길을 잃게 만든다. 덫이 되고 수렁에 빠지게 한다. 우리에게 힘을 주는 것이 아니라 우리를 약해지게 만든다. 사실 내 친구처럼 뭔가를 그냥 아는 것이
                            아니라 사랑하면서 알게 되는 것은 한 인간이 삶에서 경험할 수 있는 가장 큰 기쁨이자 힘이다. 그런 일이 일어난다면 우리 삶은 방향을 바꾸게 된다. 가만히 있는
                            것보단 사랑하는 것이 나을 것이다. 가만히 있는 것보단 사랑할 것을 찾아 길을 떠나는 것이 나을 것이다. 길을 떠나기만 하는 것이 아니라 함께 길을 만들 수 있다면
                            더 좋을 것이다.(p. 23)
                            <br>
                            <br>
                            이학래가 그랬던 것처럼 누군가 평생 포기하지 않고 싸웠다는 것은 설명하기 어렵고 복잡한 방식으로 우리에게 위안과 힘이 된다. 살아남은 전범들은 교수대에 올라가는
                            동료들에게 그저 “잘 가”라는 말밖에 할 수 없었던 것을 괴로워했고, 죽음을 뼛속 깊이 두려워해봤고, 살아서 삶 속으로 돌아갈 수 있기를 원했고, 자신들이 한 일을
                            부끄러워했고, 감옥에서 무엇이 우리를 죽게 하나 물었듯이 살아 나와서는 무엇을 위해 살아야 하나를 물었다. 그리고 무엇이 부조리인지 알게 된 뒤에는 그것에 맞서
                            지속적으로 싸웠다. 듣는 사람이 거의 없어도 그렇게 했다.(p.50-51)
                            <br>
                            <br>
                            나는 내가 들은 이 이야기를 조선인 전범 재판에 문제가 있었음을 말하는 것으로 끝내야 적절하다는 것을 알고 있다. 그들은 당시 역사가 필요로 했던 정의를 채워주는
                            역할을 한 역사의 엑스트라에 불과했다고 말하면 될 것이다. 그러나 그렇게 끝내고 싶지 않다. 나는 그들이 그들만의 역사를 쓰기를 포기하지 않았다고 느낀다. 그리고 더
                            중요하게는, 그들의 이야기가 삶의 가장 비밀스러운 부분을 건드리는 것처럼 느껴진다. 여태까지 나의 삶이라고 생각했던 것이 사실은 나의 삶이 아니었다는 앎. 식사는
                            식사 이상, 노래는 노래 이상, 삶은 자고 먹고 노래하는 그 이상의 것, 우리가 뭐라고 말하든 그 이상의 것, 죽을 때 돌아보고 후회할 우리의 것, 소중한 것이라는
                            앎 말이다. 그런데 왜 우리는 자기 자신의 삶을 살지 못하는가?(p.51)
                            <br>
                            <br>
                            매일 아침 눈을 뜨면 세계에 대한 안정감을 잃는 것이 우리의 상황이다. 우리는 미래에 대한 두려움 없이 나 아닌 것들, 나의 외부세계와 관계를 맺을 방법을 찾아야
                            하지만 나의 가장 큰 두려움은 우리가 경고를 무시하는 것이다. 마치 아무 일도 일어나지 않은 것처럼 사는 것이다. 하루하루 두려움에 시달리며 외로움에 떨면서 사는
                            삶에 적응해버리는 것이다. 하지만 사는 것을 두려워하다니 참 이상한 일이다. 그토록 살고 싶어 하는데.(p.55-56)
                            <br>
                            <br>
                            유족들은 아이들의 믿음을 저버리는 세상이 미웠다. 유족들은 한 인간의 생명, 자유, 꿈이 누구의 손에 달렸는지를 따져보고 마음속 깊이 흔들렸다. 우리 모두 깨끗해지지
                            않는 한 대책은 영원히 없을 것 같다고 유족들은 생각했다. 그러나 우리가 저절로 변할 가능성은 크지 않다. 누가 미래를 바꿀 수 있는가? 현실의 추악함과 절대로
                            이해관계를 나누어 갖고 싶지 않은 사람이어야 했다.(p.78)
                            <br>
                            <br>
                            그는 동물 사진을 찍기 시작했다. 처음에는 나이 들어가는 데 대한 두려움, 자신 또한 고통스러운 방식으로 죽게 되지 않을까 하는 두려움에 단련되기를 바라면서
                            찍었었다. 그러나 사진을 찍으면서 그는 바뀌었다. 죽음 직전에 구조된 동물들의 이야기들을 알게 되면서 동물들의 대변자가 되기를 원하게 되었다. 그의 사진을 보면
                            동물들에 ‘대해서’ 말하지만 동물들을 ‘위해서’ 말한다는 느낌을 받는다. 나는 무엇에 ‘대해서’ 말하는 동시에 무엇을 ‘위해서’ 말할 수 있는 것이 인간이 가진 가장
                            좋고 아름다운 능력이라고 생각한다.(p.116-117)
                            <br>
                            <br>
                            ‘○○를 사랑하게 된 그 시간에 감사드린다.’ 이 문장에 내 인생 전체가 담겼으면 좋겠다. 사랑할 줄 안다는 것은 시간과 삶이 준 가장 큰 선물이고 삶의 의미는
                            자신으로부터 나오지 않고 자신이 사랑하는 것으로부터 나오므로. 그리고 삶은 결국은 내가 무엇을 사랑하는지 말할 줄 알게 되는 하나의 과정이므로.(p.118)
                            <br>
                            <br>
                            죽음과 상실과 헤어짐이 슬픈 것은 연결되었던 것의 분리 때문이다. 사랑과 우정, 희생 모두 연결에 대한 욕구나 다름없다. 우리의 찢어지고 갈라지고 부서진 마음을 다시
                            붙여놓을 수 있는 그 무언가가 있다면 그것은 돌고래를 바다에 돌려보내는 마음과 다르지 않을 것이다. 돌고래에게 바다를, 새에게 하늘을, 갓난아기에게 따뜻한 품을,
                            눈물 흘리는 아이에게 손수건을. 존엄성을 잃은 생명에게 다시 존엄성을, 사랑을 잃은 사람에게 사랑을, 자부심을 잃은 사람에게 자부심을.(p.150-151)
                            <br>
                            <br>
                            나는 이제 귤을 먹을 때마다 자이로와 친구들을 생각하고 완벽한 의사소통을 이루었던 야쿠시마 섬의 한밤중 마임을 생각하고 그날 떠 있던 달, 나의 오랜 친구인 달-내가
                            힘들 때마다 숱하게 바라보던 달, 구름을 뚫고 나오던 모습을 지치도록 바라보게 만들었던 달-을 거북이도 바라보고 길을 찾는다는 생각을 한다. 그리고 달은 내 속마음도
                            들어줘야 하고 거북이, 조개, 아주 많은 생물들이 길을 찾게 도와줘야 하니 정말 바쁘겠다는 생각을 하고, 알 하나하나가 들려줄 수 있는 생명의 신비와 고난에 대해서도
                            생각한다. 거북이 알은 생명이 무엇인지 우리에게 알려줄 수 있는 존재다. 달이 그런 것처럼, 파도가 그런 것처럼. 모든 생명은 연결되어 있고 지구는 더 이상 황금
                            보물을 찾아 정복할 곳이 아니라 잃어버린 의미와 신비를 되찾는 곳이다. 나는 거북이 알과 맛있는 귤에 걸맞은 이야기를 따라가볼 생각이다. “이 이야기가 딱이야!”
                            그런 이야기를 찾을 수만 있다면 세상에 돌려줄 것이다.(p.226-227)
                        </p>
                        <div class="showBtn" id="showBtn2">
                            <span>펼치기<i class="fa-sharp fa-solid fa-angle-up"></i></span>
                            <span>접기<i class="fa-sharp fa-solid fa-angle-down"></i></span>
                        </div>
                    </div>
                    <div class="bookReport">
                        <h1 class="AllTitle">출판사 서평</h1>
                        <p>
                            ● 당신은 어떤 이야기의 일부가 되겠습니까
                            <br>
                            『슬픈 세상의 기쁜 말』이후 2년 만에 정혜윤 작가의 신작 『삶의 발명』이 출간되었다. 『슬픈 세상의 기쁜 말』이 ‘당신을 살아 있게 하는 말은 무엇입니까’라는
                            부제가 말해주듯이 저마다 붙들고 살아가고 있는 혹은 붙들고 살아가야 할 ‘단어’와 ‘말’에 관한 책이라면 『삶의 발명』은 자신의 삶을 좀 더 앞으로 나아가게 해주는
                            ‘이야기’에 관한 책이다.
                            <br>
                            <br>
                            “일상을 반복하고 있지만 그 반복 속에서도 나를 조금 더 앞으로 가보게 해주는 이야기들이 있었다. 그 덕분에 마음이 흔들릴 때도 많았지만 마음이 향하는 방향은
                            있었다. 어두운 날도 저 밑바닥까지 어둡지는 않았다. 나는 어디에 있는가? 내가 좋아하는 이야기의 일부가 되어 이야기의 여기저기에 흩어져 있다. 내가 원하는
                            삶이다.”
                            <br>
                            <br>
                            ● 삶을 발명하는 이야기, 그런 이야기가 이끄는 삶
                            <br>
                            “그 이야기 참 좋다.” 저자가 평생 가장 많이 해온 말이다. 그는 감탄할 때 현실이 달리 보였고, 살 만한 가치가 있는 삶이란 게 분명 존재한다고 느꼈다. 감탄할
                            만한 이야기를 따라 살려고, 마음이 가는 이야기의 일부분이 되려고 노력했다.
                            <br>
                            <br>
                            사형되는 순간 자신의 무지에 분노하는 조선 출신 포로감시원, 참사로 가족을 잃은 유족, 사고로 아내를 잃은 뒤 방황하는 여행작가, 죽어가는 농장 동물들의 사진을 찍는
                            사진가…. 저자가 직접 취재했거나 경험했던, 혹은 책에서 찾아낸 이야기들은 앎, 우정, 사랑, 연결, 회복, 경이로움, 자부심같이 우리 삶의 대체 불가능한 가치를
                            다시 한번 일깨우면서 앎과 삶, 경험과 책, 절망과 기쁨이 만나는 곳에서의 ‘발명(변화)’을 이야기한다.
                            <br>
                            <br>
                            “나에게 삶은 좋은 이야기를 찾는 과정이나 다름없었다. 내가 마음으로 언제나 불러낼 수 있는 이야기들은 에너지로 변해 나를 내 자아 바깥으로 끌고 나오고 움직이고
                            살아 있게 했다. 나뿐만 아니라 우리의 많은 에너지는 이야기가 변신한 것이나 다름없다.”
                            <br>
                            <br>
                            ● 두려움 없이 살기 위해서라도 세계에 대한 앎이 바뀌어야 한다
                            <br>
                            그렇다면 변화는 어떻게 오는가? 그 시작은 ‘앎’이다. 어떤 앎은 길을 잃게도 하지만 어떤 앎은 지도가 될 수 있다. 우리가 몰랐던 곳을 보여주기도 하고, 이전에
                            알았던 것과는 다르게 알아야 한다고 알려주기도 한다. 그 지도의 화살표는 결국 ‘진짜 당신의 삶은 무엇인가’라는 질문을 향해 있다. 무지해서 혹은 평온해서 알 수
                            없었던 ‘진짜’ 삶에 대해 묻는다. 이 책은 앎을 통해 자신의 삶을 찾고, 그 앎을 통해 삶의 변화를 일궈냈을 때 그것이 바로 삶의 발명임을 일깨우고 있다.
                            <br>
                            <br>
                            “두려움 없이 살기 위해서라도 세계에 대한 앎이 바뀌어야 한다. 세상을 이전과는 다르게 알아야 한다. 알았던 것을 잊어버려야 한다. 다행히 어떤 앎은 지도다. 새로운
                            앎은 우리를 앞으로 나아가게 한다. 새로운 삶을 살게 한다. 생각할 수 없었던 것을 알게 되어야 가능성이 태어난다.”
                            <br>
                            <br>
                            ● 우리에게는 다른 이야기가 필요하다
                            <br>
                            『삶의 발명』에는 슬픔 속에서 시작하는 이야기들이 많다. 자신의 무지로 전쟁 범죄자가 되고, 후쿠시마 원전 폭발사고로 터전을 잃고, 말기암으로 가족을 잃거나
                            아버지에게 버림받은 사람들. 하지만 이들은 슬픔 속에 오래 머무르지 않는다. 저마다의 방식으로 회복을 향해 나아간다. 억울하게 죽은 전범 친구들을 위해 죽는 날까지
                            전범 문제에 매달리고, 방사능 빗속에서 새끼 말을 받아내고, 죽음 속에서 다른 생명의 탄생을 목도하고, 자연의 경이로움 속에서 상처를 딛고 일어난다.
                            <br>
                            <br>
                            저자는 모닥불가에서 이야기를 나누며 진화한 영장류 동물로서 인간은 ‘이야기 공동체’라고 말한다. 이야기 공동체에 가장 좋은 것은 좋은 이야기다. 그리고 이러한
                            공동체의 일원으로서 우리는 세상에 좋은 이야기를 돌려줘야 한다. 죽이는 이야기가 넘쳐 나는 이 시대에 살리는 이야기, 회복의 이야기야말로 새로운 삶, 새로운 세계의
                            발명이다.
                            <br>
                            <br>
                            “우리는 살아 있고 죽이는 이야기를 한다. 우리는 살아 있고 죽이는 언어를 쓴다. 그런데 모든 이야기는 우리가 상상한 것보다 훨씬 많은 힘이 있다. 우리는 현실의
                            세계를 살지만 허구와 환상의 세계-이야기의 세계에도 살기 때문이다. 내면에 깊게 뿌리 내린 다음 우리가 그 안에서 굳어져 그것에 따라 살게 만드는 것이 바로 이야기의
                            무시무시하고 엄청난 힘이다. 우리가 다른 이야기를 필요로 하는 이유? 하나의 이야기밖에 모른다면 하나의 삶밖에 살지 못하기 때문에. 다른 세계가 다른 삶이 가능함을
                            알지 못하기 때문에.”
                            <br>
                            <br>
                            ● 새로운 삶의 발명은 인간에게만 국한되지 않는다
                            <Br>
                            저자는 서문에서 “동물의 눈에 담긴 다른 세상”을 보게 되면서 관계와 열정의 범위가 확장되었다고 말한다. 그 열정은 힘이 강해서 읽는 책, 듣고 싶은 이야기, 가고
                            싶은 곳, 먹고 싶은 음식에까지 영향을 미쳤다. 『삶의 발명』에는 인간의 슬픔이 아닌 ‘또 다른’ 슬픔 속에서 시작되는 이야기들이 있다. 배우자를 잃은 늑대,
                            학대받는 농장 동물, 닭장에 갇힌 흑두루미…. 그리고 이들을 지켜보며 함께하는 인간들이 있다. 순천만에서 매해 첫 흑두루미를 기다리는 선장, 거북이 알을 지키려는
                            사람들, 아마존을 지키는 부족들…. 이들의 이야기는 기후위기와 동물 대멸종의 시대에 새로운 인간이 될 방법을 찾는 이야기인 동시에 지구에서의 삶을 깊고 풍요롭게
                            누리는 방법을 찾는 이야기이기도 하다.
                            <br>
                            <br>
                            “나는 이제 귤을 먹을 때마다 자이로와 친구들을 생각하고 완벽한 의사소통을 이루었던 야쿠시마 섬의 한밤중 마임을 생각하고 그날 떠 있던 달, 나의 오랜 친구인 달을
                            거북이도 바라보고 길을 찾는다는 생각을 한다. 모든 생명은 연결되어 있고 지구는 더 이상 황금 보물을 찾아 정복할 곳이 아니라 잃어버린 의미와 신비를 되찾는 곳이다.
                            나는 거북이 알과 맛있는 귤에 걸맞은 이야기를 따라가볼 생각이다. “이 이야기가 딱이야!” 그런 이야기를 찾을 수만 있다면 세상에 돌려줄 것이다.”
                        </p>
                        <div class="showBtn" id="showBtn3">
                            <span>펼치기<i class="fa-sharp fa-solid fa-angle-up"></i></span>
                            <span>접기<i class="fa-sharp fa-solid fa-angle-down"></i></span>
                        </div>
                    </div>
                </div>

                <!-- 기본 정보 -->
                <div class="bookInfoBasic">
                    <h1 class="AllTitle">기본정보</h1>
                    <div>
                        <table>
                            <tbody>
                                <tr>
                                    <th>ISBN</th>
                                    <td>9791193044070</td>
                                </tr>
                                <tr>
                                    <th>발행(출시)일자</th>
                                    <td>2023년 10월 25일</td>
                                </tr>
                                <tr>
                                    <th>쪽수</th>
                                    <td>232쪽</td>
                                </tr>
                                <tr>
                                    <th>크기</th>
                                    <td>125 * 205 * 19 mm / 383 g</td>
                                </tr>
                                <tr>
                                    <th>총권수</th>
                                    <td>1권</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                <!-- Klover리뷰 -->
                <div class="KloverReview">
                    <div class="reviewTop">
                        <h1 class="AllTitle mark_icon">Klover 리뷰(42)</h1>
                        <div class="reviewTopRight">
                            <span>*구매 후 리뷰 작성 시,e교환권200원 적립</span>
                            <div><img src="img/subimgs/review_icon">리뷰작성</div>
                        </div>
                    </div>
                    <div class="reviewMainBox">
                        <div class="reviewMainBox_L">
                            <span>사용자 총점</span>
                            <div class="cloverTop">
                                <img src="img/subimgs/ico_klover_fill.png">
                                <img src="img/subimgs/ico_klover_fill.png">
                                <img src="img/subimgs/ico_klover_fill.png">
                                <img src="img/subimgs/ico_klover_fill.png">
                                <span>9.7</span>
                                <span>/10</span>
                            </div>
                            <div class="klover_box">
                                <img src="img/subimgs/ico_klover_fill.png">
                                <img src="img/subimgs/ico_klover_fill.png">
                                <img src="img/subimgs/ico_klover_fill.png">
                                <img src="img/subimgs/ico_klover_fill.png">
                                <div class="score_bar">
                                    <div class="score_bar1"></div>
                                </div>
                                <span>85%</span>
                            </div>
                            <div class="klover_box">
                                <img src="img/subimgs/ico_klover_fill.png">
                                <img src="img/subimgs/ico_klover_fill.png">
                                <img src="img/subimgs/ico_klover_fill.png">
                                <img src="img/subimgs/ico_klover_none.png">
                                <div class="score_bar">
                                    <div class="score_bar2"></div>
                                </div>
                                <span>15%</span>
                            </div>
                            <div class="klover_box">
                                <img src="img/subimgs/ico_klover_fill.png">
                                <img src="img/subimgs/ico_klover_fill.png">
                                <img src="img/subimgs/ico_klover_none.png">
                                <img src="img/subimgs/ico_klover_none.png">
                                <div class="score_bar"></div>
                                <span>0%</span>
                            </div>
                            <div class="klover_box">
                                <img src="img/subimgs/ico_klover_fill.png">
                                <img src="img/subimgs/ico_klover_none.png">
                                <img src="img/subimgs/ico_klover_none.png">
                                <img src="img/subimgs/ico_klover_none.png">
                                <div class="score_bar"></div>
                                <span>0%</span>
                            </div>
                        </div>
                        <div class="reviewMainBox_R">
                            <span>45%의 구매자가 <br> <span class="reviewPurple">최고예요</span> 라고 응답했어요</span>
                            <div class="box_bottom">
                                <div class="reply_score_item">
                                    <span class="scoreFont">15%</span>
                                    <div class="replyScoreBar">
                                        <div class="replyScoreBar1"></div>
                                    </div>
                                    <span class="scoreText">고마워요</span>
                                </div>
                                <div class="reply_score_item">
                                    <span class="scoreFontBest">45%</span>
                                    <div class="replyScoreBarBest">
                                        <div class="replyScoreBar2"></div>
                                    </div>
                                    <span class="scoreTextBest">최고예요</span>
                                </div>
                                <div class="reply_score_item">
                                    <span class="scoreFont">18%</span>
                                    <div class="replyScoreBar">
                                        <div class="replyScoreBar3"></div>
                                    </div>
                                    <span class="scoreText">공감돼요</span>
                                </div>
                                <div class="reply_score_item">
                                    <span class="scoreFont">9%</span>
                                    <div class="replyScoreBar">
                                        <div class="replyScoreBar4"></div>
                                    </div>
                                    <span class="scoreText">재밌어요</span>
                                </div>
                                <div class="reply_score_item">
                                    <span class="scoreFont">12%</span>
                                    <div class="replyScoreBar">
                                        <div class="replyScoreBar5"></div>
                                    </div>
                                    <span class="scoreText">힐링돼요</span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="reviewBoxTop">
                        <ul>
                            <li>전체 리뷰</li>
                            <li>구매 리뷰</li>
                            <li>한 달 후 리뷰</li>
                        </ul>
                    </div>

                    <div class="reviewBoxMain">
                        <ul>
                            <li>
                                <div class="comment_header">
                                    <div>
                                        <span class="badge_purple">종이책</span>
                                        <span class="badge_white">구매자</span>
                                        <span>da******</span>
                                        <span>|</span>
                                        <span>2024.02.25</span>
                                        <span>|</span>
                                        <span>신고/차단</span>
                                    </div>
                                    <div class="commentClover">
                                        <img src="img/subimgs/ico_klover_fill.png">
                                        <img src="img/subimgs/ico_klover_fill.png">
                                        <img src="img/subimgs/ico_klover_fill.png">
                                        <img src="img/subimgs/ico_klover_fill.png">
                                        <span>/</span>
                                        <span class="comment_purple">힐링돼요</span>
                                    </div>
                                </div>
                                <div class="comment_contents">믿고 사서 보고 또 선물하는 정혜윤 피디님 책</div>
                                <div class="comment_footer">
                                    <div>
                                        <span>1</span>
                                        <span>답글 0</span>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="comment_header">
                                    <div>
                                        <span class="badge_purple">종이책</span>
                                        <span class="badge_white">구매자</span>
                                        <span>da******</span>
                                        <span>|</span>
                                        <span>2024.02.25</span>
                                        <span>|</span>
                                        <span>신고/차단</span>
                                    </div>
                                    <div class="commentClover">
                                        <img src="img/subimgs/ico_klover_fill.png">
                                        <img src="img/subimgs/ico_klover_fill.png">
                                        <img src="img/subimgs/ico_klover_fill.png">
                                        <img src="img/subimgs/ico_klover_fill.png">
                                        <span>/</span>
                                        <span class="comment_purple">최고예요</span>
                                    </div>
                                </div>
                                <div class="comment_contents">정혜윤의 또 다른 이야기들을 들을 수 있었습니다</div>
                                <div class="comment_footer">
                                    <div>
                                        <span>1</span>
                                        <span>답글 0</span>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="comment_header">
                                    <div>
                                        <span class="badge_purple">종이책</span>
                                        <span class="badge_white">구매자</span>
                                        <span>da******</span>
                                        <span>|</span>
                                        <span>2024.02.25</span>
                                        <span>|</span>
                                        <span>신고/차단</span>
                                    </div>
                                    <div class="commentClover">
                                        <img src="img/subimgs/ico_klover_fill.png">
                                        <img src="img/subimgs/ico_klover_fill.png">
                                        <img src="img/subimgs/ico_klover_fill.png">
                                        <img src="img/subimgs/ico_klover_fill.png">
                                        <span>/</span>
                                        <span class="comment_purple">공감돼요</span>
                                    </div>
                                </div>
                                <div class="comment_contents">계속 생각의 생각을 하게하는 새로운 느낌의 장르</div>
                                <div class="comment_footer">
                                    <div>
                                        <span>1</span>
                                        <span>답글 0</span>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="comment_header">
                                    <div>
                                        <span class="badge_purple">종이책</span>
                                        <span class="badge_white">구매자</span>
                                        <span>da******</span>
                                        <span>|</span>
                                        <span>2024.02.25</span>
                                        <span>|</span>
                                        <span>신고/차단</span>
                                    </div>
                                    <div class="commentClover">
                                        <img src="img/subimgs/ico_klover_fill.png">
                                        <img src="img/subimgs/ico_klover_fill.png">
                                        <img src="img/subimgs/ico_klover_fill.png">
                                        <img src="img/subimgs/ico_klover_fill.png">
                                        <span>/</span>
                                        <span class="comment_purple">고마워요</span>
                                    </div>
                                </div>
                                <div class="comment_contents">정혜윤 작가님의 책은 언제나 이 고된 삶을 조금 더 살아보고 싶게 만들어줍니다.</div>
                                <div class="comment_footer">
                                    <div>
                                        <span>1</span>
                                        <span>답글 0</span>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="comment_header">
                                    <div>
                                        <span class="badge_purple">종이책</span>
                                        <span class="badge_white">구매자</span>
                                        <span>da******</span>
                                        <span>|</span>
                                        <span>2024.02.25</span>
                                        <span>|</span>
                                        <span>신고/차단</span>
                                    </div>
                                    <div class="commentClover">
                                        <img src="img/subimgs/ico_klover_fill.png">
                                        <img src="img/subimgs/ico_klover_fill.png">
                                        <img src="img/subimgs/ico_klover_fill.png">
                                        <img src="img/subimgs/ico_klover_fill.png">
                                        <span>/</span>
                                        <span class="comment_purple">공감돼요</span>
                                    </div>
                                </div>
                                <div class="comment_contents">마음에 닿는 이야기들과 문장들이 많아요</div>
                                <div class="comment_footer">
                                    <div>
                                        <span>1</span>
                                        <span>답글 0</span>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="comment_header">
                                    <div>
                                        <span class="badge_purple">종이책</span>
                                        <span class="badge_white">구매자</span>
                                        <span>da******</span>
                                        <span>|</span>
                                        <span>2024.02.25</span>
                                        <span>|</span>
                                        <span>신고/차단</span>
                                    </div>
                                    <div class="commentClover">
                                        <img src="img/subimgs/ico_klover_fill.png">
                                        <img src="img/subimgs/ico_klover_fill.png">
                                        <img src="img/subimgs/ico_klover_fill.png">
                                        <img src="img/subimgs/ico_klover_fill.png">
                                        <span>/</span>
                                        <span class="comment_purple">최고예요</span>
                                    </div>
                                </div>
                                <div class="comment_contents">추천 받아서 읽게 되었는데, 작가가 주목하고 감동한 이야기들을 귀 기울여 읽는 동안 '어떻게 살 것인가' 스스로 묻게 하네요. 좋은 책입니다.!</div>
                                <div class="comment_footer">
                                    <div>
                                        <span>1</span>
                                        <span>답글 0</span>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="comment_header">
                                    <div>
                                        <span class="badge_purple">종이책</span>
                                        <span class="badge_white">구매자</span>
                                        <span>da******</span>
                                        <span>|</span>
                                        <span>2024.02.25</span>
                                        <span>|</span>
                                        <span>신고/차단</span>
                                    </div>
                                    <div class="commentClover">
                                        <img src="img/subimgs/ico_klover_fill.png">
                                        <img src="img/subimgs/ico_klover_fill.png">
                                        <img src="img/subimgs/ico_klover_fill.png">
                                        <img src="img/subimgs/ico_klover_fill.png">
                                        <span>/</span>
                                        <span class="comment_purple">힐링돼요</span>
                                    </div>
                                </div>
                                <div class="comment_contents">희망은 정말 묘한 것이라서 희망을 가진다는 게, 터무니 없는 곳에서 가장 절실하게 요구된다</div>
                                <div class="comment_footer">
                                    <div>
                                        <span>1</span>
                                        <span>답글 0</span>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="comment_header">
                                    <div>
                                        <span class="badge_purple">종이책</span>
                                        <span class="badge_white">구매자</span>
                                        <span>da******</span>
                                        <span>|</span>
                                        <span>2024.02.25</span>
                                        <span>|</span>
                                        <span>신고/차단</span>
                                    </div>
                                    <div class="commentClover">
                                        <img src="img/subimgs/ico_klover_fill.png">
                                        <img src="img/subimgs/ico_klover_fill.png">
                                        <img src="img/subimgs/ico_klover_fill.png">
                                        <img src="img/subimgs/ico_klover_fill.png">
                                        <span>/</span>
                                        <span class="comment_purple">힐링돼요</span>
                                    </div>
                                </div>
                                <div class="comment_contents">모든 생명체는 모두 자기 나름의 이야기를 가지고 있다.</div>
                                <div class="comment_footer">
                                    <div>
                                        <span>1</span>
                                        <span>답글 0</span>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="comment_header">
                                    <div>
                                        <span class="badge_purple">종이책</span>
                                        <span class="badge_white">구매자</span>
                                        <span>da******</span>
                                        <span>|</span>
                                        <span>2024.02.25</span>
                                        <span>|</span>
                                        <span>신고/차단</span>
                                    </div>
                                    <div class="commentClover">
                                        <img src="img/subimgs/ico_klover_fill.png">
                                        <img src="img/subimgs/ico_klover_fill.png">
                                        <img src="img/subimgs/ico_klover_fill.png">
                                        <img src="img/subimgs/ico_klover_fill.png">
                                        <span>/</span>
                                        <span class="comment_purple">고마워요</span>
                                    </div>
                                </div>
                                <div class="comment_contents">너무나도 멋진 책을 만난 것 같아 행복합니다</div>
                                <div class="comment_footer">
                                    <div>
                                        <span>1</span>
                                        <span>답글 0</span>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="comment_header">
                                    <div>
                                        <span class="badge_purple">종이책</span>
                                        <span class="badge_white">구매자</span>
                                        <span>da******</span>
                                        <span>|</span>
                                        <span>2024.02.25</span>
                                        <span>|</span>
                                        <span>신고/차단</span>
                                    </div>
                                    <div class="commentClover">
                                        <img src="img/subimgs/ico_klover_fill.png">
                                        <img src="img/subimgs/ico_klover_fill.png">
                                        <img src="img/subimgs/ico_klover_fill.png">
                                        <img src="img/subimgs/ico_klover_fill.png">
                                        <span>/</span>
                                        <span class="comment_purple">최고예요</span>
                                    </div>
                                </div>
                                <div class="comment_contents">정혜윤님의 글을 평생 읽고 싶습니다. 작가님의 글을 읽으면 늘 새로 태어나는 기분이에요.</div>
                                <div class="comment_footer">
                                    <div>
                                        <span>1</span>
                                        <span>답글 0</span>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="imageBanner">
                    <img src="img/subimgs/imgbanner.jpg">
                </div>

                <!-- 문장수집 -->
                <div class="setenseCard">
                    <h1 class="AllTitle">문장수집 (13)</h1>
                    <div>
                        <ul>
                            <li>
                                <img src="img/subimgs/sentencebox1.png">
                                <p>지금 살고 있는 삶에 ‘더 나은’, ‘더 좋은’, ‘더 새로운’이라는 단어만 넣으면 삶은 갑자기 도전할 가치가 있는 모험으로 변한다.</p>
                            </li>
                            <li>
                                <img src="img/subimgs/sentencebox2.png">
                                <p>가장 큰 두려움은 마음이 만들어낸 두려움이고 대체로 가장 큰 두려움은 자기 자신에게서 나온다</p>
                            </li>
                            <li>
                                <img src="img/subimgs/sentencebox1.png">
                                <p>어떤 앎은 길을 잃게 만든다. 덫이 되고 수렁에 빠지게 한다. 우리에게 힘을 주는 것이 아니라 우리를 약해지게 만든다.</p>
                            </li>
                            <li>
                                <img src="img/subimgs/sentencebox2.png">
                                <p>나에게 삶은 좋은 이야기를 찾는 과정이나 다름없다</p>
                            </li>
                            <li>
                                <img src="img/subimgs/sentencebox1.png">
                                <p>인간은 애절할 정도로 정의를 갈구하지만 분별력을 갖기는 힘들다.</p>
                            </li>
                            <li>
                                <img src="img/subimgs/sentencebox2.png">
                                <p>용감하게 삶 속으로 돌진하기를 원하고 또 원했다.</p>
                            </li>
                            <li>
                                <img src="img/subimgs/sentencebox1.png">
                                <p>변화의 순간에 최선을 다하는 강하고 고귀한 사람들과 연결되고 싶다.</p>
                            </li>
                            <li>
                                <img src="img/subimgs/sentencebox2.png">
                                <p>감탄이 나의 힘이다.</p>
                            </li>
                            <li>
                                <img src="img/subimgs/sentencebox1.png">
                                <p>창조성은 다른 것이 아니라 뭔가에 의미를 둘 줄 안다는 뜻이니까.</p>
                            </li>
                            <li>
                                <img src="img/subimgs/sentencebox2.png">
                                <p>삶의 발명 당신은 어떤 이야기의 일부가 되겠습니까</p>
                            </li>
                            <li>
                                <img src="img/subimgs/sentencebox1.png">
                                <p>1941년 진주만 공습은 기습적이었다.</p>
                            </li>
                            <li>
                                <img src="img/subimgs/sentencebox2.png">
                                <p>그때는 세상은 따라 해야 할 일투성이로 보였고 세상 또한 사랑할 만한 것으로 보였다. 감탄 속에 있을 때 나는 잘 살고 있다. 그렇지 않을 때는 왜 사는지 잘 모르겠다. 어디에 마음을 둬야 할지 잘 모르겠다.</p>
                            </li>
                        </ul>
                    </div>
                </div>

                <!-- 교환/반품/품절 안내 -->
                <div class="commonInfo">
                    <h1 class="AllTitle">교환/반품/품절 안내</h1>
                    <div class="commonInfoWrap">
                        <ul>
                            <li>
                                <div class="commonInfoTitle">반품/교환방법</div>

                                마이룸 > 주문관리 > 주문/배송내역 > 주문조회 > 반품/교환 신청, [1:1 상담 > 반품/교환/환불] 또는 고객센터 (1544-1900)
                                <br>
                                * 오픈마켓, 해외배송 주문, 기프트 주문시 [1:1 상담>반품/교환/환불] 또는 고객센터 (1544-1900)
                            </li>
                            <li>
                                <div class="commonInfoTitle">반품/교환가능 시간</div>
                                변심반품의 경우 수령 후 7일 이내,
                                <br>
                                상품의 결함 및 계약내용과 다를 경우 문제점 발견 후 30일 이내
                            </li>
                            <li>
                                <div class="commonInfoTitle">반품/교환비용</div>
                                변심 혹은 구매착오로 인한 반품/교환은 반송료 고객 부담
                            </li>
                            <li>
                                <div class="commonInfoTitle">반품/교환비용</div>

                                1) 소비자의 책임 있는 사유로 상품 등이 손실 또는 훼손된 경우
                                <br>
                                (단지 확인을 위한 포장 훼손은 제외)
                                <br>
                                2) 소비자의 사용, 포장 개봉에 의해 상품 등의 가치가 현저히 감소한 경우
                                <br>
                                예) 화장품, 식품, 가전제품(악세서리 포함) 등
                                <br>
                                3) 복제가 가능한 상품 등의 포장을 훼손한 경우
                                <br>
                                예) 음반/DVD/비디오, 소프트웨어, 만화책, 잡지, 영상 화보집
                                <br>
                                4) 소비자의 요청에 따라 개별적으로 주문 제작되는 상품의 경우 ((1)해외주문도서)
                                <br>
                                5) 디지털 컨텐츠인 ebook, 오디오북 등을 1회이상 ‘다운로드’를 받았거나 '바로보기'로 열람한 경우
                                <br>
                                6) 시간의 경과에 의해 재판매가 곤란한 정도로 가치가 현저히 감소한 경우
                                <br>
                                7) 전자상거래 등에서의 소비자보호에 관한 법률이 정하는 소비자 청약철회 제한 내용에 해당되는 경우
                                <br>
                                8) 세트상품 일부만 반품 불가 (필요시 세트상품 반품 후 낱권 재구매)
                                <br>
                                9) 기타 반품 불가 품목 - 잡지, 테이프, 대학입시자료, 사진집, 방통대 교재, 교과서, 만화, 미디어전품목, 악보집, 정부간행물, 지도, 각종 수험서,
                                적성검사자료, 성경, 사전, 법령집, 지류, 필기구류, 시즌상품, 개봉한 상품 등
                            </li>
                            <li>
                                <div class="commonInfoTitle">상품 품절</div>
                                공급사(출판사) 재고 사정에 의해 품절/지연될 수 있으며, 품절 시 관련 사항에 대해서는 이메일과 문자로 안내드리겠습니다.
                            </li>
                            <li>
                                <div class="commonInfoTitle">소비자 피해보상 환불 지연에 따른 배상</div>
                                1) 상품의 불량에 의한 교환, A/S, 환불, 품질보증 및 피해보상 등에 관한 사항은 소비자분쟁 해결 기준 (공정거래위원회 고시)에 준하여 처리됨
                                <br>
                                2) 대금 환불 및 환불지연에 따른 배상금 지급 조건, 절차 등은 전자상거래 등에서의 소비자 보호에 관한 법률에 따라 처리함
                            </li>
                        </ul>
                        <div>
                            상품 설명에 반품/교환 관련한 안내가 있는 경우 그 내용을 우선으로 합니다. (업체 사정에 따라 달라질 수 있습니다.)
                        </div>
                    </div>
                </div>
            </div>


            <div class="detailContentsRight">
                <!-- 기분 좋은 발견 -->
                <div class="recommendEvent">
                    <div>
                        <h1 class="AllTitle">기분 좋은 발견</h1>
                        <span class="TopMoreicon">더보기</span>
                    </div>

                    <div class="recommendWrap">
                        <div>
                            <ul>
                                <li><img src="img/subimgs/rightimgbanner/img1.jpg"></li>
                                <li><img src="img/subimgs/rightimgbanner/img2.jpg"></li>
                                <li><img src="img/subimgs/rightimgbanner/img3.jpg"></li>
                                <li><img src="img/subimgs/rightimgbanner/img4.jpg"></li>
                                <li><img src="img/subimgs/rightimgbanner/img5.jpg"></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <!-- 이 분야의 베스트 -->
                <div class="RightBest">
                    <div>
                        <h1 class="AllTitle">기분 좋은 발견</h1>
                        <span class="TopMoreicon">더보기</span>
                    </div>

                    <div class="RightBestBox">
                        <img src="img/subimgs/RightBest/book1.jpg">
                        <div>
                            <span class="badge_green">1</span>
                            <span class="titleofBook">빛과 실</span>
                            <span class="writerofBook">한강</span>
                            <div>
                                <span class="bookSale">10%</span>
                                <span class="bookPrice">13,500<span>원</span></span>
                            </div>
                        </div>
                    </div>
                    <div class="RightBestBox">
                        <img src="img/subimgs/RightBest/book2.jpg">
                        <div>
                            <span class="badge_gray">2</span>
                            <span class="titleofBook">단 한 번의 삶</span>
                            <span class="writerofBook">김영하</span>
                            <div>
                                <span class="bookSale">10%</span>
                                <span class="bookPrice">15,120<span>원</span></span>
                            </div>
                        </div>
                    </div>
                    <div class="RightBestBox">
                        <img src="img/subimgs/RightBest/book3.jpg">
                        <div>
                            <span class="badge_gray">3</span>
                            <span class="titleofBook">줬으면 그만이지(반양장)</span>
                            <span class="writerofBook">김주완</span>
                            <div>
                                <span class="bookSale">10%</span>
                                <span class="bookPrice">18,000<span>원</span></span>
                            </div>
                        </div>
                    </div>
                    <div class="RightBestBox">
                        <img src="img/subimgs/RightBest/book4.jpg">
                        <div>
                            <span class="badge_gray">4</span>
                            <span class="titleofBook">어른의 행복은 조용하다</span>
                            <span class="writerofBook">태수</span>
                            <div>
                                <span class="bookSale">10%</span>
                                <span class="bookPrice">16,020<span>원</span></span>
                            </div>
                        </div>
                    </div>
                    <div class="RightBestBox">
                        <img src="img/subimgs/RightBest/book5.jpg">
                        <div>
                            <span class="badge_gray">5</span>
                            <span class="titleofBook">인생 녹음 중</span>
                            <span class="writerofBook">인생 녹음 중 부부</span>
                            <div>
                                <span class="bookSale">10%</span>
                                <span class="bookPrice">15,300<span>원</span></span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="RightBanner">
                    <div>
                        <ul>
                            <li><img src="img/subimgs/subbox.png"></li>
                            <li><img src="img/subimgs/subbox1.jpg"></li>
                            <li><img src="img/subimgs/subbox2.jpg"></li>
                        </ul>
                    </div>
                </div>

                <!-- 이 분야의 신간 -->
                <div class="RightNew">
                    <div>
                        <h1 class="AllTitle">기분 좋은 발견</h1>
                        <span class="TopMoreicon">더보기</span>
                    </div>

                    <div class="RightBestBox">
                        <img src="img/subimgs/RightBest/book6.jpg">
                        <div>
                            <span class="titleofBook">생명의 천체도</span>
                            <span class="writerofBook">박정숙</span>
                            <div>
                                <span class="bookSale">10%</span>
                                <span class="bookPrice">13,500<span>원</span></span>
                            </div>
                        </div>
                    </div>
                    <div class="RightBestBox">
                        <img src="img/subimgs/RightBest/book7.jpg">
                        <div>
                            <span class="titleofBook">다른 억양 읽기</span>
                            <span class="writerofBook">윤재경</span>
                            <div>
                                <span class="bookSale">10%</span>
                                <span class="bookPrice">15,300<span>원</span></span>
                            </div>
                        </div>
                    </div>
                    <div class="RightBestBox">
                        <img src="img/subimgs/RightBest/book8.jpg">
                        <div>
                            <span class="titleofBook">침묵하라 그리고 말하라</span>
                            <span class="writerofBook">법정</span>
                            <div>
                                <span class="bookSale">10%</span>
                                <span class="bookPrice">17,100<span>원</span></span>
                            </div>
                        </div>
                    </div>
                    <div class="RightBestBox">
                        <img src="img/subimgs/RightBest/book9.jpg">
                        <div>
                            <span class="titleofBook">의미의 발명</span>
                            <span class="writerofBook">김병수</span>
                            <div>
                                <span class="bookSale">10%</span>
                                <span class="bookPrice">30,600<span>원</span></span>
                            </div>
                        </div>
                    </div>
                    <div class="RightBestBox">
                        <img src="img/subimgs/RightBest/book10.jpg">
                        <div>
                            <span class="titleofBook">작은 것들에 입술을 달아주고</span>
                            <span class="writerofBook">이근화</span>
                            <div>
                                <span class="bookSale">10%</span>
                                <span class="bookPrice">13,500<span>원</span></span>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- 이미지 배너 -->
                <div class="RightBanner">
                    <div>
                        <ul>
                            <li><img src="img/subimgs/subbox3.jpg"></li>
                            <li><img src="img/subimgs/subbox4.jpg"></li>
                            <li><img src="img/subimgs/subbox5.jpg"></li>
                        </ul>
                    </div>
                </div>

                <!-- 이 책의 연관 상품 -->
                <div class="Rightbook">
                    <h1 class="AllTitle">이 책의 연관 상품</h1>

                    <div class="RightBestBox">
                        <img src="img/subimgs/mainbook.jpg">
                        <div>
                            <span class="titleofBook">삶의 발명(큰글자도서)</span>
                            <span class="writerofBook">정혜윤</span>
                            <div>
                                <span class="bookPrice">27,000<span>원</span></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <div id="side_ad">
            <div><a href="#"><img src="img/side/side4.jpg"></a></div>
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
                    <span>공지사항</span>
                    <a href="#" class="maintxt">[공지]교보북클럽 메가박스 제휴 혜택 종료(4/1~)</a>
                    <a href="#" class="moretxt">
                        <span>더보기</span>
                    </a>
                </div>
                <div class="fheader2">
                    <span>당첨자발표</span>
                    <a href="#" class="maintxt">[로맨스][50년대여+e캐시]꿀잼 확신 200% 로판 데려옴! 당첨자 발표</a>
                    <a href="#" class="moretxt">
                        <span>더보기</span>
                    </a>
                </div>
            </div>
        </div>

        <div class="footer_wrapper">
            <div class="footer_body">
                <div class="footer_logo">
                    <a href="#">
                        <img src="img/icon/KBlogo.svg" alt="logo">
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
                        <span>토스페이먼츠 구매안전서비스</span>
                        <a href="#">서비스 가입 확인></a>
                        <p>고객님은 안전거래를 위해 현금 등으로 결제시 저희 쇼핑몰에서 가입한 토스페이먼츠의 구매안전서비스를 이용하실 수 있습니다.</p>
                    </div>

                    <div class="footer_mark">
                        <a href="#">
                            <img src="img/icon/ISMS.png" alt="ismsicon">
                            정보보호관리체계 <br> ISMS 인증획득
                        </a>

                        <p>
                            [인증범위]인터넷 교보문고 및 브랜드 서비스 운영
                            <br>
                            [유효기간] 2023.11.15 ~ 2026.11.14
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- 하단 고정 -->
    <div></div>
</body>

</html>