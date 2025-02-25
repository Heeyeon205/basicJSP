<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="./common.jsp" %>
<script src="./common.js"></script> 

<%
int deleteIdx = Integer.parseInt(request.getParameter("deleteIdx"));
String pw = request.getParameter("deletePw");
if(dao.checkAdminDeleteMember(deleteIdx, pw)){
	dao.adminDeleteMember(deleteIdx);
%>	

<script>
	msgGoMain("회원 삭제  완료!");
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
    