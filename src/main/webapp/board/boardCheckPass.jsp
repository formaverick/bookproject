<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>비밀번호 확인 | 교보문고</title>
<link rel="stylesheet" href="css/reset.css" />
<style>
body {
	font-family: "Noto Sans KR", sans-serif;
	background-color: #f9f9f9;
	margin: 0;
	padding: 60px 20px;
	color: #333;
}

.passWrap {
	max-width: 400px;
	margin: 0 auto;
	background: #fff;
	padding: 40px 30px;
	border-radius: 12px;
	box-shadow: 0 4px 12px rgba(0, 0, 0, 0.05);
	text-align: center;
}

h1 {
	font-size: 22px;
	margin-bottom: 24px;
	color: #2d2d2d;
}

.formGroup {
	margin-bottom: 20px;
	text-align: left;
}

.formGroup label {
	font-size: 14px;
	display: block;
	margin-bottom: 8px;
	color: #555;
}

.formGroup input[type="password"] {
	width: 100%;
	padding: 10px;
	font-size: 14px;
	border: 1px solid #ccc;
	border-radius: 6px;
	box-sizing: border-box;
}

.submitBtn {
	width: 100%;
	height: 44px;
	font-size: 15px;
	font-weight: bold;
	background-color: #5055b1;
	color: #fff;
	border: none;
	border-radius: 6px;
	cursor: pointer;
	transition: background-color 0.2s;
}

.submitBtn:hover {
	background-color: #3e439f;
}

.message {
	margin-top: 16px;
	color: #d00;
	font-size: 14px;
}
</style>
<script type="text/javascript" src="script/board.js"></script>
</head>
<body>
	<div class="passWrap">
		<h1>비밀번호 확인</h1>
		<form action="BoardServlet" name="frm" method="get">
			<input type="hidden" name="command" value="board_check_pass" />
			<input type="hidden" name="num" value="${param.num}" />

			<div class="formGroup">
				<label for="pass">비밀번호</label>
				<input type="password" name="pass" id="pass" required />
			</div>

			<input type="submit" value="확인" class="submitBtn" onclick="return passCheck()" />

			<div class="message">${message}</div>
		</form>
	</div>
</body>
</html>
