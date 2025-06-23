<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>상품 목록 | 관리자 페이지</title>
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/productFooter.css">
<style>
body {
	font-family: "Noto Sans KR", sans-serif;
	background-color: #f9f9f9;
	padding: 60px 20px;
}

.listWrap {
	max-width: 900px;
	min-height: 800px;
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
	align-item: center; width : 150px;
	height: 56px;
	margin: 20px 20px;
	background-color: #fff;
	width: 150px;
}

h1 {
	font-size: 24px;
	margin-bottom: 30px;
	text-align: center;
}

table {
	width: 100%;
	border-collapse: collapse;
}

th, td {
	padding: 12px;
	border-bottom: 1px solid #eee;
	text-align: center;
	font-size: 14px;
}

th {
	background-color: #f3f4f8;
	color: #333;
}

tr:hover {
	background-color: #f9f9ff;
}

.btnArea {
	text-align: right;
	margin-top: 20px;
}

.btnArea button {
	background-color: #5055b1;
	color: #fff;
	border: none;
	border-radius: 6px;
	padding: 10px 20px;
	font-size: 14px;
	cursor: pointer;
}

.btnArea button:hover {
	background-color: #3e439f;
}
</style>
</head>
<body>
	<div class="listWrap">
		<div class="logoBox">
			<a href="index.jsp"><img src="img/icon/KBlogo.svg" id="logo2"></a>
		</div>
		
		<h1>상품 목록</h1>
		<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>상품명</th>
					<th>가격</th>
					<th>관리</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="product" items="${productList}">
					<tr>
						<td>${product.code}</td>
						<td>${product.productName}</td>
						<td>${product.price}원</td>
						<td><a href="productUpdate.do?code=${product.code}">수정</a> |
							<a href="productDelete.do?code=${product.code}"
							onclick="return confirm('삭제하시겠습니까?')">삭제</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<div class="btnArea">
			<button onclick="location.href='productWrite.do'">상품 등록</button>
		</div>
	</div>

	<footer>
		<div class="footerWrap">
			<div class="copyRight">© KYOBO BOOK CENTRE</div>
		</div>
	</footer>
</body>
</html>
