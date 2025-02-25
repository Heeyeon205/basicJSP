<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

int rdNum = 0;
if(request.getParameter("com") == null){
  Random rd = new Random();
   rdNum = rd.nextInt(100)+1;
}else{
	rdNum = Integer.parseInt(request.getParameter("com"));
}

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게임 화면</title>
</head>
<body>

<p> 치트키 <%=rdNum %></p>
<form action="updownGameplayPro.jsp" method="post">
<input type="number" name="me" min="1" max="100" required />
<input type="hidden" name="com" value=<%=rdNum %> />
<button> 확인 </button>
</form>

</body>
</html>