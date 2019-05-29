-- 과정 RAWDATA.SQL

CREATE TABLE tblCourseName
(
    seq NUMBER PRIMARY KEY, -- 번호
    name VARCHAR2(150) NOT NULL, -- 과정명
    state NUMBER DEFAULT 1 NOT NULL
);

CREATE SEQUENCE courseSeq;
DROP SEQUENCE courseSeq;

INSERT INTO tblCourseName VALUES (courseSeq.NEXTVAL, '자바 기반 융합형 SW 개발자 양성과정', DEFAULT);
INSERT INTO tblCourseName VALUES (courseSeq.NEXTVAL, 'Java기반의 스마트 웹 앱콘텐츠 양성과정', DEFAULT);
INSERT INTO tblCourseName VALUES (courseSeq.NEXTVAL, 'Java를 활용한 웹 응용 SW개발자 양성과정', DEFAULT);
INSERT INTO tblCourseName VALUES (courseSeq.NEXTVAL, '파이썬과 자바를 연계한 머신러닝 활용개발자 과정', DEFAULT);
INSERT INTO tblCourseName VALUES (courseSeq.NEXTVAL, 'Python '||chr(38)||' Java 응용 SW 실무개발자 양성과정', DEFAULT);
INSERT INTO tblCourseName VALUES (courseSeq.NEXTVAL, '웹기반 빅데이터 분석 응용 SW개발자', DEFAULT);
INSERT INTO tblCourseName VALUES (courseSeq.NEXTVAL, '웹개발 '||chr(38)||' 머신러닝을 통한 응용 SW엔지니어링', DEFAULT);
INSERT INTO tblCourseName VALUES (courseSeq.NEXTVAL, '빅데이터 기반 SW개발자 양성과정', DEFAULT);
INSERT INTO tblCourseName VALUES (courseSeq.NEXTVAL, '블록체인 기술을 활용한 응용 SW개발자 양성과정', DEFAULT);
INSERT INTO tblCourseName VALUES (courseSeq.NEXTVAL, '정보보안(네트워크, 서버) 엔지니어 양성과정', DEFAULT);
INSERT INTO tblCourseName VALUES (courseSeq.NEXTVAL, '파이썬과 R을 활용한 빅데이터분석(머신러닝, 딥러닝)전문가 양성과정', DEFAULT);
INSERT INTO tblCourseName VALUES (courseSeq.NEXTVAL, 'AI 알고리즘 응용 빅데이터 서비스 개발자 취업과정', DEFAULT);

COMMIT;

SELECT * FROM tblCourseName;
DROP TABLE tblCourseName;













