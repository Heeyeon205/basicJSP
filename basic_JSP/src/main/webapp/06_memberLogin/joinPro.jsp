<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="./common.jsp" %>
<script src="./common.js"></script> 

<%
String id = request.getParameter("userId");
String pw = request.getParameter("userPw");
String name = request.getParameter("userName");
String gender = request.getParameter("userGender");

if(dao.isDupId(id)){
%>	

<script>
	goBack("중복된 ID는 사용할 수 없습니다.");
</script>  

<%
}else{
	dao.addMember(id, pw, name, gender);
%>	

<script>
	msgGoMain("회원가입 성공!");
</script>  

<%
}
%>
    