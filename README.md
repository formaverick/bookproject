# 교보문고 스타일 웹구현 프로젝트

![main](https://github.com/user-attachments/assets/598857e3-50eb-4c98-8702-b1bfaf73d732)


## 목차

- [개요](https://github.com/misosiruda/oh_my_car/blob/main/README.md#-%EA%B0%9C%EC%9A%94)

- [기술 스택](https://github.com/misosiruda/oh_my_car/blob/main/README.md#-%EA%B8%B0%EC%88%A0-%EC%8A%A4%ED%83%9D)

- [프로젝트 설계](https://github.com/misosiruda/oh_my_car/blob/main/README.md#-%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8-%EC%84%A4%EA%B3%84-%EA%B5%AC%ED%98%84--ppt--erd-usecase)

- [핵심 기능](https://github.com/misosiruda/oh_my_car/blob/main/README.md#-%ED%95%B5%EC%8B%AC-%EA%B8%B0%EB%8A%A5)

- [주요기능 실행화면](https://github.com/misosiruda/oh_my_car/blob/main/README.md#-%EC%A3%BC%EC%9A%94%EA%B8%B0%EB%8A%A5-%EC%8B%A4%ED%96%89%ED%99%94%EB%A9%B4)


## 🚩 개요

- 프로젝트 목표 : 다양한 API 이용과 함께 분리된 서버와 클라이언트 이용을 위한 `jsp` 교보문고 스타일의 웹사이트 구현
- 개발 기간 : 25/06/13 ~ 25/06/20

## 🔧 기술 스택

- API : `Kakao API`
- Language : `Java(8)`, `JavaScript(ES6)`
- Library & Framework : `JSP`, `jQuery`, `JDBC`, `Servlet API`, `MultipartRequest`
- Database : `MySQL(8.0.36)`
- Target : `Web Browser (Chrome, Edge)`

- Tool : `Eclipse`
- ETC : `Tomcat 9`, `Kakao Developers`

## 👾 프로젝트 설계, 구현 📂 PPT

|![1](https://github.com/user-attachments/assets/bfb8df9a-32f6-4db5-970a-73f92b3a80ea)
| ![2](https://github.com/user-attachments/assets/73d3a4ab-231c-4229-ab25-b1e36df9cd58) |
| :-------------------------------------------------------------------------------------------------------------------------------: | :-------------------------------------------------------------------------------------------------------------------------------: |
| ![3](https://github.com/user-attachments/assets/5ef711bc-b076-45ef-a963-af0f1f702b38) | ![4](https://github.com/user-attachments/assets/437dfbd1-78ac-480d-9544-99b9a369c777) |
| ![5](https://github.com/user-attachments/assets/2b481f31-bb4f-45a0-a975-eecd0619a0b3) | ![6](https://github.com/user-attachments/assets/5153fafc-9b94-4f4b-90c1-75c08fed4786) |
| ![7](https://github.com/user-attachments/assets/7878a447-f511-4a91-8b24-f6e33baa085a) | ![8](https://github.com/user-attachments/assets/3c50b1f0-9352-46c8-890a-9fdeaef0d4f4) |
| ![9](https://github.com/user-attachments/assets/cb22e1c4-c0dd-468e-8676-daf9c66b4696) | ![10](https://github.com/user-attachments/assets/344d9da5-133f-4cc3-94ea-43dc2eb2f32b) |
| ![11](https://github.com/user-attachments/assets/87cab5ad-1f09-4797-a99c-6fb37512190c) | ![12](https://github.com/user-attachments/assets/9f32666a-8298-4bd5-90f9-24e3148dc6ed) |
| ![13](https://github.com/user-attachments/assets/b0705b5d-5679-4969-9cea-75d1ae337876) | ![14](https://github.com/user-attachments/assets/1b9b0111-7f91-4757-bae2-7ca35afd0639) |
|![15](https://github.com/user-attachments/assets/37d52b1b-6101-4947-a50f-105f2e288b60) | ![16](https://github.com/user-attachments/assets/64781aae-24a6-4b46-975e-072249eb3e0f) |
| ![17](https://github.com/user-attachments/assets/2ec2f839-343f-4803-a7d0-fb7ee276869b) | ![18](https://github.com/user-attachments/assets/0fc2eb8a-731a-4633-9cdb-cd111b4a9e84) |
| ![19](https://github.com/user-attachments/assets/e1289a55-4481-4b77-a7ab-1f177ee5eaae) | ![20](https://github.com/user-attachments/assets/3e153a7d-ccfb-4814-aea1-f3b272db5062) |
| ![21](https://github.com/user-attachments/assets/2b33e4c3-44c5-419e-9a45-d172fc119151) | |
## 💻 핵심 기능

### 🛠️ 도서 목록

- #### Kakao API

  - `Kakao API`를 통해 지정한 키워드에 맞는  `도서 정보`를 구해올 수 있습니다.
    구해온 정보를 토대로 각 `도서 정보`를 확인할 수 있습니다.
    ![도서 api](https://github.com/user-attachments/assets/b8cd8332-d202-43fc-aacf-8d87d00aed1b)


#### 🙍 일반회원

- ##### 로그인

  - 비밀번호 암호화

- ##### 회원가입

  - 아이디, 이메일 중복확인
  - 입력 양식 정규식처리
  - 유효성검사

- ##### 마이페이지

  - 회원 정보 수정

- ##### 자유게시판

  - 게시글 작성,수정,삭제

#### 👷‍♂️ 관리자

- ##### 관리자 회원가입

  - 아이디, 이메일 중복확인
  - 입력 양식 정규식처리
  - 유효성검사

- ##### 도서 목록 관리

  - 도서 정 작성,수정,삭제

## 🎇 주요기능 실행화면

## **🏠 메인 페이지**

- **로그인**

  - 모든 페이지에서 우측 상단의 `로그인`을 통해 로그인 할 수 있습니다.
      로그인 권한이 필요한 페이지에 접근시에도 로그인페이지로 이동됩니다.
  - 모든 페이지 우측 상단의 `로그아웃`을 통해 로그아웃 할 수 있습니다.
  - 로그인한 회원의 권한 정보에 따라 접근할 수 있는 페이지가 결정됩니다.
    
    ![로그인](https://github.com/user-attachments/assets/3336bbbe-4be9-4374-a533-d7314343682c)


- **🙍 일반회원 회원가입**

  - 우측 상단 `회원가입`이나, 로그인화면에서 회원가입버튼을 통해 회원가입을 할 수 있습니다.
      페이지 접근에 제한이 있습니다.(관리자전용 페이지 등)

      ![회원가입](https://github.com/user-attachments/assets/2cab05fb-c3cd-47de-b937-b9ee5654c182)


- **📄 마이페이지**

  - `회원 정보 수정` 에서는 회원정보를 변경할 수 있습니다.

     ![회원정보 수정](https://github.com/user-attachments/assets/5e9bbb53-a0ad-4361-9c7f-06a81c6990f6)

- **🗣️ 자유 게시판**

  - `자유 게시판`은 사용자들이 게시물을 올길 수 있습니다.

     ![게시판](https://github.com/user-attachments/assets/3532064a-89d5-49ac-877f-a7784009fd29)


### **👷‍♂️ 관리자 & 🚐 도서 목록**

- **관리자 회원가입**
  - 도서 목록을 확인하기 위해서는 관리자로 로그인되어 있는지 먼저 확인합니다.
  - 관리자로 로그인이 되어있지 않은 경우 로그인을 하도록 페이지가 전환되고 회원가입이 가능합니다.
  - 관리자로 로그인 성공 시 도서 목록 페이지로 이동됩니다.
 
    ![상품 목록 관리자](https://github.com/user-attachments/assets/20d78d77-fc08-4118-8395-efb672123ac5)


- **도서 정보**

  - 도서 목록에서 선택한 도서의 정보를 볼 수 있습니다. 각 도서와 관련 정보를 수정 및 등록, 삭제 할 수 있습니다.

    ![상품목록 수정](https://github.com/user-attachments/assets/f70fa4ea-e26c-41d5-aab1-77ddff9978db)
    ![상품목록 등록, 삭제](https://github.com/user-attachments/assets/36ce8b34-2d3e-4d71-9ff8-806dc52c9fe4)
