<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%@ include file="common.jsp"%>
<script src="common.js"></script>

<%
String writer = request.getParameter("writer");
String title = request.getParameter("title");
String body = request.getParameter("body");
dao.addPost(writer, title, body);
%>

<script>
	msgGoMain('게시글 추가 완료');
</script>
    