<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
 	ArrayList<String> member = null;
 if(session.getAttribute("member")!= null){
   member = (ArrayList<String>)session.getAttribute("member");
 }else{
	 response.sendRedirect("./index.jsp");
	 return;
 }
 
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 처리 페이지</title>
</head>
<body>

<script>

function msgGoUrl(url,msg){
	alert(msg);
	location.href=url;
}


</script>

<%
String inputId = request.getParameter("inputId");
String inputPw = request.getParameter("inputPw");
boolean pass = member.get(0).equals(inputId) && member.get(1).equals(inputPw);
%>
<h5> <%=member.get(0) %></h5>
<h5> <%=member.get(1) %></h5>
<h5> <%=member.get(2) %></h5>

<%
if(pass){

%>
<script> 
  msgGoUrl('./index.jsp', '로그인 성공' );
</script>

<%}else{ 
%>
<script> 
   msgGoUrl('./login.jsp', '로그인 실패' );
</script>

<%} %>

</body>
</html>