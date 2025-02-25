
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 처리 </title>
</head>
<body>

<%

String name = request.getParameter("name");
String id = request.getParameter("id");
String pw = request.getParameter("pw");

// 세션 객체안에 배열 생성 
ArrayList<String> member = new ArrayList();
member.add(id);
member.add(pw);
member.add(name);

session.setAttribute("member", member );
//session.setMaxInactiveInterval(5);  // 기본값은 30분 

%>
<h5> <%=name %></h5>
<h5> <%=id %></h5>
<h5> <%=pw %></h5>

<a href="./login.jsp"> 로그인 하러가기 </a>
</body>
</html>
