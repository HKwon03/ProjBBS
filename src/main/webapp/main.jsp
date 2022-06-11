<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 뷰포트 -->
<meta name="viewport" content="width=device-width" initial-scale="1">
<!-- 스타일시트 참조  -->
<link rel="stylesheet" href="css/bootstrap.min.css">

<title>jsp 게시판 웹사이트</title>
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	
	<!-- 캐러샐 시작 -->
	<div class = "banner">
		<div style="width: 50%; max-height: 5%; margin: 2% 25% 5%;">
		    <div id="imgslide" class="carousel slide" data-bs-ride="carousel">
			  <div class="carousel-indicators">
			    <button type="button" data-bs-target="#imgslide" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
			    <button type="button" data-bs-target="#imgslide" data-bs-slide-to="1" aria-label="Slide 2"></button>
			    <button type="button" data-bs-target="#imgslide" data-bs-slide-to="2" aria-label="Slide 3"></button>
			  </div>
			  <div class="carousel-inner">
			    <div class="carousel-item active" data-bs-interval="2500">
			      <img src="img/차캐러셀11.png" class="d-block w-100" alt="...">
			      <div class="carousel-caption d-none d-md-block">
			        <h5>나에게 맞는 차는?</h5>
			        <p>당뇨, 고지혈증, 해독 등 나의 몸에 필요한 차를 즐기세요</p>
		      </div>
			    </div>
			    <div class="carousel-item" data-bs-interval="2500">
			      <img src="img/차캐러셀2.png" class="d-block w-100" alt="...">
			      <div class="carousel-caption d-none d-md-block">
			        <h5>한국의 차 문화</h5>
			        <p>삼국시대 이후로 꾸준히 존재해온 한국의 정서와 어우러진 차 문화</p>
		      </div>
			    </div>
			    <div class="carousel-item" data-bs-interval="2500">
			      <img src="img/차캐러셀3.png" class="d-block w-100" alt="...">
			      <div class="carousel-caption d-none d-md-block">
			        <h5>아기자기한 티웨어 세트</h5>
			        <p>차를 마실때 분위기와 맛을 더욱 좋게만드는 테웨어 세트</p>
		      </div>
			    </div>
			  </div>
			  <button class="carousel-control-prev" type="button" data-bs-target="#imgslide" data-bs-slide="prev">
			    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			    <span class="visually-hidden">Previous</span>
			  </button>
			  <button class="carousel-control-next" type="button" data-bs-target="#imgslide" data-bs-slide="next">
			    <span class="carousel-control-next-icon" aria-hidden="true"></span>
			    <span class="visually-hidden">Next</span>
			  </button>
			</div>
		</div>
	</div>
	<!-- 캐러샐 끝 -->
	
	<div style="width:80%; margin:0% 20%; padding:3% 0%;">
        <h2 style="font: bold 22px/1; color:#555; margin-bottom: 5%; margin-left: 35%;">이달의 차</h2>
        <div class="theme" style="width:100%;">
            
            <div class="wrap" style="width:100%;">
                <article style="width:20%; float:left; margin:0% 1%;">
                    <div class="pic">
                        <a href="">
                            <img src="img/녹차.png" alt="1번째 콘텐츠 이미지">
                        </a>
                    </div>
                    <h2 style="margin-bottom: 10px;"><a href="Greentea.html" style="font: bold 16px; color:#555;">중작차</a></h2>
                    <p style="font:14px; color:#777;">탄닌 성분이 함유되어 있어 암을 예방하고 담배의 니코틴, 아편, 환경오염 물질의 해독작용!!
                    </p>
                </article>

                <article style="width:20%; float:left; margin:0% 1%;">
                    <div class="pic">
                        <img src="img/청차.png" alt="2번째 콘텐츠 이미지">
                    </div>
                    <h2 style="margin-bottom: 10px;"><a href="Oolongtea.html" style="font: bold 16px; color:#555;">우롱차</a></h2>
                    <p style="font:14px; color:#777;">폴리페놀 성분을 함유하고 있어 강력한 항산화 작용!!</p>
                </article>

                <article style="width:20%; float:left; margin:0% 1%;">
                    <div class="pic">
                        <img src="img/홍차.png" alt="3번째 콘텐츠 이미지">
                    </div>
                    <h2 style="margin-bottom: 10px;"><a href="blacktea.html" style="font: bold 16px; color:#555;">얼그레이</a></h2>
                    <p style="font:14px; color:#777;">플라보노이드라는 성분이 함유 되어있어 간 해독, 뇌 보호 등의 효능!!
                    </p>
                </article>

                <article style="width:20%; float:left; margin:0% 1%;">
                    <div class="pic">
                        <img src="img/흑차.png" alt="4번째 콘텐츠 이미지">
                    </div>
                    <h2 style="margin-bottom: 10px;"><a href="darktea.html" style="font: bold 16px; color:#555;">보이차</a></h2>
                    <p style="font:14px; color:#777;">갈산이라는 성분이 함유되어 몸에 지방이 쌓이는 것을 방해하고 신진대사를 촉진하여 다이어트 효과!!
                    </p>
                </article>
            </div>
        </div>
    </div>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
    
    <div style="width:80%; margin:0% 20%; padding:3% 0%;">
        <h2 style="font: bold 22px/1; color:#555; margin-bottom: 5%; margin-left:35%;">차 & 건강</h2>
        <div class="theme" style="width:100%;">
            
            <div class="wrap" style="width:100%;">
                <article style="width:20%; float:left; margin:0% 1%;">
                    <div class="pic">
                        <a href="#">
                            <img src="img/차건강녹차.png" alt="1번째 콘텐츠 이미지">
                        </a>
                    </div>
                    <h2 style="margin-bottom: 10px;"><a href="#" style="font: bold 16px; color:#555;">녹차</a></h2>
                    <p style="font:14px; color:#777;">녹차가 궁금하면 클릭
                    </p>
                </article>

                <article style="width:20%; float:left; margin:0% 1%;">
                    <div class="pic">
                        <img src="img/차건강청차.png" alt="2번째 콘텐츠 이미지">
                    </div>
                    <h2 style="margin-bottom: 10px;"><a href="#" style="font: bold 16px; color:#555;">청차</a></h2>
                    <p style="font:14px; color:#777;">청차가 궁금하면 클릭</p>
                </article>

                <article style="width:20%; float:left; margin:0% 1%;">
                    <div class="pic">
                        <img src="img/차건강홍차.png" alt="3번째 콘텐츠 이미지">
                    </div>
                    <h2 style="margin-bottom: 10px;"><a href="#" style="font: bold 16px; color:#555;">홍차</a></h2>
                    <p style="font:14px; color:#777;">홍차가 궁금하면 클릭
                    </p>
                </article>

                <article style="width:20%; float:left; margin:0% 1%;">
                    <div class="pic">
                        <img src="img/차건강흑차.jpg" alt="4번째 콘텐츠 이미지">
                    </div>
                    <h2 style="margin-bottom: 10px;"><a href="#" style="font: bold 16px; color:#555;">흑차</a></h2>
                    <p style="font:14px; color:#777;">흑차가 궁금하면 클릭
                    </p>
                </article>
            </div>
        </div>
    </div>
	
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	
	<jsp:include page="footer.jsp"></jsp:include>
	
	
</body>
</html>