<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ include file="common.jsp"%>
<script src="common.js"></script>

<%
int no = Integer.parseInt(request.getParameter("no"));
String title = request.getParameter("title");
String body = request.getParameter("body");
int idx = dao.findUpdateIdx(no);
dao.updatePost(idx, title, body);
%>

<script>
	msgGoMain('게시글 수정 완료!');
</script>