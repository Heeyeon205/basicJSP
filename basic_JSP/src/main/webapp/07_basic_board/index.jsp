<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
if(session.getAttribute("dao") == null){
	session.setAttribute("dao", new BoardDAO());
};
response.sendRedirect("./_00_main.jsp");
%>