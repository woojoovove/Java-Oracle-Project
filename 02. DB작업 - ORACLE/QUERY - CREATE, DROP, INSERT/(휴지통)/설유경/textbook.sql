--seol  >  textbook.sql

DROP TABLE tblTextbook;

DROP SEQUENCE  textbookSeq;

DELETE FROM tblTextbook;

CREATE TABLE tblTextbook
(
    seq NUMBER PRIMARY KEY, --교재번호(pk)
    name VARCHAR2(100) NULL, --교재명
    publisherSeq NUMBER NULL    --출판사 번호
    
);



CREATE SEQUENCE textbookSeq;    --메모번호용 시퀀스 객체


select *from tblpublisher;
--inset 패턴

--1. 표준 : 원본 테이블에 정의된 컬럼 순서대로 컬럼리스트와 값리스트를 표기하는 방법
INSERT INTO tblTextbook (seq, name, publisherSeq) VALUES( 1, 'Java의 정석', 1);
INSERT INTO tblTextbook (seq, name, publisherSeq) VALUES( 2, '최범균의 JSP 2.3 웹 프로그래밍', 3);
INSERT INTO tblTextbook (seq, name, publisherSeq) VALUES( 3, '모던 웹을 위한 JavaScript_Jquery 입문', 4);
INSERT INTO tblTextbook (seq, name, publisherSeq) VALUES( 4, '웹 개발자를 위한 Spring 4.0 프로그래밍', 3);
INSERT INTO tblTextbook (seq, name, publisherSeq) VALUES( 5, '시작하세요! 하둡 프로그래밍', 5);


INSERT INTO tblTextbook (seq, name, publisherSeq) VALUES( 6, '다양한 예제로 쉽게 배우는 오라클 SQL과 PL/SQL + 데이터 모델링 입문', 7);
INSERT INTO tblTextbook (seq, name, publisherSeq) VALUES( 7, '인터랙티브 웹디자인북', 4);
INSERT INTO tblTextbook (seq, name, publisherSeq) VALUES( 8, '뇌를 자극하는 파이썬 3', 8);
INSERT INTO tblTextbook (seq, name, publisherSeq) VALUES( 9, '이것이 자바다', 4);
INSERT INTO tblTextbook (seq, name, publisherSeq) VALUES( 10, 'SQL 레벨업 : DB 성능 최적화를 위한 SQL 실전 가이드', 4);

INSERT INTO tblTextbook (seq, name, publisherSeq) VALUES( 11, 'Do it ! 프런트엔드 웹 디자인 입문', 9);
INSERT INTO tblTextbook (seq, name, publisherSeq) VALUES( 12, 'Do it! 점프 투 파이썬', 9);
INSERT INTO tblTextbook (seq, name, publisherSeq) VALUES( 13, '코드로 배우는 스프링 웹 프로젝트(개정판)',  10);
INSERT INTO tblTextbook (seq, name, publisherSeq) VALUES( 14, '블록체인 프로그래밍', 4);
INSERT INTO tblTextbook (seq, name, publisherSeq) VALUES( 15, '빅데이터 개론',  11);

INSERT INTO tblTextbook (seq, name, publisherSeq) VALUES( 16, '오라클 SQL과 PL/SQL을 다루는 기술', 6);
INSERT INTO tblTextbook (seq, name, publisherSeq) VALUES( 17, '모두의 딥러닝', 6);
INSERT INTO tblTextbook (seq, name, publisherSeq) VALUES( 18, 'Do it! 쉽게 배우는 R 데이터 분석', 9);
INSERT INTO tblTextbook (seq, name, publisherSeq) VALUES( 19, '파이썬 웹 프로그래밍', 4);
INSERT INTO tblTextbook (seq, name, publisherSeq) VALUES( 20, '하둡 완벽 가이드', 4);

INSERT INTO tblTextbook (seq, name, publisherSeq) VALUES( 21, '텐서플로를 활용한 머신러닝', 4);
INSERT INTO tblTextbook (seq, name, publisherSeq) VALUES( 22, 'R을 활용한 기초 환경자료 분석 및 시각화', 12);
INSERT INTO tblTextbook (seq, name, publisherSeq) VALUES( 23, 'Do it! HTML5- CSS3 웹 표준의 정석(2017)', 9);
INSERT INTO tblTextbook (seq, name, publisherSeq) VALUES( 24, '네트워크 보안 시스템 구축과 보안 관제', 4);
INSERT INTO tblTextbook (seq, name, publisherSeq) VALUES( 25, '알고리즘과 자료구조(자바 + 파이썬)', 13);

INSERT INTO tblTextbook (seq, name, publisherSeq) VALUES( 26, '자바스크립트 프론트엔드 프로젝트 가이드', 14);
INSERT INTO tblTextbook (seq, name, publisherSeq) VALUES( 27, '스프링5 레시피', 4);
INSERT INTO tblTextbook (seq, name, publisherSeq) VALUES( 28, '파이썬으로 배우는 알고리즘 트레이딩', 5);
INSERT INTO tblTextbook (seq, name, publisherSeq) VALUES( 29, '자바스크립트+jQuery', 15);
INSERT INTO tblTextbook (seq, name, publisherSeq) VALUES( 30, '딥러닝의 정석', 4);

--특수문자 & 사용
--1. 유니코드로 표현
INSERT INTO tblTextbook (seq, name, publisherSeq) VALUES( 31, '한번에 이해되는 Oracle '|| chr(38)||' PL/SQL',2);

--2. escape
set escape on;--> 특수문자 볼수있게 켜기
show escape;-->특수문자 볼수있게 켜져있는지 확인
INSERT INTO tblTextbook (seq, name, publisherSeq) VALUES( 32, 'R을 이용한 데이터 처리 \& 분석실무', 6); --특수문자앞에 역슬래시'\'    
INSERT INTO tblTextbook (seq, name, publisherSeq) VALUES( 33, '핵심문법과 예제로 배우는 코틀린', 16);
INSERT INTO tblTextbook (seq, name, publisherSeq) VALUES( 34, '풀스택 개발자를 위한 MEAN 스택 입문', 4);
INSERT INTO tblTextbook (seq, name, publisherSeq) VALUES( 35, '자바 웹을 다루는 기술', 6);
INSERT INTO tblTextbook (seq, name, publisherSeq) VALUES( 36, '코드로 배우는 스프링 웹 프로젝트', 10);
INSERT INTO tblTextbook (seq, name, publisherSeq) VALUES( 38, '코틀린을 이용한 안드로이드 개발', 18);
INSERT INTO tblTextbook (seq, name, publisherSeq) VALUES( 39, '코틀린 프로그래밍', 19);
INSERT INTO tblTextbook (seq, name, publisherSeq) VALUES( 40, '자바로 배우는 핵심 자료구조와 알고리즘', 4);
INSERT INTO tblTextbook (seq, name, publisherSeq) VALUES( 37, '파이썬 머신러닝 완벽 가이드', 5);

SELECT*FROM tblTextbook;

update tbltextbook set  seq = 37  where name = '코틀린을 이용한 안드로이드 개발' ;

rollback;

COMMIT;