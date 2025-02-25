<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="./header.jsp"%>

<h1>로그인 페이지</h1>
<table>
	<form action="./loginPro.jsp" method="post">
	<tr>
		<td>
		ID: 
		<input type="text" name="logId" id="logId" required>
		</td>
	</tr>
	<tr>
		<td>
		PW: 
		<input type="text" name="logPw" id="logPw" required>
		</td>
	</tr>
	<tr>
		<td>
		<button> 로그인 </button>
		</td>
	</tr>
	</form>
</table>

<%@ include file="./footer.jsp"%>
