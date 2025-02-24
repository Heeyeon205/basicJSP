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
String msg = "";
int com = Integer.parseInt(request.getParameter("com")); 
int me = Integer.parseInt(request.getParameter("me")); 

if(com > me){
	msg = "UP";
}else if (com < me){
	msg = "DOWN";
}else{
	msg = "BINGO!";
} 
%>
<form action="./upDownGameplay.jsp" method="post">
<h1><%= msg %></h1>
<input type="hidden" id="comVal" name="comVal" value="<%=com+""%>">
<button type="submit">뒤로가기 </button>

</form>
</body>
</html>