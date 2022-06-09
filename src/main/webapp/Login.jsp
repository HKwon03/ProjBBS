<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
	<!-- �׺���̼�  -->
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expaned="false">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">JSP �Խ���</a>
		</div>
		<div class="collapse navbar-collapse"
			id="#bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="main.jsp">����</a></li>
				<li><a href="bbs.jsp">�Խ���</a></li>

			</ul>
			<ul class="nav navbar-nav navbar-right">

				<li class="dropdown">
				<a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">�����ϱ�<span class="caret"></span></a>

					<ul class="dropdown-menu">
						<li class="active"><a href="login.jsp">�α���</a></li>
						<li><a href="join.jsp">ȸ������</a></li>
					</ul></li>
			</ul>
		</div>
	</nav>
	<!-- �α��� -->
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<!-- ����Ʈ�� -->
			<div class="jumbotron" style="padding-top: 20px;">
				<!-- �α��� ������ ����鼭 ����post -->
				<form method="post" action="loginAction.jsp">
					<h3 style="text-align: center;">�α���ȭ��</h3>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="���̵�"
							name="userID" maxlength="20">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="��й�ȣ"
							name="userPassword" maxlength="20">
					</div>
					<input type="submit" class="btn btn-primary form-control"
						value="�α���">
				</form>
			</div>
		</div>
	</div>
	<!-- �ִϸ��̼� ��� JQUERY -->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<!-- ��Ʈ��Ʈ�� JS  -->
	<script src="js/bootstrap.js"></script>

</body>

</html>