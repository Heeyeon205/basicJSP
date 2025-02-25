<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
// 항상 최초로 먼저 실행하는 페이지 index.jsp
if(session.getAttribute("dao" )== null){
	session.setAttribute("dao", new MemberDAO());
}
System.out.println("index.jsp");
response.sendRedirect("./main.jsp");
%>
