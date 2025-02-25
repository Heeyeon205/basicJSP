<%@page import="java.util.ArrayList"%>
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
 	ArrayList<String> member = null;
 if(session.getAttribute("member")!= null){
   member = (ArrayList<String>)session.getAttribute("member");
 }
 
 %>

<div align="center" >
<h1>홈화면</h1>
<% if(member == null){ %>
<a href="./join.jsp"> 회원가입</a>
<a href="./login.jsp"> 로그인</a>
<%} else{ 
%>

<a href="./logout.jsp">로그아웃</a>
  <h5> <%=member.get(0) %></h5>
<h5> <%=member.get(1) %></h5>
<h5> <%=member.get(2) %></h5>
<%} %>
</div>
</body>
</html>