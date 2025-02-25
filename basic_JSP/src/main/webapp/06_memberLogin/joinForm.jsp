<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="./header.jsp"%>

<h1>회원가입 페이지</h1>
<table>
	<form action="./joinPro.jsp" method="post">
	<tr>
		<td>
		회원가입 ID: 
		<input type="text" name="userId" id="userId" required>
		</td>
	</tr>
	<tr>
		<td>
		회원가입 PW: 
		<input type="text" name="userPw" id="userPw" required>
		</td>
	</tr>
	<tr>
		<td>
		회원가입 Name:
		<input type="text" name="userName" id="userName" required>
		</td>
	</tr>
	<tr>
		<td>
		회원가입 성별:
		남성 <input type="radio" name="userGender" id="userGender" value="남성" required>
		여성 <input type="radio" name="userGender" id="userGender" value="여성" required>
		</td>
	</tr>
	<tr>
		<td>
		<button> 회원가입 </button>
		</td>
	</tr>
	</form>
</table>

<%@ include file="./footer.jsp"%>
