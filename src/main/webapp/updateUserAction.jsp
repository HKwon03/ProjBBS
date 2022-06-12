<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "user.UserDAO" %>
<%@ page import = "user.User" %>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%  
  User user = new User();
  UserDAO manager = new UserDAO();
  //회원정보 수정 처리 메소드 호출 후 수정 상황값 반환
  int check = manager.updateUser(user);
 %>
</body>
</html>