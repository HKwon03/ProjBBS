<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</head>
<body>
	<header class="p-3 mb-3 border-bottom">
	  
	       	<%
		//로그인 한사람이면 userID라는 변수에 해당 아이디가 담기고 그렇지 않으면 null값
		
			String userID = null;
			if (session.getAttribute("userID") != null) {
				userID = (String) session.getAttribute("userID");
			}
		%>
	  
    <div class="container">
      <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
        <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-dark text-decoration-none">
          <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"/></svg>
        </a>

        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
          <li><a href="main.jsp" class="nav-link px-4"><img src="img/로고.png" alt=""></a></li>
          <li><a href="#" class="nav-link px-4 link-dark">녹차</a></li>
          <li><a href="#" class="nav-link px-4 link-dark">청차</a></li>
          <li><a href="#" class="nav-link px-4 link-dark">홍차</a></li>
          <li><a href="#" class="nav-link px-4 link-dark">흑차</a></li>
          <li><a href="bbs.jsp" class="nav-link px-4 link-dark">자유 게시판</a></li>
        </ul>



		<%
			//로그인 안된경우
			if (userID == null) {
		%>

        <div class="dropdown text-end" style="display: flex-row;">
          <a href="#" class="d-block link-dark text-decoration-none dropdown-toggle" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
          <img src="img/로그인전.png" alt="로그인 이미지"></a>
          <ul class="dropdown-menu text-small" aria-labelledby="dropdownUser1">
            <li><a class="dropdown-item" href="login.jsp">로그인</a></li>
			<li><a class="dropdown-item" href="join.jsp">회원가입</a></li>
          </ul>
        </div>
        
        <%
			//로그인 된경우
			} else {
		%>
     	<div class="dropdown text-end" style="display: flex-row;">
          <a href="#" class="d-block link-dark text-decoration-none dropdown-toggle" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
          <img src="img/로그인후.png" alt="로그인 이미지"> <%= userID %> 님 접속중  </a>
          <ul class="dropdown-menu text-small" aria-labelledby="dropdownUser1">
            <li><a class="dropdown-item" href="logoutAction.jsp">로그아웃</a></li>
            <li><a class="dropdown-item" href="updateUser.jsp">회원정보수정</a></li>
            <li><a class="dropdown-item" href="deleteUserAction.jsp" onclick="if(!confirm('탈퇴하시겠습니까?')){return false;}">회원탈퇴</a></li>
          </ul>
        </div>
        <%
			}
		%>
      </div>
    </div>
  </header>
	
</body>
</html>