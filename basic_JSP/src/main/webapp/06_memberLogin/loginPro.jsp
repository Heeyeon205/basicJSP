<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="./common.jsp" %>
<script src="./common.js"></script> 

<%
String id = request.getParameter("logId");
String pw = request.getParameter("logPw");

if(dao.checkLogin(id, pw)){
	dao.memberLogin(id);
%>	

<script>
	msgGoMain("로그인 성공!");
</script>  

<%
}else{
%>	

<script>
	goBack("ID 또는 PW를 확인해주세요!");
</script>  

<%
}
%>
    