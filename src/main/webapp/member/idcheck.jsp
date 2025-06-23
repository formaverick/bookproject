<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>아이디 중복확인</title>
    <script type="text/javascript" src="script/member.js"></script>
    <style>
        body {
            font-family: 'Noto Sans KR', sans-serif;
            background: #f5f5f5;
            padding: 40px;
        }

        .checkBox {
            width: 400px;
            margin: 0 auto;
            background: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            text-align: center;
        }

        .checkBox h2 {
            margin-bottom: 20px;
            font-size: 20px;
        }

        input[type="text"] {
            width: 80%;
            padding: 10px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 8px;
        }

        input[type="submit"], input[type="button"] {
            padding: 8px 20px;
            border: none;
            background-color: #5055b1;
            color: white;
            border-radius: 6px;
            font-weight: bold;
            margin-top: 15px;
            cursor: pointer;
        }

        .message {
            margin-top: 20px;
            font-size: 14px;
        }

        .message.fail {
            color: red;
        }

        .message.success {
            color: green;
        }
    </style>
</head>
<body>
    <div class="checkBox">
        <h2>아이디 중복확인</h2>
        <form action="idCheck.do" method="get" name="frm">
            <input type="email" name="userid" value="${userid}" placeholder="아이디 입력">
            <br>
            <input type="submit" value="중복 체크">
        </form>

        <!-- 이미 존재하는 아이디 -->
        <c:if test="${result == 1}">
            <div class="message fail">
                <script type="text/javascript">
                    opener.document.frm.userid.value = "";
                </script>
                ${userid}는 이미 사용 중인 아이디입니다.
            </div>
        </c:if>

        <!-- 사용 가능한 아이디 -->
        <c:if test="${result == -1}">
            <div class="message success">
                ${userid}는 사용 가능한 아이디입니다.
                <br>
                <input type="button" value="사용" onclick="idok('${userid}')">
            </div>
        </c:if>
    </div>
</body>
</html>
