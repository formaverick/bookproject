<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>회원가입 | 교보문고</title>
    <script type="text/javascript" src="script/member.js"></script>
    <style>
        body {
            font-family: "Noto Sans KR", sans-serif;
            font-size: 14px;
            margin: 0;
            padding: 0;
            color: #000;
        }

        .joinBox {
            width: 100%;
            height: 750px;
        }

        .joinWrap {
            width: 400px;
            height: 650px;
            margin: 0 auto;
            margin-top: 100px;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }

        #logoKB {
            width: 171px;
            height: 56px;
        }

        .joinFormBox {
            width: 340px;
            margin-top: 30px;
        }

        .joinFormBox p {
            font-size: 13px;
            color: #767676;
            margin-bottom: 10px;
        }

        .formIp {
            width: 100%;
            height: 44px;
            padding: 0 14px;
            margin-bottom: 12px;
            font-size: 14px;
            color: #000;
            border: 1px solid #d5d5d5;
            border-radius: 6px;
            box-sizing: border-box;
            background-color: #fff;
            outline: none;
        }

        .formIp:focus {
            border: 1px solid #000;
        }
        
        .idCheck {
        	margin-bottom: 12px;
        	border-radius: 4px;
        }

        .radioWrap {
            width: 100%;
            margin: 10px 0;
            font-size: 14px;
        }

        .radioWrap label {
            margin-right: 20px;
            cursor: pointer;
        }

        .joinBtnWrap {
            width: 100%;
            margin-top: 20px;
            display: flex;
            flex-direction: column;
        }

        .joinBtnWrap input {
            width: 100%;
            height: 50px;
            font-size: 16px;
            font-weight: 700;
            border-radius: 6px;
            cursor: pointer;
        }

        .join {
            color: #474c98;
            border: 1px solid #5055b1;
            background-color: #fff;
        }

        .join:hover {
            background-color: rgba(71, 76, 152, 0.15);
        }

        .reset {
            color: #595959;
            background-color: #fff;
            border: 1px solid #ccc;
            margin-top: 10px;
        }

        .reset:hover {
            background-color: rgba(89, 89, 89, 0.15);
        }
        
        .backBtn {
        	margin-top: 10px;
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
    <section class="joinBox">
        <div class="joinWrap">
            <a href="index.jsp"><img src="../img/icon/KBlogo.svg" id="logoKB" alt="교보문고 로고"></a>

            <form class="joinFormBox" action="join.do" method="post" name="frm">
                <p>'*' 표시 항목은 필수 입력 항목입니다.</p>

                <input type="text" name="username" class="formIp" placeholder="이름 *" required />
                
                <input type="email" name="userid" class="formIp" placeholder="이메일 *" id="userid" required />
                <input type="hidden" name="reid" size="20">
                <input type="button" value="중복 체크" onClick="idCheck()" class="idCheck join">
                
                <input type="password" name="pwd" class="formIp" placeholder="비밀번호 *" required />
                <input type="password" name="pwd_check" class="formIp" placeholder="비밀번호 확인 *" required />
                
                <input type="text" name="phone" class="formIp" placeholder="전화번호 (선택)" />

                <div class="radioWrap">
                    <label><input type="radio" name="admin" value="0" checked /> 일반회원</label>
                    <label><input type="radio" name="admin" value="1" /> 관리자</label>
                </div>

                <div class="joinBtnWrap">
                    <input type="submit" value="회원가입" class="join" onclick="return joinCheck()" />
                    <input type="reset" value="취소" class="reset" />
                    <input type="button" value="뒤로가기" class="join backBtn" onclick="history.back()" />
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