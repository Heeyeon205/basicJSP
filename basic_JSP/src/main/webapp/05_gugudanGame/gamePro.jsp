<%@page import="gugudan.GugudanDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script>
	function msgGoUrl(url, msg) {
		alert(msg);
		location.href = url;
	}
</script>

<%
GugudanDAO dao = (GugudanDAO) session.getAttribute("dao");
int userAnswer = Integer.parseInt(request.getParameter("answer"));
dao.getUserAnswer(userAnswer);
dao.nextQuiz();
if (dao.checkAnswer()) {
%>
<script>
	msgGoUrl('./game.jsp', "정답입니다!");
</script>
<%
} else {
%>
<script>
	msgGoUrl('./game.jsp', "오답입니다ㅜ");
</script>
<%
}
%>