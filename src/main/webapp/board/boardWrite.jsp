<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>게시글 등록 | 교보문고</title>
<link href="css/reset.css" rel="stylesheet" />
<link rel="stylesheet" href="css/productFooter.css">
<style>
body {
	font-family: "Noto Sans KR", sans-serif;
	margin: 0;
	padding: 40px 20px;
	background-color: #f9f9f9;
	color: #333;
}

.formContainer {
	width: 700px;
	margin: 0 auto;
	background: #fff;
	padding: 40px;
	border-radius: 12px;
	box-shadow: 0 4px 16px rgba(0, 0, 0, 0.08);
}

.logoBox {
	display: flex;
	justify-content: center;
	align-items: center;
	margin-bottom: 20px;
}

#logo2 {
	align-item: center;
	width: 150px;
	height: 56px;
	margin: 20px 20px;
	background-color: #fff;
	width: 150px;
}

h1 {
	text-align: center;
	margin-bottom: 30px;
	font-size: 24px;
	color: #333;
}

.formGroup {
	margin-bottom: 20px;
}

.formGroup label {
	display: block;
	margin-bottom: 6px;
	font-weight: 500;
}

.formGroup input[type="text"], .formGroup input[type="password"],
	.formGroup textarea {
	width: 100%;
	padding: 10px 12px;
	border: 1px solid #ccc;
	border-radius: 6px;
	font-size: 14px;
}

textarea {
	resize: vertical;
	height: 200px;
}

.buttonGroup {
	margin-top: 30px;
	display: flex;
	justify-content: space-between;
}

.buttonGroup input {
	flex: 1;
	height: 48px;
	font-size: 15px;
	font-weight: bold;
	border-radius: 6px;
	border: 1px solid #ccc;
	cursor: pointer;
	margin: 0 5px;
}

.submitBtn {
	background-color: #fff;
	border: 1px solid #5055b1;
	color: #474c98;
}

.submitBtn:hover {
	background-color: rgba(80, 85, 177, 0.1);
	border: 1px solid #5055b1;
}

.resetBtn {
	background-color: #fff;
	border: 1px solid #bbb;
	color: #555;
}

.resetBtn:hover {
	background-color: rgba(80, 85, 177, 0.1);
	color: #5055b1;
	border: 1px solid #5055b1;
}

.listBtn {
	background-color: #eee;
}

.listBtn:hover {
	background-color: rgba(80, 85, 177, 0.1);
	color: #5055b1;
	border: 1px solid #5055b1;
}
</style>

<script type="text/javascript" src="script/board.js"></script>
</head>
<body>
	<div class="formContainer">
		<div class="logoBox">
			<a href="index.jsp"><img src="img/icon/KBlogo.svg" id="logo2"></a>
		</div>
		<h1>게시글 등록</h1>
		<form name="frm" method="post" action="BoardServlet">
			<input type="hidden" name="command" value="board_write" />

			<div class="formGroup">
				<label for="username">작성자 *</label> <input type="text"
					name="username" id="username" required />
			</div>

			<div class="formGroup">
				<label for="pass">비밀번호 *</label> <input type="password" name="pass"
					id="pass" required />
			</div>

			<div class="formGroup">
				<label for="email">이메일</label> <input type="text" name="email"
					id="email" />
			</div>

			<div class="formGroup">
				<label for="title">제목 *</label> <input type="text" name="title"
					id="title" required />
			</div>

			<div class="formGroup">
				<label for="content">내용</label>
				<textarea name="content" id="content"></textarea>
			</div>

			<div class="buttonGroup">
				<input type="submit" class="submitBtn" value="등록"
					onclick="return boardCheck()" /> <input type="reset"
					class="resetBtn" value="다시작성" /> <input type="button"
					class="listBtn" value="목록"
					onclick="location.href='BoardServlet?command=board_list'" />
			</div>
		</form>
	</div>

	<footer>
		<div class="footerWrap">
			<div class="copyRight">© KYOBO BOOK CENTRE</div>
		</div>
	</footer>
</body>
</html>
