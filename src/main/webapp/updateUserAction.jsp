<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "user.UserDAO" %>
<%@ page import = "user.User" %>
<%@ page import="java.io.PrintWriter"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<% 
	String userID = null;
	if (session.getAttribute("userID") != null) {//�������̵� �̸����� ������ �����ϴ� ȸ������
		userID = (String) session.getAttribute("userID");//�������̵� �ش� ���ǰ��� �־��ش�
	
	}
	if (userID == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('�α��� �ϼ���.')");
		script.println("location.href = 'login.jsp'");
		script.println("</script>");
	}
	
	UserDAO userDAO = new UserDAO();
	int result = userDAO.updateUser(userID, request.getParameter("userName"),
			request.getParameter("userGender"), 
			request.getParameter("userEmail"));
	if (result == -1) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('ȸ������������ �����߽��ϴ�')");
		script.println("history.back()");
		script.println("</script>");
	} else {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('ȸ������������ �����߽��ϴ�')");
		script.println("location.href='main.jsp'");
		script.println("</script>");
	}
  
  
 %>
</body>
</html>