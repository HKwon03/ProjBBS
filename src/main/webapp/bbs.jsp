<%@ page import="javax.security.auth.callback.ConfirmationCallback"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="bbs.BbsDAO"%>
<%@ page import="bbs.Bbs"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 뷰포트 -->
<meta name="viewport" content="width=device-width" initial-scale="1">
<!-- 스타일시트 참조 -->
<link rel="stylesheet" href="css/bootstrap.css">
<title>jsp 게시판 웹사이트</title>
<style type="text/css">
a, a:hover {
	color: #000000;
	text-decoration: none;
}
</style>
</head>
<body>
	<%
		//로그인 한사람이면 userID라는 변수에 해당 아이디가 담기고 그렇지 않으면 null값
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
		int pageNumber = 1; //기본 페이지 넘버

		//페이지 넘버값이 있을때
		if (request.getParameter("pageNumber") != null) {
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
		}
	%>
	
	<jsp:include page="header.jsp"></jsp:include>
	
	<!-- 게시판 -->
	<div class="container">
		<div class="row">
			<table class="table table-striped"
				style="text-align: center; border: 1ps solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #E6E6FA; text-align: center;">번호</th>
						<th style="background-color: #E6E6FA; text-align: center;">제목</th>
						<th style="background-color: #E6E6FA; text-align: center;">작성자</th>
						<th style="background-color: #E6E6FA; text-align: center;">작성일</th>
					</tr>
				</thead>
				<tbody>
					<%
						BbsDAO bbsDAO = new BbsDAO();
						
						ArrayList<Bbs> list = bbsDAO.getList(pageNumber);
						for (int i = 0; i < list.size(); i++) {
					%>
					<tr>
						<td><%=list.get(i).getBbsID()%></td>
						<td><a href="view.jsp?bbsID=<%=list.get(i).getBbsID()%>">
						<%=list.get(i).getBbsTitle()%></a></td>
						<td><%=list.get(i).getUserID()%></td>
						<td><%=list.get(i).getBbsDate() %></td>
						</tr>
					<%
						}
					%>
				</tbody>
			</table>
			
			<!-- 페이지 넘기기 -->
			<div class="d-grid gap-2 d-md-block">
			<%
				if (pageNumber != 1) {
			%>
			<a href="bbs.jsp?pageNumber=<%=pageNumber - 1%>"
				class="btn btn-outline-success btn-lg btn-arrow-left">이전</a>
			<%
				}
				if (bbsDAO.nextPage(pageNumber)) {
			%>
			<a href="bbs.jsp?pageNumber=<%=pageNumber + 1%>"
				class="btn btn-outline-success btn-lg btn-arrow-left">다음</a>
			<%
				}
			%>
			<!-- 회원만 넘어가도록 -->
			<%
				//if logined userID라는 변수에 해당 아이다가 담기고 if not null
				if (session.getAttribute("userID") != null) {
			%>
			<a href="write.jsp" class="btn btn-outline-primary btn-lg pull-right">글쓰기</a>
			<%
				} else {
			%>
			<button class="btn btn-outline-primary btn-lg pull-right"
				onclick="if(confirm('로그인 하세요'))location.href='login.jsp';"
				type="button">글쓰기</button>
			<%
				}
			%>
			</div>
		</div>
	</div>
	<!--  애니매이션 담당 JQUERY -->
	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<!--  부트스트랩 JS -->
	<script src="js/bootstrap.js"></script>
	
	<br>
	<br>
	<br>
	<br>
	<br>
	
	<jsp:include page="footer.jsp"></jsp:include>
	
</body>
</html>