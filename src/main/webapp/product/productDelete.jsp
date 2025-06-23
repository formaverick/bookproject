<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>상품 삭제 | 관리자 페이지</title>
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/productFooter.css">
<style>
body {
	font-family: "Noto Sans KR", sans-serif;
	background-color: #f9f9f9;
	margin: 0;
	padding: 60px 20px;
}

.deleteWrap {
	max-width: 700px;
	height: 700px;
	margin: 0 auto;
	margin-top: 100px;
	background: #fff;
	border-radius: 10px;
	padding: 40px;
	box-shadow: 0 4px 12px rgba(0, 0, 0, 0.05);
}

#logo {
	display: block;
	margin: 0 auto 30px;
	width: 150px;
}

h1 {
	text-align: center;
	margin-bottom: 80px;
	font-size: 22px;
}

.productInfo {
	display: flex;
	gap: 30px;
}

.productInfo img {
	width: 200px;
	height: 280px;
	object-fit: cover;
	border: 1px solid #ddd;
	border-radius: 8px;
}

.infoText {
	flex: 1;
	font-size: 14px;
}

.infoText dt {
	font-weight: bold;
	margin-top: 10px;
}

.infoText dd {
	margin: 5px 0 10px 0;
}

.buttonGroup {
	display: flex;
	justify-content: center;
	gap: 15px;
	margin-top: 80px;
}

.buttonGroup input {
	padding: 12px 25px;
	border-radius: 6px;
	font-weight: bold;
	font-size: 14px;
	border: none;
	cursor: pointer;
}

.deleteBtn {
	background-color: #d9534f;
	color: white;
}

.deleteBtn:hover {
	background-color: #c9302c;
}

.cancelBtn {
	background-color: #f0f0f0;
	color: #333;
}

.cancelBtn:hover {
	background-color: #e0e0e0;
}
</style>
</head>
<body>
	<section class="deleteWrap">
		<img src="img/icon/KBlogo.svg" alt="교보문고 로고" id="logo" />
		<h1>상품을 정말 삭제하시겠습니까?</h1>
		<form action="productDelete.do" method="post">
			<div class="productInfo">
				<c:choose>
					<c:when test="${empty product.pictureUrl}">
						<img src="upload/noimage.gif" alt="No Image">
					</c:when>
					<c:otherwise>
						<img src="upload/${product.pictureUrl}" alt="상품 이미지">
					</c:otherwise>
				</c:choose>

				<dl class="infoText">
					<dt>상품명</dt>
					<dd>${product.productName}</dd>

					<dt>가격</dt>
					<dd>${product.price}원</dd>

					<dt>설명</dt>
					<dd>${product.description}</dd>
				</dl>
			</div>

			<input type="hidden" name="code" value="${product.code}">
			<div class="buttonGroup">
				<input type="submit" value="삭제" class="deleteBtn">
				<input type="button" value="목록" class="cancelBtn" onclick="location.href='productList.do'">
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
