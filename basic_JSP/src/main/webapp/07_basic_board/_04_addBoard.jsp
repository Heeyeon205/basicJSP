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

<%
int no = dao.getNextNo();
%>

<body>

<h1>게시글 추가</h1>

<table border>	
	<form action="_04_addBoardPro.jsp" method="post">
	<tr>
		<td> 번호 </td>
		<td> <input type="text" name="no" id="no" value="<%= no %>" readonly> </td>
	</tr>
	<tr>
		<td> 작성자 </td>
		<td> <input type="text" name="writer" id="writer" value="test" readonly> </td>
	</tr>
	<tr>
		<td> 제목 </td>
		<td> <input type="text" name="title" id="title" required> </td>
	</tr>
	<tr>
		<td> 내용 </td>
		<td> <textarea name="body" id="body" required> </textarea> </td>
	</tr>
	<tr>
		<td> <button> 작성 완료 </button> </td>
	</tr>
	</form>
</table>


</body>

</html>