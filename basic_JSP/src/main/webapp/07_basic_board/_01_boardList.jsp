<%@page import="board.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="common.jsp" %>
<script src="common.js"></script>     
    
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>

<p> 전체 게시글 수 <%= dao.getSize() %>개 </p>
<table border>
	<tr>
		<td> 번호 </td>
		<td> 작성자 </td>
		<td> 작성일 </td>
		<td> 제목 </td>
		<td> 내용 </td>
		<td> 삭제 </td>
	</tr>

<%
for(int i = 0; i < dao.getSize(); i++){
	Board board = dao.getBoardElement(i);
%>

	<tr>
		<td> <%= board.getNo() %> </td>
		<td> <%= board.getWriter() %> </td>
		<td> <%= board.getRegDate() %> </td>
		<td> 
		<form action="_06_updateBoard.jsp" method="post">
		<input type="hidden" name="updateIdx" id="updateIdx" value="<%= i %>">
		<button type="submit"> <%= board.getSubject() %> </button>
		</form>
		</td>
		<td> <%= board.getContents() %> </td>
		<form action="_05_deleteBoardPro.jsp" method="post">
		<input type="hidden" name="deleteIdx" id="deleteIdx" value="<%= i %>">
		<td> <button> 삭제 </button> </td>
		</form>
	</tr>
		<%
}
%>
		<tr>
		<form action="_00_main.jsp" method="get">
			<td><button>메인화면</button></td>
			</form>
		</tr>
</table>

</body>

</html>