<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 처리 페이지</title>
</head>
<body>

<script>

function msgGoUrl(url,msg, id, pw, name){
	alert(msg);
	location.href=url+"?id="+id+"&pw="+pw+"&name="+name;
}


</script>

<%

String name = request.getParameter("name");
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String inputId = request.getParameter("inputId");
String inputPw = request.getParameter("inputPw");

String[] member = {id, pw, name};
request.setAttribute("member", member); 

boolean pass = id.equals(inputId) && pw.equals(inputPw);
%>
<h5> <%=name %></h5>
<h5> <%=id %></h5>
<h5> <%=pw %></h5>


<%
if(pass){
	// 자바에서 페이지이동
   RequestDispatcher dis = request.getRequestDispatcher("./index.jsp");
   dis.forward(request, response);
	
%>
<script> 
  msgGoUrl('./index.jsp', '로그인 성공' , '<%=id%>' , '<%=pw%>', '<%=name%>' );
</script>

<%}else{ 
	// 자바로 페이지 이동 2가지 방법 
	
	// response.sendRedirect("login.jsp"); // 새로운 req , res 객체를 만든다 
	
	// 두번째 방법 기존 req,res 가지고간다 
	   RequestDispatcher dis = request.getRequestDispatcher("./login.jsp");
	   dis.forward(request, response);
%>
<script> 
   msgGoUrl('./login.jsp', '로그인 실패' , <%=id%> , <%=pw%>, <%=name%> );
</script>

<%} %>

</body>
</html>