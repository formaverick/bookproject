<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>게시글 상세보기 | 교보문고</title>
<link href="css/reset.css" rel="stylesheet" />
<link rel="stylesheet" href="css/productFooter.css">
<style>
body {
	font-family: "Noto Sans KR", sans-serif;
	background-color: #f9f9f9;
	margin: 0;
	padding: 60px 20px;
	color: #333;
}

.viewContainer {
	width: 800px;
	height: auto;
	margin: 0 auto;
	background-color: #fff;
	padding: 30px;
	border-radius: 12px;
	box-shadow: 0 4px 16px rgba(0, 0, 0, 0.08);
	margin: 0 auto;
}

.logoBox {
  display: flex;
  justify-content: center;
  align-items: center;
  margin-bottom: 20px;
}

#logo2 {
	align-item: center; width : 150px;
	height: 56px;
	margin: 20px 20px;
	background-color: #fff;
	width: 150px;
}

h1 {
	font-size: 24px;
	text-align: center;
	margin-bottom: 30px;
	color: #303672;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-bottom: 30px;
}

th, td {
	padding: 12px 10px;
	font-size: 15px;
	border-bottom: 1px solid #eee;
	vertical-align: top;
}

th {
	width: 100px;
	background-color: #fafafa;
	text-align: left;
	font-weight: 600;
	color: #444;
}

.contentBox {
	min-height: 500px;
	padding: 16px;
	background-color: #fdfdfd;
	border: 1px solid #ddd;
	line-height: 1.8;
	white-space: pre-line;
	font-size: 15px;
	color: #333;
	border-radius: 6px;
}

.buttonGroup {
	display: flex;
	justify-content: center;
	gap: 12px;
}

.buttonGroup input {
	padding: 12px 20px;
	border-radius: 6px;
	border: 1px solid #ccc;
	font-size: 15px;
	font-weight: 600;
	background-color: #fff;
	cursor: pointer;
}

.buttonGroup input:hover {
	background-color: #f1f1f1;
}

.buttonGroup input:first-child {
	border-color: #5055b1;
	color: #474c98;
}

.buttonGroup input:first-child:hover {
	background-color: rgba(80, 85, 177, 0.1);
}
</style>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/script/board.js"></script>
</head>
<body>
	<div class="viewContainer">

		<div class="logoBox">
			<a href="index.jsp"><img src="img/icon/KBlogo.svg" id="logo2"></a>
		</div>
		
		<h1>게시글 상세보기</h1>

		<table>
			<tr>
				<th>작성자</th>
				<td>${board.username}</td>
				<th>이메일</th>
				<td>${board.email}</td>
			</tr>
			<tr>
				<th>작성일</th>
				<td><fmt:formatDate value="${board.writedate}" /></td>
				<th>조회수</th>
				<td>${board.readcount}</td>
			</tr>
			<tr>
				<th>제목</th>
				<td colspan="3">${board.title}</td>
			</tr>
			<tr>
				<th>내용</th>
				<td colspan="3">
					<div class="contentBox">${board.content}</div>
				</td>
			</tr>
		</table>

		<div class="buttonGroup">
			<input type="button" value="게시글 수정"
				onclick="open_win('BoardServlet?command=board_check_pass_form&num=${board.num}','update')" />
			<input type="button" value="게시글 삭제"
				onclick="open_win('BoardServlet?command=board_check_pass_form&num=${board.num}', 'delete')" />
			<input type="button" value="게시글 리스트"
				onclick="location.href='BoardServlet?command=board_list'" /> <input
				type="button" value="게시글 등록"
				onclick="location.href='BoardServlet?command=board_write_form'" />
		</div>
	</div>

	<footer>
		<div class="footerWrap">
			<div class="copyRight">© KYOBO BOOK CENTRE</div>
		</div>
	</footer>
</body>
</html>
