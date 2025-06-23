<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>회원 정보 수정 | 교보문고</title>
<link href="css/reset.css" rel="stylesheet">
<script type="text/javascript" src="script/member.js"></script>
<style>
body {
	font-family: "Noto Sans KR", sans-serif;
	font-size: 14px;
	color: #000;
	margin: 0;
	padding: 0;
}

.updateWrap {
	width: 400px;
	height: 700px;
	margin: 80px auto;
	display: flex;
	flex-direction: column;
	align-items: center;
}

#logoKB {
	width: 171px;
	height: 56px;
}

.updateForm {
	width: 100%;
	margin-top: 30px;
}

.formField {
	margin-bottom: 16px;
}

.formField input[type="text"], .formField input[type="email"],
	.formField input[type="password"] {
	width: 100%;
	height: 44px;
	padding: 0 12px;
	font-size: 14px;
	border: 1px solid #ccc;
	border-radius: 6px;
	box-sizing: border-box;
}

.formField input[readonly] {
	background-color: #f5f5f5;
	color: #888;
}

.radioWrap {
	margin: 10px 0 16px;
	font-size: 14px;
}

.radioWrap label {
	margin-right: 20px;
	cursor: pointer;
}

.buttonGroup {
	display: flex;
	gap: 10px;
	margin-top: 20px;
}

.buttonGroup input {
	flex: 1;
	height: 50px;
	border-radius: 6px;
	font-weight: bold;
	font-size: 15px;
	cursor: pointer;
}

.submitBtn {
	background-color: #fff;
	border: 1px solid #5055b1;
	color: #474c98;
}

.submitBtn:hover {
	background-color: rgba(71, 76, 152, 0.15);
}

.resetBtn {
	background-color: #fff;
	border: 1px solid #ccc;
	color: #595959;
}

.resetBtn:hover {
	background-color: rgba(89, 89, 89, 0.15);
}

.backBtn {
	background-color: #fff;
	border: 1px solid #ccc;
	color: #888;
}

.backBtn:hover {
	background-color: rgba(136, 136, 136, 0.15);
}

footer {
	width: 100%;
	height: 68px;
	margin-top: 100px;
	display: flex;
	justify-content: center;
	align-items: center;
	border-top: 1px solid #eaeaea;
}

.footerWrap {
	width: 400px;
	height: 19px;
	margin: 0 auto;
}

.copyRight {
	font-size: 13px;
	line-height: 19px;
	color: #767676;
	text-align: center;
}
</style>
</head>
<body>
	<section class="updateWrap">
		<a href="<c:url value='/index.jsp'/>"><img
			src="../img/icon/KBlogo.svg" id="logoKB" alt="교보문고 로고" /></a>

		<form class="updateForm" action="memberUpdate.do" method="post"
			name="frm">
			<div class="formField">
				<input type="text" name="username" value="${mVo.username}" readonly />
			</div>

			<div class="formField">
				<input type="email" name="userid" value="${mVo.userid}" readonly />
			</div>

			<div class="formField">
				<input type="password" name="pwd" placeholder="비밀번호 입력 *" />
			</div>

			<div class="formField">
				<input type="password" name="pwd_check" placeholder="비밀번호 확인 *" />
			</div>

			<div class="formField">
				<input type="text" name="phone" value="${mVo.phone}"
					placeholder="전화번호 (선택)" />
			</div>

			<div class="radioWrap">
				<label> <input type="radio" name="admin" value="0"
					<c:if test="${mVo.admin == 0}">checked</c:if>> 일반회원
				</label> <label> <input type="radio" name="admin" value="1"
					<c:if test="${mVo.admin == 1}">checked</c:if>> 관리자
				</label>
			</div>

			<div class="buttonGroup">
				<input type="submit" value="확인" class="submitBtn"
					onclick="return joinCheck()" />
				<input type="reset" value="취소" class="resetBtn" />
				<input type="button" value="뒤로가기" class="backBtn" onclick="history.back()" />
			</div>
		</form>
	</section>

	<footer>
		<div class="footerWrap">
			<div class="copyRight">© KYOBO BOOK CENTRE</div>
		</div>
	</footer>
</body>
</html>
