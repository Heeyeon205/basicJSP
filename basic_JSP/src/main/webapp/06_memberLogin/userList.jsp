<%@page import="member.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="./header.jsp"%>

<table>
	<h1>전체 회원 목록</h1>
	<tr>
		<td>아이디</td>
		<td>패스워드</td>
		<td>이름</td>
		<td>성별</td>
		<td>삭제</td>
	</tr>

	<%
	for (int i = 1; i < dao.getListSize(); i++) {
		Member m = dao.getOneMember(i);
		String gender = m.isGender() ? "남성" : "여성";
	%>
	<tr>
		<td><%=m.getId()%></td>
		<td><%=m.getPw()%></td>
		<td><%=m.getName()%></td>
		<td><%=gender%></td>
		<td>
			<form action="./deleteForm.jsp" method="post">
			<input type="hidden" name="deleteIdx" value="<%= i %>">
			   <% if (dao.checkAdmin()) { %>
				<button>삭제</button>
				 <%}else{%>
				  <button type="button" onclick="alert('관리자만 삭제할 수 있습니다.')">삭제</button>
				 <%}%>
			</form>
		</td>
	</tr>

	<%
}
%>
</table>
