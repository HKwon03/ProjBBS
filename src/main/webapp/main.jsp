<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- ����Ʈ -->
<meta name="viewport" content="width=device-width" initial-scale="1">
<!-- ��Ÿ�Ͻ�Ʈ ����  -->
<link rel="stylesheet" href="css/bootstrap.min.css">

<title>jsp �Խ��� ������Ʈ</title>
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	
	<!-- ĳ���� ���� -->
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
			      <img src="img/��ĳ����11.png" class="d-block w-100" alt="...">
			      <div class="carousel-caption d-none d-md-block">
			        <h5>������ �´� ����?</h5>
			        <p>�索, ��������, �ص� �� ���� ���� �ʿ��� ���� ��⼼��</p>
		      </div>
			    </div>
			    <div class="carousel-item" data-bs-interval="2500">
			      <img src="img/��ĳ����2.png" class="d-block w-100" alt="...">
			      <div class="carousel-caption d-none d-md-block">
			        <h5>�ѱ��� �� ��ȭ</h5>
			        <p>�ﱹ�ô� ���ķ� ������ �����ؿ� �ѱ��� ������ ��췯�� �� ��ȭ</p>
		      </div>
			    </div>
			    <div class="carousel-item" data-bs-interval="2500">
			      <img src="img/��ĳ����3.png" class="d-block w-100" alt="...">
			      <div class="carousel-caption d-none d-md-block">
			        <h5>�Ʊ��ڱ��� Ƽ���� ��Ʈ</h5>
			        <p>���� ���Ƕ� ������� ���� ���� ���Ը���� �׿��� ��Ʈ</p>
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
	<!-- ĳ���� �� -->
	
	<div style="width:80%; margin:0% 20%; padding:3% 0%;">
        <h2 style="font: bold 22px/1; color:#555; margin-bottom: 5%; margin-left: 35%;">�̴��� ��</h2>
        <div class="theme" style="width:100%;">
            
            <div class="wrap" style="width:100%;">
                <article style="width:20%; float:left; margin:0% 1%;">
                    <div class="pic">
                        <a href="">
                            <img src="img/����.png" alt="1��° ������ �̹���">
                        </a>
                    </div>
                    <h2 style="margin-bottom: 10px;"><a href="Greentea.html" style="font: bold 16px; color:#555;">������</a></h2>
                    <p style="font:14px; color:#777;">ź�� ������ �����Ǿ� �־� ���� �����ϰ� ����� ����ƾ, ����, ȯ����� ������ �ص��ۿ�!!
                    </p>
                </article>

                <article style="width:20%; float:left; margin:0% 1%;">
                    <div class="pic">
                        <img src="img/û��.png" alt="2��° ������ �̹���">
                    </div>
                    <h2 style="margin-bottom: 10px;"><a href="Oolongtea.html" style="font: bold 16px; color:#555;">�����</a></h2>
                    <p style="font:14px; color:#777;">������� ������ �����ϰ� �־� ������ �׻�ȭ �ۿ�!!</p>
                </article>

                <article style="width:20%; float:left; margin:0% 1%;">
                    <div class="pic">
                        <img src="img/ȫ��.png" alt="3��° ������ �̹���">
                    </div>
                    <h2 style="margin-bottom: 10px;"><a href="blacktea.html" style="font: bold 16px; color:#555;">��׷���</a></h2>
                    <p style="font:14px; color:#777;">�ö󺸳��̵��� ������ ���� �Ǿ��־� �� �ص�, �� ��ȣ ���� ȿ��!!
                    </p>
                </article>

                <article style="width:20%; float:left; margin:0% 1%;">
                    <div class="pic">
                        <img src="img/����.png" alt="4��° ������ �̹���">
                    </div>
                    <h2 style="margin-bottom: 10px;"><a href="darktea.html" style="font: bold 16px; color:#555;">������</a></h2>
                    <p style="font:14px; color:#777;">�����̶�� ������ �����Ǿ� ���� ������ ���̴� ���� �����ϰ� ������縦 �����Ͽ� ���̾�Ʈ ȿ��!!
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
        <h2 style="font: bold 22px/1; color:#555; margin-bottom: 5%; margin-left:35%;">�� & �ǰ�</h2>
        <div class="theme" style="width:100%;">
            
            <div class="wrap" style="width:100%;">
                <article style="width:20%; float:left; margin:0% 1%;">
                    <div class="pic">
                        <a href="#">
                            <img src="img/���ǰ�����.png" alt="1��° ������ �̹���">
                        </a>
                    </div>
                    <h2 style="margin-bottom: 10px;"><a href="#" style="font: bold 16px; color:#555;">����</a></h2>
                    <p style="font:14px; color:#777;">������ �ñ��ϸ� Ŭ��
                    </p>
                </article>

                <article style="width:20%; float:left; margin:0% 1%;">
                    <div class="pic">
                        <img src="img/���ǰ�û��.png" alt="2��° ������ �̹���">
                    </div>
                    <h2 style="margin-bottom: 10px;"><a href="#" style="font: bold 16px; color:#555;">û��</a></h2>
                    <p style="font:14px; color:#777;">û���� �ñ��ϸ� Ŭ��</p>
                </article>

                <article style="width:20%; float:left; margin:0% 1%;">
                    <div class="pic">
                        <img src="img/���ǰ�ȫ��.png" alt="3��° ������ �̹���">
                    </div>
                    <h2 style="margin-bottom: 10px;"><a href="#" style="font: bold 16px; color:#555;">ȫ��</a></h2>
                    <p style="font:14px; color:#777;">ȫ���� �ñ��ϸ� Ŭ��
                    </p>
                </article>

                <article style="width:20%; float:left; margin:0% 1%;">
                    <div class="pic">
                        <img src="img/���ǰ�����.jpg" alt="4��° ������ �̹���">
                    </div>
                    <h2 style="margin-bottom: 10px;"><a href="#" style="font: bold 16px; color:#555;">����</a></h2>
                    <p style="font:14px; color:#777;">������ �ñ��ϸ� Ŭ��
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