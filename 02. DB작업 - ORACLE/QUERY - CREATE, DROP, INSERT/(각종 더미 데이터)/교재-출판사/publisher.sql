--seol  >  publisher.sql

DROP TABLE tblPublisher;

DROP SEQUENCE publisherSeq;

CREATE TABLE tblPublisher
(
    seq NUMBER PRIMARY KEY, --출판사번호(pk)
    name VARCHAR2(30) NULL --출판사명
   );

CREATE SEQUENCE publisherSeq;    --출판사번호용 시퀀스 객체


--inset 패턴

--1. 표준 : 원본 테이블에 정의된 컬럼 순서대로 컬럼리스트와 값리스트를 표기하는 방법
INSERT INTO tblPublisher(seq, name)  VALUES( 1, '도우출판');

INSERT INTO tblPublisher(seq, name)  VALUES( 2, '인피니티북스');

INSERT INTO tblPublisher(seq, name)  VALUES( 3, '가메');

INSERT INTO tblPublisher(seq, name)  VALUES( 4, '한빛미디어');

INSERT INTO tblPublisher(seq, name)  VALUES( 5, '위키북스');


INSERT INTO tblPublisher(seq, name)  VALUES( 6, '길벗');

INSERT INTO tblPublisher(seq, name)  VALUES( 7, '생능출판사');

INSERT INTO tblPublisher(seq, name)  VALUES( 8, '한빛리더스');

INSERT INTO tblPublisher(seq, name)  VALUES( 9, '이지스퍼블리싱');

INSERT INTO tblPublisher(seq, name)  VALUES( 10, '남가람북스');



INSERT INTO tblPublisher(seq, name)  VALUES( 11, '광문각');

INSERT INTO tblPublisher(seq, name)  VALUES( 12, '씨아이알');

INSERT INTO tblPublisher(seq, name)  VALUES( 13, '정보문화사');

INSERT INTO tblPublisher(seq, name)  VALUES( 14, '아이콕스');

INSERT INTO tblPublisher(seq, name)  VALUES( 15, '영진닷컴');


INSERT INTO tblPublisher(seq, name)  VALUES( 16, '로드북');

INSERT INTO tblPublisher(seq, name)  VALUES( 17, '비제이퍼블릭');

INSERT INTO tblPublisher(seq, name)  VALUES( 18, '에이콘 출판');

INSERT INTO tblPublisher(seq, name)  VALUES( 19, '제이펍');

commit;

select*from tblPublisher;