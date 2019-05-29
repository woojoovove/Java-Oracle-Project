-- 과목 RAWDATA.SQL

CREATE TABLE tblSubjectName
(
    seq NUMBER PRIMARY KEY, -- 번호
    name VARCHAR2(100) NOT NULL, -- 과목명
    subjectTypeSeq VARCHAR2(50) NOT NULL, -- 과목유형 번호
    state NUMBER DEFAULT 1 NOT NULL
);

CREATE SEQUENCE subjectSeq;
DROP SEQUENCE subjectSeq;


INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, 'JAVA 프로그래밍', '1', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, '데이터베이스', '2', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, 'JAVA 애플리케이션 구현', '1', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, '애플리케이션 배포', '3', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, 'Front-end 웹 애플리케이션 구현', '4', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, 'Back-end 웹 애플리케이션 구현', '5', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, 'Full-stack Framework 구현', '6', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, '반응형 웹 개발기법', '7', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, '융합기반 웹표준 프로젝트', '8', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, '애플리케이션 테스트 수행', '3', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, '웹 프로그래밍', '7', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, 'Spring 개발', '9', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, 'Spring framework 통합구현', '6', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, '제이쿼리 모바일', '10', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, '코틀린 프로그래밍', '11', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, '코틀린 안드로이드 프로그램 구현', '11', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, '코틀린 활용 안드로이드 모바일 프로젝트 제작 ', '11', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, 'Spring 서버 기반의 지능형 웹과 앱 통합개발 및 구현', '9', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, '웹개발 및 클라이언트 프로그래밍', '7', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, 'Full-stack 응용 프로젝트 제작', '8', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, '웹 서버 구축 실무', '7', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, '파이썬을 활용한 머신러닝 분석기술', '12', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, 'Server/client side 프로젝트', '8', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, 'Back-end 개발', '5', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, 'Framework', '6', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, 'Testing '||chr(38)||' Development', '3', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, 'Front-end 개발', '4', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, 'UI 설계 및 구현', '13', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, 'R Fundamentals Application', '15', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, '화면 설계', '13', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, '웹 어플리케이션', '7', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, '웹 퍼블리싱', '7', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, '구현 애플리케이션 테스트', '16', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, '자바 프레임워크', '1', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, '인공지능', '17', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, 'Javascript', '18', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, 'Python 프로그래밍', '12', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, '네트워크 프로그래밍', '19', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, '블록체인의 이해와 활용', '20', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, 'HTML, CSS, jQuery, Ajax', '7', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, 'Java JSP programming', '21', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, 'Big data 수집 및 저장, 기획과 응용', '14', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, '실무 프로젝트', '8', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, '응용SW 엔지니어링', '22', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, 'DB 엔지니어링', '2', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, '시스템SW 엔지니어링', '23', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, 'NW 엔지니어링', '19', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, '보안엔지니어링과 실무프로젝트', '24', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, '파이썬을 활용한 딥러닝', '25', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, '문제해결 알고리즘', '26', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, 'DBMS, SQL 활용 및 응용', '2', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, '선형대수학, 통계학', '27', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, 'NoSQL(MongoDB)', '2', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, '빅데이터 시각화(R, 파이썬)', '14', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, '데이터 마이닝', '2', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, 'AI 알고리즘', '26', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, 'Tensorflow 기반 머신러닝, 딥러닝', '25', DEFAULT);
INSERT INTO tblSubjectName VALUES (subjectSeq.NEXTVAL, '지능형 빅데이터 서비스 실무프로젝트', '8', DEFAULT);

COMMIT;

SELECT * FROM tblSubjectName;
DROP TABLE tblSubjectName;