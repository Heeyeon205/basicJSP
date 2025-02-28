<%@page import="board.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="common.jsp"%>
<script src="common.js"></script>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>

<p> 전체 게시글 수 <%= dao.getSize() %>개 </p>

<table border>

	<tr>
		<td> 번호 </td>
		<td> 작성자 </td>
		<td> 작성일 </td>
		<td> 제목 </td>
		<td> 내용 </td>
		<td> 삭제 </td>
	</tr>
	
<%
// 1. 한 페이지에 보여줄 게시글 수
int postsPerPage = 5;    
// 2. 현재 페이지 번호
int currentPage = 1;  
// 3. 현재 페이지의 게시글 시작 번호
int startPostIndex = (currentPage - 1) * postsPerPage + 1;
// 4. 현재 페이지의 게시글 마침 번호
int endPostIndex = currentPage * postsPerPage;
if(endPostIndex > dao.getSize()){
	endPostIndex = dao.getSize();
}
// 5. 전체 게시글 수
int totalPosts = dao.getSize();
// 6. 한 페이지에 보여줄 페이지 번호 개수
int pagesPerBlock = 3;
// 7. 전체 페이지 수
int totalPages = (int) Math.ceil((double) totalPosts / postsPerPage);
if(totalPages % postsPerPage > 0){
	totalPages += 1;
}
// 8. 한 페이지에 보여줄 페이지 시작 번호
int startPageNumber = ((currentPage - 1) / pagesPerBlock) * pagesPerBlock + 1; 
// 8. 한 페이지에 보여줄 페이지 마침 번호
int endPageNumber = Math.min(startPageNumber + pagesPerBlock - 1, totalPages); 

int[] pages = new int[endPageNumber];
for(int i = startPageNumber; i <= endPageNumber; i++){
	pages[i] = i;
}

for(int i = startPostIndex; i < endPostIndex; i++){
	Board board = dao.getBoardElement(i);
%>	

	<tr>
		<td> <%= board.getNo() %> </td>
		<td> <%= board.getWriter() %> </td>
		<td> <%= board.getRegDate() %> </td>
		<td> <%= board.getSubject() %> </td>
		<td> <%= board.getContents() %> </td>
		<td>
		<form action="_05_deleteBoardPro.jsp" method="post">
		<input type="hidden" name="deleteIdx" id="deleteIdx" value="<%= i %>">
		<button> 삭제 </button> </td>
		</form>
		</td>
	</tr>

<%	
}
%>	
	
	<tr>
		<form action="_00_main.jsp" method="get">
			<td><button> 메인화면 </button></td>
			</form>
		</tr>

	<tr>
		<td> 
			<% if(currentPage != 1){ %>
			<button onclick="<%= currentPage-- %>"> 이전 </button> 
			<%}%>
			<button><%= pages[0] %></button> 
			<button><%= pages[1] %></button> 
			<button><%= pages[2] %></button> 
			<% if(currentPage != totalPages){ %>
			<button onclick="<%= currentPage++ %>"> 이후 </button>
			<%}%>
		</td>
	</tr>

</table>

</body>

</html>