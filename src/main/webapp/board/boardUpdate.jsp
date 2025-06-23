<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>게시글 수정 | 교보문고</title>
<link rel="stylesheet" href="css/reset.css">
<style>
body {
	font-family: "Noto Sans KR", sans-serif;
	background-color: #f9f9f9;
	margin: 0;
	padding: 0;
}

.boardWrap {
	max-width: 800px;
	margin: 80px auto;
	padding: 40px;
	background: #fff;
	border: 1px solid #ddd;
	border-radius: 10px;
	box-shadow: 0 5px 10px rgba(0, 0, 0, 0.03);
}

h1 {
	font-size: 24px;
	margin-bottom: 30px;
	color: #2d2d2d;
	text-align: center;
}

table {
	width: 100%;
	border-collapse: collapse;
}

th {
	text-align: left;
	width: 100px;
	padding: 12px 0;
	font-weight: 500;
}

td {
	padding: 12px 0;
}

input[type="text"], input[type="password"], textarea {
	width: 100%;
	padding: 10px 12px;
	border: 1px solid #ccc;
	border-radius: 6px;
	font-size: 14px;
	box-sizing: border-box;
}

textarea {
	resize: vertical;
	height: 200px;
	font-family: inherit;
}

.buttonGroup {
	display: flex;
	gap: 10px;
	margin-top: 30px;
	justify-content: center;
}

.buttonGroup input {
	padding: 12px 30px;
	font-size: 15px;
	font-weight: bold;
	border-radius: 6px;
	border: 1px solid transparent;
	cursor: pointer;
}

.submitBtn {
	background-color: #5055b1;
	color: #fff;
	border-color: #5055b1;
}

.submitBtn:hover {
	background-color: #3e439f;
}

.resetBtn {
	background-color: #f2f2f2;
	color: #333;
	border-color: #ccc;
}

.listBtn {
	background-color: #fff;
	color: #5055b1;
	border: 1px solid #5055b1 !important;
}

.listBtn:hover {
	background-color: rgba(80, 85, 177, 0.1);
}
</style>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/script/board.js"></script>
</head>
<body>
	<section class="boardWrap">
		<h1>게시글 수정</h1>
		<form name="frm" method="post" action="BoardServlet">
			<input type="hidden" name="command" value="board_update"> <input
				type="hidden" name="num" value="${board.num}">

			<table>
				<tr>
					<th>작성자</th>
					<td><input type="text" name="username"
						value="${board.username}" required></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="pass"
						placeholder="게시물 수정 삭제 시 필요합니다." required></td>
				</tr>
				<tr>
					<th>이메일</th>
					<td><input type="text" name="email" value="${board.email}"></td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" name="title" value="${board.title}"
						required></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea name="content" required>${board.content}</textarea></td>
				</tr>
			</table>

			<div class="buttonGroup">
				<input type="submit" value="수정" class="submitBtn"onclick="return boardCheck()">
				<input type="reset" value="다시 작성" class="resetBtn">
				<input type="button" value="목록" class="listBtn"
					onclick="location.href='BoardServlet?command=board_list'">
			</div>
		</form>
	</section>
</body>
</html>
