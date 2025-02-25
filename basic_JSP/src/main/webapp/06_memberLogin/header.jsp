
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- common.jsp 에 있는 코드를 복붙한거랑 동일하다
상위 jsp 파일내의 변수를 하위 jsp 에서도 사용가능 
여기서는 dao 변수 사용가능
 --%>
<%@ include file="./common.jsp" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> JSP 로그인 실습</title>
<style>
  body{
  height: 100vh;
  box-sizing: border-box;
  }
  header,footer{
  	height: 10%;
  }
   main{
   	height: 70%;
   	background-color: #eee; 
   }
</style> 
</head>
<body>
<header align="center">
<div class="gnb">

<a href="./main.jsp">홈</a>
<% 
if(dao.getLog() == -1){
%>
<a href="./joinForm.jsp">회원가입</a>
<a href="./loginForm.jsp">로그인</a>
<%
}else{
%>
<a href="./logoutPro.jsp">로그아웃</a>
<a href="./updateForm.jsp">회원정보수정</a>
<a href="./deleteForm.jsp">회원탈퇴</a>
<%
}
%>
<a href="./userList.jsp">전체회원보기</a>



</div>

</header>
<hr>
<main>
