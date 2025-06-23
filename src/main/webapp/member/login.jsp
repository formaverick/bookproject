<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인 | 교보문고</title>
    <script type="text/javascript" src="<c:url value='/script/member.js' />"></script>
    <link href="<c:url value='/css/reset.css' />" rel="stylesheet">
    <style>
        .loginBox {
            width: 100%;
            height: auto;
        }

        .loginWrap {
            width: 400px;
            height: 700px;
            margin: 0 auto;
            margin-top: 30px;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }

        #logoKB {
            width: 171px;
            height: 56px;
            content: url('<c:url value="/img/icon/KBlogo.svg"/>');
        }

        .loginFormBox {
            width: 340px;
            height: 485px;
            margin-top: 30px;
        }

        .formGrop {
            width: 100%;
            height: auto;
            border-radius: 6px;
        }
        
        .formGrop p {
        	color: red;
        	text-size:8px;
        	margin-top: 5px;
        }

        .formIp {
            display: inline-block;
            width: 100%;
            height: 44px;
            padding: 0 14px 2px;
            color: #000;
            font-size: 14px;
            line-height: 42px;
            letter-spacing: -0.01em;
            font-family: "Noto Sans KR", sans-serif;
            background-color: #fff;
            border: 1px solid #d5d5d5;
            border-radius: 6px;
            box-sizing: border-box;
            outline: none;

        }

        .formIp:focus {
            border: 1px solid #000;
        }

        .id {
            border-bottom-right-radius: 0;
            border-bottom-left-radius: 0;
        }

        .pwd {
            border-top-right-radius: 0;
            border-top-left-radius: 0;
        }

        .btnWrap {
            width: 100%;
            margin-top: 20px;
        }

        .btnWrap input {
            width: 100%;
            height: 50px;
            padding: 0 23px 1px;
            border-radius: 6px;
            font-size: 16px;
            line-height: 24px;
            color: #fff;
            font-weight: 700;
            border: 1px solid #bebebe;
            background-color: #bebebe;
            cursor: pointer;
        }

        .saveIdBox {
            width: 100%;
            height: 22px;
            margin-top: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .formChk {
            position: relative;
        }

        /* 기본 체크박스 숨김 */
        input[type="checkbox"] {
            position: absolute;
            left: -9999px;
        }

        .formChk input+label {
            display: inline-block;
            position: relative;
            padding: 2px 0 0 27px;
            font-size: 14px;
            letter-spacing: -0.01em;
            line-height: 20px;
            color: #000;
            cursor: pointer;
        }

        input[type="checkbox"]+label::before {
            content: "";
            position: absolute;
            left: 0;
            top: 0;
            width: 22px;
            height: 22px;
            border-radius: 50%;
            border: 1px solid #ccc;
            background-color: #fff;
            background-image: url('<c:url value="/img/icon/ico_checkbox.png"/>');
            background-repeat: no-repeat;
            background-position: center;
            background-size: 10px 7px;
            transition: all 0.2s ease;
        }

        /* 체크된 상태 */
        input[type="checkbox"]:checked+label::before {
            background-color: #5055b1;
            border-color: #5055b1;
            background-image: url('<c:url value="/img/icon/ico_checkbox_active.png" />');
        }

        .saveRight {
            font-size: 13px;
            line-height: 19px;
            color: #767676;
        }

        .saveRight span {
            font-size: 13px;
            line-height: 19px;
            color: #767676;
            padding: 3px;
            cursor: pointer;
        }

        .snsLoginBox {
            width: 100%;
            height: 96px;
            margin-top: 40px;
        }

        .snsLoginList {
            width: 100%;
            height: 42px;
            display: flex;
            justify-content: center;
            align-items: center;
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .snsLoginList li {
            width: 42px;
            height: 42px;
            margin-right: 14px;
        }
        
        .snsLoginList li:nth-child(1) img {
            content: url('<c:url value="/img/icon/ico_sns_naver.png"/>');
        }
        .snsLoginList li:nth-child(2) img {
            content: url('<c:url value="/img/icon/ico_sns_kakao.png"/>');
        }
        .snsLoginList li:nth-child(3) img {
            content: url('<c:url value="/img/icon/ico_sns_google.png"/>');
        }

        .snsLoginList li:last-child {
            margin-right: 0;
        }

        .snsLoginList li img {
            width: 100%;
            height: 100%;
            cursor: pointer;
        }

        .snsLoginBox p {
            text-align: center;
            margin-top: 16px;
            font-size: 13px;
            line-height: 19px;
            color: #767676;
        }

        .joinWrap {
            width: 100%;
            height: 110px;
            margin-top: 30px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .joinWrap input {
            width: 100%;
            height: 50px;
            padding: 0 23px 1px;
            border-radius: 6px;
            font-size: 16px;
            line-height: 24px;
            font-weight: 700;
            cursor: pointer;
        }

        .join {
            color: #474c98;
            border: 1px solid #5055b1;
            background-color: #fff;
        }

        .join:hover {
            background-color: rgba(71, 76, 152, 0.251);
        }

        .reset {
            color: #595959;
            background-color: #fff;
            border: 1px solid #ccc;
        }

        .reset:hover {
            background-color: rgb(89, 89, 89, 0.251);
        }

        footer {
            width: 100%;
            height: 68px;
            margin-top: 80px;
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
    <section class="loginBox">
        <div class="loginWrap">
            <a href="<c:url value='/index.jsp'/>"><img id="logoKB"></a>
            
            <form action="<c:url value='/login.do'/>" method="post" name="frm" class="loginFormBox">
                <div class="formGrop">
                    <input type="email" name="userid" class="formIp id" value="${userid}" placeholder="아이디를 입력해 주세요.">
                    <input type="password" name="pwd" class="formIp pwd" placeholder="비밀번호를 입력해 주세요.">
                    <p>${message}</p>
                </div>

                <div class="btnWrap">
                    <input type="submit" value="로그인" onclick="return loginCheck()">
                </div>

                <div class="saveIdBox">
                    <span class="formChk">
                        <input id="formSaveId" type="checkbox" checked="checked">
                        <label for="formSaveId">아이디 저장</label>
                    </span>
                    <div class="saveRight">
                        <span>아이디 찾기</span>
                        <span>|</span>
                        <span>비밀번호 찾기</span>
                    </div>
                </div>

                <div class="snsLoginBox">
                    <ul class="snsLoginList">
                        <li><img></li>
                        <li><img></li>
                        <li><img></li>
                    </ul>
                    <p>개인정보 보호를 위해 공용 PC에서 사용 시 SNS계정의 로그아웃 <br> 상태를 꼭 확인해주세요.</p>
                </div>

                <div class="joinWrap">
                    <input type="button" value="회원가입" class="join" onclick="location.href='join.do'">
                    <input type="reset" value="취소" class="reset">
                </div>
            </form>
        </div>
    </section>

    <footer>
        <div class="footerWrap">
            <div class="copyRight">© KYOBO BOOK CENTRE</div>
        </div>
    </footer>
</body>

</html>