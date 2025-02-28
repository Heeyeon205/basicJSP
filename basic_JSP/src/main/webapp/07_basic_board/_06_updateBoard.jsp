<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="common.jsp"%>
<script src="common.js"></script>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
<%
int idx = Integer.parseInt(request.getParameter("updateIdx"));
String[] postInfo = dao.getBoardInfoToIdx(idx);
%>
	<h1>게시글 수정하기</h1>
	
	<table border>
		<form action="_06_updateBoardPro.jsp" method="post">
		<tr>
			<td>번호</td>
			<td><input type="text" name="no" id="no" value="<%= postInfo[0] %>" readonly required> </td>
		</tr>
		<tr>
			<td>작성자</td>
			<td><input type="text" name="writer" id="writer" value="<%= postInfo[1] %>" readonly required> </td>
			<td>작성일</td>
			<td><input type="text" name="date" id="date" value="<%= postInfo[2] %>" readonly required> </td>
		</tr>
		<tr>
			<td>제목</td>
			<td> <input type="text" name="title" id="title" required>  </td>
		</tr>
		<tr>
			<td>내용</td>
			<td> <textarea name="body" id="body" required></textarea></td>
		</tr>
		<tr>
			<td> <button> 수정하기 </button></td>
		</tr>
		</form>
	</table>

</body>

</html>