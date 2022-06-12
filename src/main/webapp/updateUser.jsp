<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ page import="user.User"%>
<%@ page import="user.UserDAO"%>

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

	<%
	String userId = (String)session.getAttribute("userID");
	String userPassword = request.getParameter("userPassword");
	
	UserDAO manager = new UserDAO();
	User m = manager.getUser(userId, userPassword);
	
	try {
	%>

	<jsp:include page="header.jsp"></jsp:include>
	
	<!-- 로그인 폼 -->
		<div class = "logform" style="margin-left: 30%; max-width: 800px; padding: 5px;" align="center">
		<div class = "container-fluid row justify-content-center align-items-center">
			<form class="validation-form" novalidate method="post" action="joinAction.jsp">
					<div class="col-md-7">
			    		<label for="name">아이디</label>
			        		<input type="text" class="form-control" name="userID" placeholder="아이디" value="<%=userId %>" required>
			            		<div class="invalid-feedback">
			                	아이디를 입력해주세요.
			              		</div>
			    	</div>
					<div class="col-md-7">
			    		<label for="password">비밀번호</label>
			        		<input type="password" class="form-control" name="userPassword" placeholder="변경할 비밀번호를 입력해주세요" value="" required>
			            		<div class="invalid-feedback">
			              		비밀번호를 입력해주세요.
			            		</div>
					</div>	
				 	<div class="col-md-7">
			     		<label for="nickname">이름</label>
			        		<input type="text" class="form-control" name="userName" placeholder="변경할 이름을 입력해주세요." value="" required>
			            		<div class="invalid-feedback">
			                	이름을 입력해주세요.
			              		</div>
			     	</div>
			     	<br>
					<div class="form-group" >
						<div class="btn-group" data-toggle="buttons">
							<label class="btn btn-primary active"> <input
								type="radio" name="userGender" autocomplete="off" value="남자"
								checked>남자
							</label> <label class="btn btn-primary"> <input type="radio"
							name="userGender" autocomplete="off" value="여자">여자
							</label>
						</div>
					</div>
				
					<br>
					<div class="col-md-7">
						<label for="email">이메일</label>
				    		<input type="email" class="form-control" name="userEmail" placeholder="you@example.com" value="" required>
				        		<div class="invalid-feedback">
				              	이메일을 입력해주세요.
				           		</div>
					</div>
			         
			
	        <br>
	         <hr class="mb-4">
	         <div class="custom-control custom-checkbox">
	           <input type="checkbox" class="custom-control-input" id="aggrement" required>
	           <label class="custom-control-label" for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
	         </div>
	         <div class="mb-4"></div>
	         <button class="btn btn-primary btn-lg btn-block" type="submit">수정 완료</button>
	       </form>
	       
	       
		</div>
		</div>
	<%}catch(Exception e){}%>
	<script>
    window.addEventListener('load', () => {
      const forms = document.getElementsByClassName('validation-form');

      Array.prototype.filter.call(forms, (form) => {
        form.addEventListener('submit', function (event) {
          if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
          }

          form.classList.add('was-validated');
        }, false);
      });
    }, false);
  	</script>
	<!-- 애니매이션 담당 JQUERY -->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	
	<br>
	<br>
	<br>
	<br>
	<br>
	
	<jsp:include page="footer.jsp"></jsp:include>
	
</body>
</html>