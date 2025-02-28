<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="common.jsp"%>
<script src="common.js"></script>

<%
int idx = Integer.parseInt(request.getParameter("deleteIdx"));
dao.deletePost(idx);
%>

<script>
	msgGoMain('해당 게시글 삭제 완료');
</script>
