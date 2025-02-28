<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
BoardDAO dao = null;
if(session.getAttribute("dao") == null){
	response.sendRedirect("./index.jsp");
	return;
}else{
	dao = (BoardDAO) session.getAttribute("dao");
}
%>