<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 세션 삭제하는 두가지 방법
// session.removeAttribute("member");

// 현재 세션 객체안에 있는 모든 속성값 삭제 
session.invalidate();
%>

<script>
alert('로그아웃 성공');
location.href='index.jsp';
</script>