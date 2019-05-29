--seol >  tblQuiz.sql


DROP TABLE tblQuiz;

DROP SEQUENCE quizSeq;


--시험문제 테이블


CREATE SEQUENCE quizSeq;


CREATE TABLE tblQuiz
(
    seq NUMBER PRIMARY KEY, --시험문제번호(pk)
    type VARCHAR2(6) NULL, --시험종류
    num NUMBER NULL,--문제번호
    contents VARCHAR2(200) NULL,   --문제내용
    answer  VARCHAR2(200) NULL,  --정답
    subjectSeq NUMBER NULL, --과목번호
    quizDate DATE DEFAULT NULL,
    state number(1) DEFAULT 1 null
);

alter table tblQuiz
      add(contents VARCHAR2(300) NULL);



INSERT INTO tblQuiz(seq, type, num, contents, answer, subjectSeq)  VALUES(quizSeq.NEXTVAL, '필기', 1, '가용성, 비용 수준, (  )은 데이터베이스 요구사항에 따라 하드웨어와 운영체제에 적합한 일반적인 DBMS를 선정하는 기준이다.', '지속적인 기술 지원', 3);
INSERT INTO tblQuiz(seq, type, num, contents, answer, subjectSeq)  VALUES(quizSeq.NEXTVAL, '필기', 2, '( )의 크기는 데이터 처리의 성능에 영향을 미칠 수 있고, 자료처리를 위한 메모리 용향을 확보하기 위한 하드디스크의 저장 장치이다.', '스왑' , 3);
INSERT INTO tblQuiz(seq, type, num, contents, answer, subjectSeq)  VALUES(quizSeq.NEXTVAL, '필기', 3, '( )는 이메일을 보내기위해 이용되는 프로토콜.사용하는 TCP포트번호는 25번이다. 상대서버를 지시하기 위해 DNS의 MX레코드가 사용됨.', 'SMTP' ,3);
INSERT INTO tblQuiz(seq, type, num, contents, answer, subjectSeq)  VALUES(quizSeq.NEXTVAL, '필기', 4, '( )는 웹 애플리케이션을 수행하는 미들웨어로서, 웹서버와 JSP/Servlet 애플리케이션 수행을 위한 엔진으로 구성된다.', ' WAS(Web Application Server)' , 3);
INSERT INTO tblQuiz(seq, type, num, contents, answer, subjectSeq)  VALUES(quizSeq.NEXTVAL, '필기', 5, '( )는 개발자가 작성한 코드에 대한 빌드 및 배포, 그리고 라이브러리에 대한 의존성 관리에 사용하는 도구로 Ant, Maven 등이 있다.', '빌드 도구' , 3);
--5번부터 OX
INSERT INTO tblQuiz(seq, type, num, contents, answer, subjectSeq)  VALUES(quizSeq.NEXTVAL, '필기', 6, 'DBMS(Data Base Management System)는 서로 관련되는 데이터들을 일정한 체계와 순서로 모아 놓은 데이터의 집합을 의미한다.', 'X' ,3);
INSERT INTO tblQuiz(seq, type, num, contents, answer, subjectSeq)  VALUES(quizSeq.NEXTVAL, '필기', 7, '구현도구는 코드의 작성 및 편집, 디버깅 등과 같은 다양한 작업이 가능하며 Eclipse, NetBeans등 소프트웨어들이 사용되고 있다.', 'X' , 3);
INSERT INTO tblQuiz(seq, type, num, contents, answer, subjectSeq)  VALUES(quizSeq.NEXTVAL, '필기', 8, '네트워크 프로토콜에 NNTP는 인터넷에 연결된 컴퓨터에서 프로그램 간에 안정적으로,순서대로,에러없이 교환할수있게 한다', 'X' , 3);
INSERT INTO tblQuiz(seq, type, num, contents, answer, subjectSeq)  VALUES(quizSeq.NEXTVAL, '필기', 9, '네트워크 소켓은 네트워크 통신을 위한 프로그램들은 소켓을 생성하고, 이 소켓을 통해서 서로 데이터를 교환한다.', 'O' , 3);
INSERT INTO tblQuiz(seq, type, num, contents, answer, subjectSeq)  VALUES(quizSeq.NEXTVAL, '필기', 10, '개발환경구축을 위해서는 해당 프로젝트의 목적 및 구축 설계에 대한 명확한 이해가 필요하다', 'O' , 3);

