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
Random rd = new Random();
int com = rd.nextInt(100)+1;
%>
<form action="./upDownGameplay.jsp" method="post">
<h1>업다운 게임</h1>
<input type="hidden" id="comVal" name="comVal" value="<%=com+""%>">
<button type="submit">게임 시작</button>
</form>
</body>
</html>