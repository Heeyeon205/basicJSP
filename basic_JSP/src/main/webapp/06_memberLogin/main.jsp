<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="./header.jsp" %>  

<%
if(dao.getLog() == -1){
%>

<h1>로그아웃 상태</h1>

<%
}else{
	String userId = request.getParameter("logId");
	String logName = dao.getLoginName(userId);
%>

<h1> <%= logName %> 님 로그인</h1>

<%
}
%>


<%@ include file="./footer.jsp" %>  