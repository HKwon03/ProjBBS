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

	<jsp:include page="header.jsp"></jsp:include>

	<!-- �α����� -->
	<div class="container" align = "center">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<!-- ����Ʈ�� -->
			<div class="jumbotron" style="padding-top: 20px;">
				<!-- �α��� ������ ����鼭 ����post -->
				<form method="post" action="loginAction.jsp">
					<h3 style="text-align: center;">�α���</h3>
					<br>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="���̵�"
							name="userID" maxlength="20">
					</div>
					<br>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="��й�ȣ"
							name="userPassword" maxlength="20">
					</div>
					<br>
					
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