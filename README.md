# 📚 교보문고 클론 웹 프로젝트 (JSP / Servlet / JDBC)

> JSP/Servlet 기반의 교보문고 클론 프로젝트입니다.  
> 회원, 게시판, 관리자 상품 관리 기능을 제공하며,  
> 메인 도서 섹션은 **Kakao Book API**를 활용해 동적으로 렌더링됩니다.

![main2](https://github.com/user-attachments/assets/bd1ee02c-f256-4e33-9a6b-fae6395cb8a5)
<p align="center">
  <img src="https://github.com/user-attachments/assets/061f6332-1725-463b-b8ec-83aa213c4aaa">
  <img src="https://github.com/user-attachments/assets/17139746-967b-49de-b657-852d8459149f">
</p>

---

## 📑 목차

- [🚀 개요](#-개요)
- [🛠️ 기술 스택](#️-기술-스택)
- [📂 폴더 구조](#-폴더-구조)
- [🔗 Kakao API 설정](#-Kakao-API-설정)
- [💻 핵심 기능](#-핵심-기능)
- [🎇 주요 기능 실행화면](#-주요-기능-실행화면)
- [🧠 프로젝트 회고](#-프로젝트-회고)
- [👾 프로젝트 설계 PPT](#-프로젝트-설계-PPT)


---

## 🚀 개요

- **목표:** JSP/Servlet 기반 MVC 패턴으로 교보문고 유사 서비스 구현  
  (회원, 게시판, 관리자 상품 관리, Kakao 도서 API 연동)
- **기간:** 2025.06.13 ~ 2025.06.20  
- **형태:** JSP / Servlet / JDBC 기반 웹 애플리케이션  

---

## 🛠️ 기술 스택

| 구분 | 기술 |
|------|------|
| **Language** | Java 17, JavaScript (ES6) |
| **Framework / Library** | JSP, Servlet API, JSTL, jQuery |
| **Database** | MySQL 8.x (JDBC, JNDI DataSource) |
| **Server** | Apache Tomcat 9 |
| **Build / Run** | Maven (WAR 패키징) |
| **API** | Kakao Developers Book Search API |
| **IDE / Tool** | Eclipse (WTP), Chrome / Edge |
| **ETC** | cos(MultipartRequest), JSTL, JDBC Connector |

---


## 📂 폴더 구조

```plaintext
pom.xml                         # Maven 프로젝트 정의 (war 패키징)
estore.sql                      # DB 스키마 및 샘플 데이터

src/main/java/
  com/dino/controller/          # Servlet 진입점 (@WebServlet)
  com/dino/controller/action/   # 게시판 Command 액션 핸들러
  com/dino/dao/                 # DAO 계층 (JDBC)
  com/dino/dto/                 # DTO / VO 클래스
  util/DBManager.java           # JNDI DataSource 유틸 (jdbc/estoreDB)

src/main/webapp/
  index.jsp, sub.jsp            # 메인 / 서브 페이지
  member/, product/, board/     # JSP 뷰 페이지
  js/, script/, img/, json/     # 정적 리소스
  WEB-INF/                      # 라이브러리 (JSTL 등)
```
---

## 💻 핵심 기능

### 🛠️ 도서 목록 (Kakao API)

- **외부 API 연동**
  - `Kakao Book Search API`를 통해 지정한 키워드에 맞는 도서 정보를 불러옵니다.  
  - 응답 데이터(썸네일, 제목, 저자, 출판사, 가격)를 DOM에 동적으로 주입하여 섹션별 도서 리스트를 구성합니다.
  
 ![도서 api](https://github.com/user-attachments/assets/b8cd8332-d202-43fc-aacf-8d87d00aed1b)

---

### 🙍 일반회원 기능

#### 🔐 로그인
- 비밀번호 암호화(SHA256)
- 세션 기반 로그인 상태 관리
- 비회원 접근 시 로그인 페이지로 리다이렉션

#### 📝 회원가입
- 아이디 / 이메일 중복확인
- 입력값 정규식 검증 및 유효성 검사
- 클라이언트/서버 이중 검증으로 보안 강화

#### 👤 마이페이지
- 회원정보(비밀번호, 연락처 등) 수정 가능
- 세션과 DB 동기화 처리

#### 💬 자유게시판
- 게시글 작성 / 수정 / 삭제 / 목록 / 조회
- Command 패턴 기반 액션 구조
- 비밀번호 검증 후 수정 및 삭제 허용

---

### 👷 관리자 기능

#### 🧾 관리자 회원가입
- 일반 회원과 별도 권한(`admin=1`)
- 아이디 / 이메일 중복검사 및 유효성 검사
- 로그인 성공 시 관리자 전용 페이지 이동

#### 📚 도서 목록 관리
- 관리자 로그인 후 접근 가능  
- 도서 등록 / 수정 / 삭제 기능 제공  
- 이미지 업로드(`MultipartRequest`) 및 파일명 중복 방지(`DefaultFileRenamePolicy`)  
- 수정 시 기존 이미지 유지/교체 선택 가능  

![상품 목록 관리자](https://github.com/user-attachments/assets/20d78d77-fc08-4118-8395-efb672123ac5)

---

## 🎇 주요 기능 실행화면

### 🏠 메인 페이지

#### 🔑 로그인 / 로그아웃
- 모든 페이지에서 상단 메뉴를 통해 로그인/로그아웃 가능  
- 로그인 상태에 따라 접근 가능한 페이지가 달라짐  

![로그인](https://github.com/user-attachments/assets/3336bbbe-4be9-4374-a533-d7314343682c)

---

#### 🙍 일반회원 회원가입
- 상단 `회원가입` 또는 로그인 화면에서 이동  
- 정규식 기반 유효성 검사 및 중복 체크 수행  

![회원가입](https://github.com/user-attachments/assets/2cab05fb-c3cd-47de-b937-b9ee5654c182)

---

#### 📄 마이페이지
- 회원정보 수정 (비밀번호, 연락처, 이메일 등)  
- 수정 시 세션 정보 자동 갱신  

![회원정보 수정](https://github.com/user-attachments/assets/5e9bbb53-a0ad-4361-9c7f-06a81c6990f6)

---

#### 🗣️ 자유 게시판
- 게시글 작성 / 수정 / 삭제 / 목록 기능  
- 등록 시 입력값 유효성 검사 및 XSS 필터링  

 ![게시판](https://github.com/user-attachments/assets/3532064a-89d5-49ac-877f-a7784009fd29)

---

### 👷‍♂️ 관리자 & 🚐 도서 목록 관리

#### 🧾 관리자 회원가입
- 로그인되지 않은 상태로 접근 시 관리자 로그인 페이지로 리다이렉션  
- 관리자 로그인 성공 시 상품 목록 페이지로 이동  

![상품 목록 관리자](https://github.com/user-attachments/assets/20d78d77-fc08-4118-8395-efb672123ac5)

---

#### 📚 도서 정보 관리
- 도서 목록에서 선택한 항목의 정보를 확인 가능  
- 수정 / 등록 / 삭제 기능 제공  
- `cos.MultipartRequest`를 통한 이미지 업로드 및 파일명 중복 방지 적용  

![상품목록 수정](https://github.com/user-attachments/assets/f70fa4ea-e26c-41d5-aab1-77ddff9978db)
![상품목록 등록, 삭제](https://github.com/user-attachments/assets/36ce8b34-2d3e-4d71-9ff8-806dc52c9fe4)


---


## **🏠 도서 상세 페이지**

![subq](https://github.com/user-attachments/assets/428d7ea8-b780-4e04-b274-1c46d80eea39)
![sub2](https://github.com/user-attachments/assets/0c5df734-c5d0-4959-be77-fd8c6b138216)

---

## 🧠 프로젝트 회고

### ✅ 성과

* JSP/Servlet + JDBC 기반 MVC 구조 완성
* 회원, 게시판, 관리자 상품 CRUD, Kakao API 연동 완료
* Tomcat JNDI + cos 업로드로 실제 환경 수준의 플로우 구현

### 🌟 잘한 점

* **MVC / Command 패턴 구조화**로 모듈성 향상
* **DataSource(JNDI)** 로 환경 분리 및 커넥션 관리 일원화
* **RequestDispatcher** 기반 흐름 제어로 코드 일관성 확보
* **파일 업로드 안정성** 확보 및 UI 깨짐 방지 처리
* **Maven + WAR 빌드**로 환경 전환 용이, 유지보수성 향상

### ⚠️ 개선점

* 세션 기반 인증 한계(권한 모델 확장 필요)
* 비밀번호 평문 저장 → 해시(SHA256/Bcrypt) 적용 필요
* 게시판 페이징/검색/정렬 미구현
* 테스트 코드(JUnit) 및 CI/CD 파이프라인 부재

### 💬 기술적 이슈 & 해결

* **DB 연결 실패(NPE)** → `context.xml`에 `jdbc/estoreDB` 정의 후 정상 연결
* **업로드 경로 오류** → `realPath("upload")` 경로 보정 및 권한 설정
* **Kakao API 불균형 데이터** → `null` 체크 및 DOM 예외 처리

### 🔒 성능 / 보안

* DB Connection Pool(DataSource)로 기본 성능 확보
* `PreparedStatement`로 SQL 인젝션 방지
* API 키 노출 → 서버 프록시/환경변수 관리로 개선 예정

### 🚀 향후 개선 계획

* BCrypt 기반 비밀번호 암호화 및 Role/Privilege 모델 추가
* 게시판 페이지네이션 / 검색 / 댓글 기능 추가
* 상품 카테고리, 재고, 다중 이미지 관리 확장
* 로깅/에러 처리(Logback), JUnit 단위 테스트 도입
* `.gitignore`, 정적분석, CI/CD 자동화 구축

---

## 👾 프로젝트 설계 PPT

-📂 PPT

![1](https://github.com/user-attachments/assets/6a2dd671-451e-4adf-97ee-80a7c5d8ecbf) 
![2](https://github.com/user-attachments/assets/73d3a4ab-231c-4229-ab25-b1e36df9cd58)
![3](https://github.com/user-attachments/assets/5ef711bc-b076-45ef-a963-af0f1f702b38)
![4](https://github.com/user-attachments/assets/437dfbd1-78ac-480d-9544-99b9a369c777)
![5](https://github.com/user-attachments/assets/2b481f31-bb4f-45a0-a975-eecd0619a0b3)
![6](https://github.com/user-attachments/assets/5153fafc-9b94-4f4b-90c1-75c08fed4786)
![7](https://github.com/user-attachments/assets/7878a447-f511-4a91-8b24-f6e33baa085a)
![8](https://github.com/user-attachments/assets/3c50b1f0-9352-46c8-890a-9fdeaef0d4f4)
![9](https://github.com/user-attachments/assets/cb22e1c4-c0dd-468e-8676-daf9c66b4696)
![10](https://github.com/user-attachments/assets/344d9da5-133f-4cc3-94ea-43dc2eb2f32b)
![11](https://github.com/user-attachments/assets/87cab5ad-1f09-4797-a99c-6fb37512190c)
![12](https://github.com/user-attachments/assets/9f32666a-8298-4bd5-90f9-24e3148dc6ed)
![13](https://github.com/user-attachments/assets/b0705b5d-5679-4969-9cea-75d1ae337876)
![14](https://github.com/user-attachments/assets/1b9b0111-7f91-4757-bae2-7ca35afd0639)
![15](https://github.com/user-attachments/assets/37d52b1b-6101-4947-a50f-105f2e288b60)
![16](https://github.com/user-attachments/assets/64781aae-24a6-4b46-975e-072249eb3e0f)
![17](https://github.com/user-attachments/assets/2ec2f839-343f-4803-a7d0-fb7ee276869b)
![18](https://github.com/user-attachments/assets/0fc2eb8a-731a-4633-9cdb-cd111b4a9e84)
![19](https://github.com/user-attachments/assets/e1289a55-4481-4b77-a7ab-1f177ee5eaae)
![20](https://github.com/user-attachments/assets/3e153a7d-ccfb-4814-aea1-f3b272db5062)
![21](https://github.com/user-attachments/assets/2b33e4c3-44c5-419e-9a45-d172fc119151)


-📂 Class diagram

![ClassDiagram](https://github.com/user-attachments/assets/ed6eb25b-8da8-4b84-a4aa-1df24a32c604)

-📂 Activity diagram

![액티비티](https://github.com/user-attachments/assets/b15de466-1874-4bbb-a8c2-9269e10e4f35)


