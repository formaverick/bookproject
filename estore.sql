CREATE DATABASE estore;   

CREATE DATABASE estore CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE estore;

CREATE TABLE member (
  username VARCHAR(10),
  userid VARCHAR(20),
  pwd VARCHAR(10),
  phone CHAR(13),
  admin TINYINT DEFAULT 0, -- 0: 사용자, 1: 관리자
  PRIMARY KEY (userid)
);

CREATE TABLE board (
  num INT AUTO_INCREMENT PRIMARY KEY,
  pass VARCHAR(30),
  username VARCHAR(30),
  email VARCHAR(30),
  title VARCHAR(50),
  content VARCHAR(1000),
  readcount INT DEFAULT 0,
  writedate TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE product (
  code INT AUTO_INCREMENT PRIMARY KEY,
  productname VARCHAR(100),
  price DECIMAL(8, 2),
  pictureurl VARCHAR(50),
  description VARCHAR(1000)
);

INSERT INTO member (username, userid, pwd, phone, admin)
VALUES ('유라', 'gmd@naver.com', '1234', '010-1111-2222', 0);

INSERT INTO member (username, userid, pwd, phone, admin)
VALUES ('주연', 'ha12@naver.com', '1234', '010-2222-8888', 0);

INSERT INTO member (username, userid, pwd, phone, admin)
VALUES ('영윤', 'youn1004@naver.com', '1234', '010-3333-6666', 1);

INSERT INTO member (username, userid, pwd, phone, admin)
VALUES ('채원', 'youn1005@naver.com', '1234', '010-4444-9999', 0);
 



INSERT INTO board(username, email, pass, title, content)
VALUES('고객센터', 'KB@gmaail.com', '1234', '기프트카드 이용약관 변경 안내(3/28)', '기프트카드 이용약관 변경 안내드립니다.');

INSERT INTO board(username, email, pass, title, content)
VALUES('홍길동', 'city@nate.com', '1234', '문의 드립니다.', '재입고 문의합니다.');

INSERT INTO board(username, email, pass, title, content)
VALUES('임꺽정', 'forest@nate.com', '1234', '배송문의', '배송이 언제 시작되는지 알고싶습니다.');

INSERT INTO board(username, email, pass, title, content)
VALUES('핫트랙스', 'HT@gmail.com', '1234', '[공지]교보북클럽 메가박스 제휴 혜택 종료', '안녕하세요. 꿈을 키우는 세상 교보문고입니다. 북클럽 제휴 혜택 중 메가박스 영화 할인쿠폰 혜택이 제휴사의 사정으로 인해 종료되어 안내해 드립니다.');




INSERT INTO product (productname, price, pictureurl, description)
VALUES ('개념을 콕콕 잡아주는 데이터베이스', 27000, 'db.jpg', '데이터 베이스에 관한 모든 것을 쉽고 재미있게 정리한 교재...');

INSERT INTO product (productname, price, pictureurl, description)
VALUES ('웹표준을 위한 HTML5', 25000, 'html5.jpg', 'HTML5 가이드 북, 홈페이지 제작을 위한 필수 선택 HTML 기본 문법');

INSERT INTO product (productname, price, pictureurl, description)
VALUES ('Dynamic Programming book 시리즈 -오라클 11g+PL/SQL', 25000, 'oracle.jpg', 'Dynamic 실무 코칭 프로그래밍의 Book의 첫번째 책으로 11g의 새로운...');

INSERT INTO product (productname, price, pictureurl, description)
VALUES ('MySQL 성능 최적화', 26000, 'mysql.jpg', 'MYSQL을 더 빠르게, 성능 최적화 선택과 집중 :+');

INSERT INTO product (productname, price, pictureurl, description)
VALUES ('JQuery and jQuery Mobile: 이해하기 쉽게 풀어 쓴', 25000, 'jquery.jpg', '소스 하나로 데스크탑과 모바일까지 HTML5와 함께 사용한다. 초보자들도...');
