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
<title>jsp 게시판 웹사이트</title>
</head>
<body>
  <%	
        String userID = null;
        if (session.getAttribute("userID") != null) {//유저아이디이름으로 세션이 존재하는 회원들은 
            userID = (String) session.getAttribute("userID");//유저아이디에 해당 세션값을 넣어준다.
        }
       	
        
            UserDAO userDAO = new UserDAO();
            int result = userDAO.deleteUser(userID);
            if (result == -1) {
                PrintWriter script = response.getWriter();
                script.println("<script>");
                script.println("alert('회원탈퇴에 실패했습니다')");
                script.println("history.back()");
                script.println("</script>");
            } else {
                PrintWriter script = response.getWriter();
                script.println("<script>");
                script.println("alert('회원탈퇴에 성공했습니다')");
                script.println("location.href='logoutAction.jsp'");
                script.println("</script>");
            }
    %>
</body>
</html>