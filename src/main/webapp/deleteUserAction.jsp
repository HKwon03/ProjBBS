<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="user.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>
<%
    request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jsp �Խ��� ������Ʈ</title>
</head>
<body>
  <%	
        String userID = null;
        if (session.getAttribute("userID") != null) {//�������̵��̸����� ������ �����ϴ� ȸ������ 
            userID = (String) session.getAttribute("userID");//�������̵� �ش� ���ǰ��� �־��ش�.
        }
       	
        
            UserDAO userDAO = new UserDAO();
            int result = userDAO.deleteUser(userID);
            if (result == -1) {
                PrintWriter script = response.getWriter();
                script.println("<script>");
                script.println("alert('ȸ��Ż�� �����߽��ϴ�')");
                script.println("history.back()");
                script.println("</script>");
            } else {
                PrintWriter script = response.getWriter();
                script.println("<script>");
                script.println("alert('ȸ��Ż�� �����߽��ϴ�')");
                script.println("location.href='logoutAction.jsp'");
                script.println("</script>");
            }
    %>
</body>
</html>