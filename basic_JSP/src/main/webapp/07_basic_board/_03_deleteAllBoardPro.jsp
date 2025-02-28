<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="common.jsp"%>
<script src="common.js"></script>

<% dao.deleteAllPost(); %>
<script>
		msgGoMain('게시글 전체 삭제 완료');
</script>

