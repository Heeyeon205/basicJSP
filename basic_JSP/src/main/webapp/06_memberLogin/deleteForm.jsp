<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="./header.jsp"%>

<% 
if(dao.checkAdmin()){
	String deleteIdx = request.getParameter("deleteIdx");
%>

<h1>회원 삭제</h1>
<table>
	<form action="./adminDeletePro.jsp" method="post">
	<tr>
		<td>
		PW:
		<input type="text" name="deletePw" id="deletePw" required>
		<input type="hidden" name="deleteIdx" value="<%= deleteIdx %>">
		</td>
	</tr>
	<tr>
		<td>
		<button> 회원 삭제 </button>
		</td>
	</tr>
	</form>
</table>

<% 
}else{
%>

<h1>회원 탈퇴</h1>
<table>
	<form action="./deletePro.jsp" method="post">
	<tr>
		<td>
		PW:
		<input type="text" name="deletePw" id="deletePw" required>
		</td>
	</tr>
	<tr>
		<td>
		<button> 회원 탈퇴 </button>
		</td>
	</tr>
	</form>
</table>

<% 
}
%>

<%@ include file="./footer.jsp"%>
