<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 | 교보문고</title>
<link rel="stylesheet" href="css/shopping.css">
<link rel="stylesheet" href="css/productFooter.css">
</head>
<body>
	<div id="wrap" align="center" class="board-container">
		<div class="logoBox">
			<a href="index.jsp"><img src="img/icon/KBlogo.svg" id="logo2"></a>
		</div>
		<h1 class="board-title">게시글 리스트</h1>

		<table class="board-table">
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회</th>
			</tr>
			<c:forEach var="board" items="${boardList}">
				<tr class="record">
					<td>${board.num}</td>
					<td><a href="BoardServlet?command=board_view&num=${board.num}">${board.title}</a></td>
					<td>${board.username}</td>
					<td><fmt:formatDate value="${board.writedate }" /></td>
					<td>${board.readcount}</td>
				</tr>
			</c:forEach>
		</table>
		<div class="board-btn-wrap">
			<a href="BoardServlet?command=board_write_form" class="btnWrite">게시글
				등록</a>
		</div>
	</div>
	
	<footer>
        <div class="footerWrap">
            <div class="copyRight">© KYOBO BOOK CENTRE</div>
        </div>
    </footer>
</body>
</html>