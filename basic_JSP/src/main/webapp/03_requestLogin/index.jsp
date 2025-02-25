<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈화면</title>
</head>
<body>
<%

String name = request.getParameter("name");
String id = request.getParameter("id");
String pw = request.getParameter("pw");

String[] member = (String[])request.getAttribute("member");
%>

<div align="center" >
<h1>홈화면</h1>
<% if(member == null){ %>
<a href="./join.jsp"> 회원가입</a>
<a href="./login.jsp"> 로그인</a>
<%} else{ %>
  <h5> <%=member[0] %></h5>
<h5> <%=member[1] %></h5>
<h5> <%=member[2] %></h5>
<%} %>
</div>
</body>
</html>