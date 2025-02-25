<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 int me = 0;
 int com = 0;
 if(request.getParameter("me")!= null ){
	 me = Integer.parseInt(request.getParameter("me"));
	 com = Integer.parseInt(request.getParameter("com"));
 }
 String msg ="";
 boolean pass = false;
 
 if(me == com){
	 msg="BINGO";
	 pass = true;
 }else if(me > com){
	 msg="DOWN";
 }else{
	 msg="UP";
 }
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게임 확인 페이지 </title>
</head>
<body>

<h1> <%= msg %> </h1>
<% if(pass){ %>
<a href="./index.jsp"> 처음으로 </a>
<%}else{ %>
	<a href="./updownGameplay.jsp?com=<%=com%>"> get방식 뒤로가기 </a>
	<button id="btn"> get방식 자바스크립트 </button>
	
	<form action="./updownGameplay.jsp" method="post">
	<input type="hidden" name="com" value=<%=com %> />
		<button> post 방식으로 뒤로가기 </button>
	</form>
	
	
<%} %>
</body>
</html>
<script>

document.querySelector("#btn").addEventListener("click",()=>{
	location.href="./updownGameplay.jsp?com=<%=com%>";
} );

</script>