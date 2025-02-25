<%@page import="gugudan.GugudanVO"%>
<%@page import="gugudan.GugudanDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
GugudanDAO dao = (GugudanDAO) session.getAttribute("dao");
int cnt = dao.getCnt();
int score = dao.getScore();
%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<%
	if (dao.getCnt() == 5) {
	%>
	<form action="./index.jsp" method="post">
		<h2>
			게임 종료! 당신의 점수는<%=dao.getScore()%>점
		</h2>
		<button onclick="location.href='./index.jsp'">홈으로</button>
	</form>
	<%
	session.invalidate();
	} else {
	int num1 = dao.getQuiz().get(cnt).getNum1();
	int num2 = dao.getQuiz().get(cnt).getNum2();
	%>
	<form action="./gamePro.jsp" method="post">
		<h1>구구단 게임</h1>
		<h3>
			<%=cnt + 1%>번째 문제 (현재 점수:<%=score%>)
		</h3>
		<span> <%=num1%> X <%=num2%></span> <input type="number"name="answer" id="answer" required>
		<button>전송</button>
		<%
}
%>

	</form>
</body>

</html>