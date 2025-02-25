<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<script src="./common.js"> </script>    

<%
MemberDAO dao = null;
if(session.getAttribute("dao")==null){
	System.out.println("common.jsp");
	response.sendRedirect("./index.jsp");
	return;
}else{
	dao = (MemberDAO)session.getAttribute("dao");
}
%>