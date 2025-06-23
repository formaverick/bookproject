<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>상품 등록 | 관리자 페이지</title>
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/productFooter.css">
<style>
body {
	font-family: "Noto Sans KR", sans-serif;
	background-color: #f9f9f9;
	margin: 0;
	padding: 60px 20px;
	color: #333;
}

.productFormWrap {
	max-width: 800px;
	height: 830px;
	margin: 0 auto;
	background: #fff;
	padding: 40px;
	border-radius: 10px;
	box-shadow: 0 4px 12px rgba(0, 0, 0, 0.05);
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
	font-size: 24px;
	text-align: center;
	margin-bottom: 30px;
}

h1 span {
	font-size: 18px;
}

table {
	width: 100%;
	border-collapse: collapse;
}

th {
	text-align: left;
	padding: 12px 0;
	width: 120px;
	vertical-align: top;
	font-weight: 600;
}

td {
	padding: 12px 0;
}

input[type="text"], input[type="file"], textarea {
	width: 95%;
	padding: 10px;
	font-size: 14px;
	border: 1px solid #ccc;
	border-radius: 6px;
	box-sizing: border-box;
}

textarea {
	height: 260px;
	resize: vertical;
	font-family: inherit;
}

small {
	display: block;
	margin-top: 6px;
	color: #888;
	font-size: 13px;
}

.buttonGroup {
	display: flex;
	justify-content: center;
	gap: 10px;
	margin-top: 30px;
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
	border: 1px solid #ccc;
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
<script type="text/javascript" src="script/product.js"></script>
</head>
<body>
	<section class="productFormWrap">
		<div class="logoBox">
			<a href="index.jsp"><img src="img/icon/KBlogo.svg" id="logo2"></a>
		</div>
		<h1>상품 등록 <span>- 관리자 페이지</span></h1>
		<form method="post" enctype="multipart/form-data" name="frm"
			action="productWrite.do">
			<table>
				<tr>
					<th>상품명</th>
					<td><input type="text" name="productname" required></td>
				</tr>
				<tr>
					<th>가격</th>
					<td><input type="text" name="price" required> 원</td>
				</tr>
				<tr>
					<th>사진</th>
					<td><input type="file" name="pictureUrl" accept="image/*">
						<small>※ 이미지를 변경하고자 할 때만 선택하세요.</small></td>
				</tr>
				<tr>
					<th>설명</th>
					<td><textarea name="description" required></textarea></td>
				</tr>
			</table>

			<div class="buttonGroup">
				<input type="submit" value="등록" class="submitBtn"
					onclick="return productCheck()"> <input type="reset"
					value="다시작성" class="resetBtn"> <input type="button"
					value="목록" class="listBtn" onclick="location.href='productList.do'">
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
