<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="./common.jsp" %>
<script src="./common.js"></script> 

<%
String id = request.getParameter("checkId");
String pw = request.getParameter("checkPw");
String name = request.getParameter("updateName");
String gender = request.getParameter("updateGender");

if(dao.checkLogin(id, pw)){
	dao.updateMember(name, gender);
	
%>	

<script>
		msgGoMain("정보 수정 완료!");
</script>  

<%
}else{
	dao.addMember(id, pw, name, gender);
%>	

<script>
	goBack("ID 또는 PW를 확인해주세요!");
</script>  

<%
}
%>
    