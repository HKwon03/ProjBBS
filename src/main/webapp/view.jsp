<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.sql.Timestamp" %>
<%@ page import="bbs.Bbs"%>
<%@ page import="bbs.BbsDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 뷰포트 -->
<meta name="viewport" content="width=device-width" initial-scale="1">
<!-- 스타일시트 참조  -->
<link rel="stylesheet" href="css/bootstrap.css">
<title>jsp 게시판 웹사이트</title>
</head>
<body>
	<%
		//로긴한 사람이라면 userID라는 변수에 해당 아이디가 담기고 그렇지 않으면 null값
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
		int bbsID = 0;
		if (request.getParameter("bbsID") != null) {
			bbsID = Integer.parseInt(request.getParameter("bbsID"));
		}
		if (bbsID == 0) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않은 글 입니다.')");
			script.println("location.href = 'bbs.jsp'");
			script.println("</script>");
		}
		Bbs bbs = new BbsDAO().getBbs(bbsID);
	%>

	<jsp:include page="header.jsp"></jsp:include>
	
	<!-- 게시판 -->
	<div class="container">
		<div class="row">
			<table class="table table-strped"
				style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="3"
							style="background-color: #eeeeee; text-align: center;">글 보기</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width: 20%; background-color: #eeeeee;">글 제목</td>
						<td colspan="2"><%=bbs.getBbsTitle()%></td>
					</tr>
					<tr>
						<td style="width: 20%; background-color: #eeeeee;">작성자</td>
						<td colspan="2"><%=bbs.getUserID()%></td>
					</tr>
					<tr>
						<td style="width: 20%; background-color: #eeeeee;">작성일</td>
						<td colspan="2"><%=bbs.getBbsDate()%></td>
					</tr>
					<tr>
						<td style="width: 20%; background-color: #eeeeee;">내용</td>
						<td colspan="2" style="min-height: 200px; text-align: left;"><%=bbs.getBbsContent()%></td>
					</tr>
<!-- .replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;")
					.replaceAll("\n", "<br/>") -->
				</tbody>
			</table>
			
			<br>
			<br>
			<div class="d-grid gap-2 d-md-block">
			
				<a href="bbs.jsp" class="btn btn-outline-primary btn-lg">목록</a>
				<%
					//글작성자 본인일시 수정 삭제 가능
					if (userID != null && userID.equals(bbs.getUserID())) {
				%>
				
				
				<a href="update.jsp?bbsID=<%=bbsID%>" class="btn btn-outline-primary btn-lg">수정</a>
				
				
				<a onclick="return confirm('정말로 삭제하시겠습니까?')" href="deleteAction.jsp?bbsID=<%= bbsID %>" class="btn btn-outline-primary btn-lg">삭제</a>
				<%
					}
				%>
			</div>
		</div>
	</div>
	<!-- 애니매이션 담당 JQUERY -->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<!-- 부트스트랩 JS  -->
	<script src="js/bootstrap.js"></script>
	
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