INSERT INTO tblQuiz(seq, type, num, contents, answer, subjectSeq)  VALUES(quizSeq.NEXTVAL, '필기', 1, '( )은 데이터를 정의하는 언어로서, DBML에서는 오브젝트라고 한다.', 'DDL(Data Definition Language)' , 8);
INSERT INTO tblQuiz(seq, type, num, contents, answer, subjectSeq)  VALUES(quizSeq.NEXTVAL, '필기', 2, '데이터를 조작하는 명령어인 DML의 명령어는 INSERT, ( ), UPDATE, DELETE가 있다. ', 'SELECT' , 8);
INSERT INTO tblQuiz(seq, type, num, contents, answer, subjectSeq)  VALUES(quizSeq.NEXTVAL, '필기', 3, '( )은 일 처리 단위를 의미하며, 논리적 연산 단위이다. 하나 이상의 SQL문장이 포함되며, 분할할 수 없는 최소 단위이다.', '트랜잭션' , 8);
INSERT INTO tblQuiz(seq, type, num, contents, answer, subjectSeq)  VALUES(quizSeq.NEXTVAL, '필기', 4, '( )에는 데이터베이스의 데이터를 제외한 모든 정보가 있다. 메타데이터로 구성되어 있다고 할 수 있다.', '데이터 사전' , 8);
INSERT INTO tblQuiz(seq, type, num, contents, answer, subjectSeq)  VALUES(quizSeq.NEXTVAL, '필기', 5, '( )은 결합을 의미하며 관계형 데이터 베이스에서의 조인은 교집합 결과를 가지는 결합방법을 의미한다.', '조인(JOIN)' , 8);
INSERT INTO tblQuiz(seq, type, num, contents, answer, subjectSeq)  VALUES(quizSeq.NEXTVAL, '필기', 6, 'UNION으로 연결된 SELECT문에 나타나는 컬럼의 숫자는 달라야 한다.', 'X' , 8);
INSERT INTO tblQuiz(seq, type, num, contents, answer, subjectSeq)  VALUES(quizSeq.NEXTVAL, '필기', 7, '인덱스 설계과정에 접근 경로 수집 > 접근 경로 결정 > 분포도 조사를 통한 후보 컬럼 설정 > 컬럼 조합 및 순서 결정 > 적용시험', 'X' , 8);
INSERT INTO tblQuiz(seq, type, num, contents, answer, subjectSeq)  VALUES(quizSeq.NEXTVAL, '필기', 8, '임의 접근 통제는 시스템 객체에 대한 접근을 사용자 개인 또는 그룹의 식별자를 기반으로 제한하는 방법이다.', 'O' , 8);
INSERT INTO tblQuiz(seq, type, num, contents, answer, subjectSeq)  VALUES(quizSeq.NEXTVAL, '필기', 9, '테이블 생성을 위한 CREATE 문에 제약 조건을 명시하는 형태로 사용하며, ALTER를 통해 테이블의 제약 조건을 변경할 수 있다', 'O' , 8);
INSERT INTO tblQuiz(seq, type, num, contents, answer, subjectSeq)  VALUES(quizSeq.NEXTVAL, '필기', 10, '테이블은 속성의 데이터 타입과 크기, 제약 조건 등을 지정한 정보이며, 속성이 가질 수 있는 값의 범위로 이해 가능하다', 'X' ,8 );

INSERT INTO tblQuiz(seq, type, num, contents, answer, subjectSeq)  VALUES(quizSeq.NEXTVAL, '필기', 1, '( )는 네트워크를 통하여 다른 서버 시스템 상의 컴퓨터에 원격 서비스에 접속할 수 있는 응용 프로그램이나 서비스이다.', '클라이언트' , 16);
INSERT INTO tblQuiz(seq, type, num, contents, answer, subjectSeq)  VALUES(quizSeq.NEXTVAL, '필기', 2, '( )는 웹 페이지 전체의 일관성을 유지할 수 있도록 스타일을 미리 지정해 둔 시트를 의미한다.', 'CSS ' , 16);
INSERT INTO tblQuiz(seq, type, num, contents, answer, subjectSeq)  VALUES(quizSeq.NEXTVAL, '필기', 3, '( )는 객체지향 프로그래밍 언어로서 웹 브라우저에서 주로 사용된다.', '자바스크립트' , 16);
INSERT INTO tblQuiz(seq, type, num, contents, answer, subjectSeq)  VALUES(quizSeq.NEXTVAL, '필기', 4, '( )은 UI테스트에 대한 보편적인 방법으로 사용성 테스트에 대한 계획수립, 사용성 테스트 설계, 사용성 테스트 수행과 결과 검토로 구분하여 진행된다.', '사용성 테스트' , 16);
INSERT INTO tblQuiz(seq, type, num, contents, answer, subjectSeq)  VALUES(quizSeq.NEXTVAL, '필기', 5, '( )은 어떠한 사용자, 어떠한 기술 환경에서도 사용자가 전문적인 능력없이 웹 사이트에서 제공하는 모든 정보에 접근할수있도록 보장하는 것을 뜻함. ', '웹 접근성' , 16);
INSERT INTO tblQuiz(seq, type, num, contents, answer, subjectSeq)  VALUES(quizSeq.NEXTVAL, '필기', 6, 'HTML의 Aside는 본문 내용 이외에 표현하고자 하는 기타 내용이 있을 경우에 영역을 지정할 때 사용하거나 서브 메뉴를 표시 할 때 사용하기도 한다.', 'O' , 16);
INSERT INTO tblQuiz(seq, type, num, contents, answer, subjectSeq)  VALUES(quizSeq.NEXTVAL, '필기', 7, '사용성 테스트 과정은 계획수립 > 테스트 설계 > 결과 보고서 작성이다.', 'X' , 16);
INSERT INTO tblQuiz(seq, type, num, contents, answer, subjectSeq)  VALUES(quizSeq.NEXTVAL, '필기', 8, 'HTML에서 onload는 onclick 핸들러와 유사하게 동작하지만, 마우스를 누를 때와 놓았을 때를 구분하여 동작할 수 있다는 점이 다르다', 'X' , 16);
INSERT INTO tblQuiz(seq, type, num, contents, answer, subjectSeq)  VALUES(quizSeq.NEXTVAL, '필기', 9, '웹 표준은 서비스 이용자 단말기의 하드웨어 및 소프트웨어 환경이 다른 경우에도 동등한 서비스를 제공하는 것을 의미한다.', 'X' , 16);
INSERT INTO tblQuiz(seq, type, num, contents, answer, subjectSeq)  VALUES(quizSeq.NEXTVAL, '필기', 10, '화면구현단계에서 요구사항 명세서와 제약사항에 포한된 항목(기능, 성능, 인터페이스 등) 등이 포함되었는지 확인한다.', 'O' , 16);



select*from tblQuiz;

rollback;


COMMIT;



















































select* from tabs;


































