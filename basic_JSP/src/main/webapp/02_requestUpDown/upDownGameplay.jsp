<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
 int com = Integer.parseInt(request.getParameter("comVal")); 
%>
<form action="upDownGameplayPro.jsp" method="post">
<p>치트키: <%= com %></p>
<h1>업다운 게임</h1>
<input type="hidden" id="com" name="com" value="<%=com+""%>">
<input type="number" name="me" id="me" min="1" max="100">
<button type="submit">전송 </button>
</form>
</body>
</html>