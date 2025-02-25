<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="./common.jsp" %>
<script src="./common.js"></script> 

<%
String pw = request.getParameter("deletePw");
if(dao.checkMemberToPw(pw)){
	dao.deleteMember(pw);
	dao.logInit();
%>	

<script>
		msgGoMain("회원 탈퇴 완료!");
</script>  

<%
}else{
%>	

<script>
	goBack("해당 계정의 PW를 확인해주세요!");
</script>  

<%
}
%>
    