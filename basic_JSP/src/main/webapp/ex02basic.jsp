<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
    
    <% LocalDate today = LocalDate.now();
    out.println("<h2>" + today + "</h2>");
    String now = today.format(DateTimeFormatter.ofPattern("yyyy년 MM월 dd일"));
    %>
    
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
<!-- html 문서 주석. 페이지 소스에서 보인다 -->
<%-- 
	jsp 인식하는 자바 주석
	% 붙은 부분들은 다 후 처리 삭제 : 순수 html 태그만 남긴다. 

	jsp : 자바 서버 페이지. 웹 컨테이너가 jsp파일 처리한다.
	jsp : html 페이지 안에 jsp 태그를 사용할 수 있다.
	
	1. 지시자 derective 태그 : <%@ %>
	2
--%>
<h1>ex02basic.jsp</h1>
<h1>3 + 2 = <%= 3+2 %></h1>
<h3> 오늘 날짜는 <%= now %></h3>

<% 
int[] arr = {10,20,30,40,50}; 
%>

<p> 자바 배열 출력하기</p>

<% 
	for(int i = 0; i < arr.length; i++){
		out.println("<p>" + arr[i] + "</p>");
	}
%>
</body>

</html>