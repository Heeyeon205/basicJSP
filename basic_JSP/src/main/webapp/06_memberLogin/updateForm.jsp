<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="./header.jsp"%>

<% String loginId = dao.getLoginId(); %>

<h1>회원 수정</h1>
<table>
	<form action="./updatePro.jsp" method="post">
	<tr>
		<td>
		ID: 
		<input type="text" name="checkId" id="checkId" value="<%= loginId %>" readonly required>
		</td>
	</tr>
	<tr>
		<td>
		PW: 
		<input type="text" name="checkPw" id=""checkPw"" required>
		</td>
	</tr>
	<tr>
		<td>
		Name:
		<input type="text" name="updateName" id="updateName" required>
		</td>
	</tr>
	<tr>
		<td>
		성별:
		남성 <input type="radio" name="updateGender" id="userGender" value="남성" required>
		여성 <input type="radio" name="updateGender" id="userGender" value="여성" required>
		</td>
	</tr>
	<tr>
		<td>
		<button> 정보 수정 </button>
		</td>
	</tr>
	</form>
</table>

<%@ include file="./footer.jsp"%>
