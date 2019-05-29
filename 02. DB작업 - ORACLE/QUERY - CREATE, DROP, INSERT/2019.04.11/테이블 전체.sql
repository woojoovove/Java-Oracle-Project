
﻿-- 전체 테이블 작성

CREATE TABLE tblClassRoom --강의실
(
    seq     NUMBER PRIMARY KEY,  -- 강의실 PK
    name    VARCHAR2(50)        NULL,  -- 강의실 이름
    num     NUMBER              NULL,
    state   NUMBER DEFAULT 1    NOT NULL
);

--------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE tblLecturer --교사
(
    seq                 NUMBER PRIMARY KEY,  -- 교사번호PK
    name                VARCHAR2(20)        NULL,  -- 교사 이름
    registrationNum     VARCHAR2(7)         NULL,  -- 주민번호
    phoneNum            VARCHAR2(13)        NULL, -- 전화번호
    state NUMBER        DEFAULT 1 NOT       NULL
);

--------------------------------------------------------------------------------------------------------------------------------

CREATE SEQUENCE subjectTypeSeq;
CREATE TABLE tblSubjectType --과목 유형
(
    seq     NUMBER PRIMARY KEY, -- 번호
    name    VARCHAR2(50)        NOT NULL, -- 과목유형명
    state   NUMBER DEFAULT 1    NOT NULL
);

--------------------------------------------------------------------------------------------------------------------------------

CREATE SEQUENCE courseNameSeq;
CREATE TABLE tblCourseName --과정 이름
(
    seq     NUMBER PRIMARY KEY, -- 번호
    name    VARCHAR2(150)  NOT NULL, -- 과정명
    state   NUMBER DEFAULT 1      NOT NULL
);

--------------------------------------------------------------------------------------------------------------------------------

CREATE SEQUENCE tblcourseSeq;
CREATE TABLE tblCourse     --과정
(
    seq             NUMBER PRIMARY KEY,   -- 과정번호
    startDate       DATE                NULL,   -- 과정시작일
    endDate         DATE                NULL,  -- 과정종료일
    courseNameSeq   NUMBER              NOT NULL REFERENCES tblcourseName(seq), -- 과정명번호
    lectureSeq      NUMBER              NOT NULL REFERENCES tbllecturer(seq),  -- 교사번호
    classRoomSeq    NUMBER              NOT NULL REFERENCES tblClassRoom(seq)  -- 강의실번호
);

--------------------------------------------------------------------------------------------------------------------------------

CREATE SEQUENCE tblAvlbSeq;
CREATE TABLE tblAvlb        -- 가능과목유형
(
    seq             NUMBER PRIMARY KEY,   -- 교사가능과목번호
    lecturerseq     NUMBER              NOT NULL REFERENCES tblLecturer(seq),   -- 교사번호 참조
    subjectTypeSeq  NUMBER              NOT NULL REFERENCES tblSubjectType(seq)   -- 과목유형번호
);

--------------------------------------------------------------------------------------------------------------------------------

CREATE SEQUENCE subjectNameSeq;
CREATE TABLE tblSubjectName --과목 이름
(
    seq             NUMBER PRIMARY KEY, -- 번호
    name            VARCHAR2(100)       NOT NULL, -- 과목명
    subjectTypeSeq  VARCHAR2(50)        NOT NULL, -- 과목유형 번호
    state           NUMBER DEFAULT 1    NOT NULL
);

--------------------------------------------------------------------------------------------------------------------------------

CREATE SEQUENCE publisherSeq;    --출판사번호용 시퀀스 객체
CREATE TABLE tblPublisher  --출판사
(
    seq     NUMBER PRIMARY KEY, --출판사번호(pk)
    name    VARCHAR2(30)        NULL, --출판사명
    state   NUMBER DEFAULT 1    NOT NULL
);
   
--------------------------------------------------------------------------------------------------------------------------------

CREATE SEQUENCE studentSeq;
CREATE TABLE tblStudent --교육생 
(
    seq                 NUMBER PRIMARY KEY,
    studentInfoSeq      NUMBER              NOT NULL,
    courseSeq           NUMBER              NOT NULL,
    registrationTime    DATE                NOT NULL,
    status              VARCHAR2(20)        NULL,
    statusDate          DATE                NULL
);

--------------------------------------------------------------------------------------------------------------------------------


CREATE SEQUENCE quizSeq;
CREATE TABLE tblQuiz  --퀴즈
(
    seq         NUMBER PRIMARY KEY, --시험문제번호(pk)
    subjectSeq  NUMBER              NOT NULL, --과목번호
    type        VARCHAR2(6)         NULL, --시험종류
    num         NUMBER              NULL,--문제번호
    contents    VARCHAR2(200)       NULL,   --문제내용
    answer      VARCHAR2(300)       NULL,  --정답
    quizDate    DATE                NULL,
    state       NUMBER DEFAULT 1    NOT NULL
);

--------------------------------------------------------------------------------------------------------------------------------

CREATE SEQUENCE textbookSeq; 
CREATE TABLE tblTextbook  --교재
(
    seq             NUMBER PRIMARY KEY, --교재번호(pk)
    publisherSeq    NUMBER              NOT NULL,    --출판사 번호
    name            VARCHAR2(100)       NULL, --교재명
    state           NUMBER DEFAULT 1    NOT NULL 
);

--------------------------------------------------------------------------------------------------------------------------------

CREATE SEQUENCE tblStudentInfoSeq;  --교육생정보
CREATE TABLE tblStudentInfo
(
    seq                 NUMBER PRIMARY KEY,
    name                VARCHAR2(20)        NULL,
    registrationNum     VARCHAR2(7)         NULL,
    phoneNum            VARCHAR2(13)        NULL,
    registrationDate    DATE                NULL,
    state               NUMBER DEFAULT 1    NOT NULL   
);

--------------------------------------------------------------------------------------------------------------------------------
--seq,start,end,출석,필기,실기,과정이름번호,과정시퀀스,교과서
CREATE SEQUENCE tblSubjectSeq;  --과목
CREATE TABLE tblSubject
(
    seq                 NUMBER PRIMARY KEY,
    startdate           DATE                NULL,
    enddate             DATE                NULL,
    attendancepercent   NUMBER              NULL,
    writtenpercent      NUMBER              NULL,
    practicalpercent    NUMBER              NULL,
    subjectnameseq      NUMBER              NOT NULL REFERENCES tblsubjectname(seq),
    courseseq           NUMBER              NOT NULL REFERENCES tblcourse(seq),
    textbookseq         NUMBER              NOT NULL REFERENCES tbltextbook(seq),
    state               NUMBER DEFAULT 1    NOT NULL 
  
);

--------------------------------------------------------------------------------------------------------------------------------

CREATE SEQUENCE attendanceSeq;
CREATE TABLE tblAttendance --출입기록
(
    seq NUMBER PRIMARY KEY,
    attendanceDate DATE NOT NULL,
    studentSeq NUMBER REFERENCES tblStudent(seq)
);
--------------------------------------------------------------------------------------------------------------------------------

CREATE SEQUENCE tblSubjectGradeSeq;
CREATE TABLE tblSubjectGrade  --과목성적
(
    seq         NUMBER PRIMARY KEY,
    studentseq  NUMBER              NOT NULL REFERENCES tblstudent(seq),
    subjectseq  NUMBER              NOT NULL REFERENCES tblsubject(seq),
    written     NUMBER              NULL,
    practical   NUMBER              NULL,
    attendance  NUMBER              NULL
);

--------------------------------------------------------------------------------------------------------------------------------

CREATE SEQUENCE tblWarningSeq;
CREATE TABLE tblWarning --특별상담
(
   seq          NUMBER PRIMARY KEY  ,
   studentseq   NUMBER              NOT NULL REFERENCES tblstudent(seq),
   warningdate  DATE                NULL,
   contetnts    VARCHAR2(200)       NULL
);

--------------------------------------------------------------------------------------------------------------------------------

CREATE SEQUENCE tbltutoringseq; 
CREATE TABLE tbltutoring --상담일지
(
   seq          NUMBER PRIMARY KEY,
   studentseq   NUMBER              NOT NULL REFERENCES tblstudent(seq),
   tutordate    DATE                NULL,
   contetnts    VARCHAR2(200)       NULL
);

--------------------------------------------------------------------------------------------------------------------------------

CREATE SEQUENCE holidaySeq;
CREATE TABLE tblHoliday --공휴일
(
    seq     NUMBER PRIMARY KEY,
    regdate DATE                NOT NULL,
    name    VARCHAR2(30)        NOT NULL
);

--------------------------------------------------------------------------------------------------------------------------------

CREATE SEQUENCE dateSeq; --과정 내 모든 날짜
CREATE TABLE tblDate 
(
    seq     NUMBER PRIMARY KEY,
    regdate DATE                NOT NULL,
    state   VARCHAR2(30)        NOT NULL
);

--------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE VIEW vwDates  -- 과목 내 모든 날짜
    AS SELECT regdate, seq as studentSeq 
        FROM vwDate --,(SELECT seq FROM tblStudent)
            WHERE seq BETWEEN 1 AND 30
                AND TO_CHAR(vwdate.regdate, 'yyyy-mm-dd') BETWEEN '2018-08-13' AND '2018-08-31';  

--------------------------------------------------------------------------------------------------------------------------------

CREATE SEQUENCE recommendationSeq;
CREATE TABLE tblRecommendation -- 추천서
(
    seq                        NUMBER              PRIMARY KEY,
    studentSeq                 NUMBER              NOT NULL REFERENCES tblstudent(seq),
    lecturerRecommendation     VARCHAR2(1000)      NULL,
    adminConfirm               NUMBER DEFAULT 0    NOT NULL
);

--------------------------------------------------------------------------------------------------------------------------------
                  
  
CREATE VIEW tblvwStudentinfo    --학생정보
AS        
SELECT
    tblStudentinfo.name AS vStudentName,
    tblCoursename.name AS vCourseName,
    tblCourse.startdate AS vCourseStartDate,
    tblCourse.enddate AS vCourseEndDate,
    tblClassRoom.seq AS vClassRoom
    FROM tblStudent 
    INNER JOIN tblStudentinfo   ON tblStudent.studentinfoseq = tblStudentinfo.seq
    INNER JOIN tblCourse        ON tblStudent.courseseq = tblCourse.seq
    INNER JOIN tblCourseName    ON tblCourse.coursenameseq = tblCourseName.seq
    INNER JOIN tblClassRoom     ON tblcourse.classroomseq = tblClassRoom.seq;
              
            

--------------------------------------------------------------------------------------------------------------------------------
  
CREATE VIEW tblvwGradeList    --성적조회
AS  
SELECT 
    tblSubjectName.name AS vSubjectName,
    tblSubject.startDate AS vSubjectStartDate,
    tblsubject.endDate AS vSubjectEndDate,
    tblTextBook.name AS vTextBook,
    tblLecturer.name AS vLecturer,
    tblSubject.writtenpercent AS vWrittenpercent,
    tblSubject.practicalPercent AS vPracticalPercent,
    tblSubject.attendancepercent AS vAttendancepercent,
    tblsubject.endDate AS vQuizDate

  FROM tblsubject

    INNER JOIN tblSubjectName         ON tblSubjectName.seq = tblSubject.subjectnameseq
    INNER JOIN tblTextbook            ON tblTextbook.seq = tblsubject.textbookseq
    LEFT OUTER JOIN tblSubjectGrade   ON tblSubjectgrade.subjectseq = tblSubject.seq
    INNER JOIN tblQuiz                ON tblSubject.seq = tblquiz.subjectseq
    INNER JOIN tblCourse              ON tblCourse.seq = tblsubject.courseseq
    INNER JOIN tblLecturer            ON tblLecturer.seq = tblCourse.lecturerseq
    WHERE (SYSDATE - tblSubject.endDate) > 0;


--------------------------------------------------------------------------------------------------------------------------------
 
CREATE VIEW tblvwQuizList   --문제확인
AS  
SELECT 
    tblSubjectName.name AS vSubjectName,
    tblQuiz.num AS vQuizNum,
    tblQuiz.contents AS vQuizContents,
    tblQuiz.answer AS vQuizAnswer
    
  FROM tblSubject
    INNER JOIN tblSubjectName ON tblSubjectName.seq = tblSubject.subjectnameseq
    INNER JOIN tblQuiz        ON tblquiz.subjectseq = tblSubject.seq
    WHERE (SYSDATE - tblSubject.endDate) > 0;


--------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE VIEW vwLecturerInfo
AS
SELECT

    c.seq                        AS "vCourseNum",
    n.name                       AS "vCourseName",
    c.startdate                  AS "vCourseStart",
    c.enddate                    AS "vCourseEnd",
    c.classroomSeq || '강의실'    AS "vClassroomName",
    CASE
        WHEN c.seq IN (SELECT courseseq FROM tblSubject) THEN 'O'
        ELSE 'X'
    END                          AS "subjectState",
    (SELECT COUNT(*) FROM tblStudent 
        WHERE courseSeq = c.seq) AS "studentCount"

        FROM tblCourse c

            INNER JOIN tblCourseName n
            ON c.coursenameseq = n.seq
        
                    ORDER BY c.seq;


--------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE VIEW vwCourseInfo
AS
SELECT 

    i.name              AS "vName",
    i.registrationnum   AS "vRegistrationNum",
    i.phonenum          AS "vPhoneNum",
    i.registrationdate  AS "vRegistrationDate",
    i.state             AS "vState"
    
        FROM tblCourse c
        
            INNER JOIN tblStudent s
            ON c.seq = s.courseseq
            
                INNER JOIN tblStudentInfo i
                ON s.studentinfoseq = i.seq;


--------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE VIEW vwSubjectInfo
AS
SELECT 

    s.seq       AS "vSubjectNum",
    sn.name     AS "vSubjectName",
    t.name      AS "vTextbookName",
    l.name      AS "vLecturerName"
    
        FROM tblSubject s
        
            INNER JOIN tblSubjectname sn
            ON s.subjectnameseq = sn.seq
            
                INNER JOIN tbltextbook t
                ON s.textbookseq = t.seq
                
                    INNER JOIN tblCourse c
                    ON s.courseseq = c.seq
                    
                        INNER JOIN tblLecturer l
                        ON c.lecturerseq = l.seq
                    
                            WHERE c.seq = 
                                (SELECT seq FROM tblCoursename 
                                    WHERE name = '자바 기반 융합형 SW 개발자 양성과정');


--------------------------------------------------------------------------------------------------------------------------------

--해당 과정의 담당 교사가 강의 가능한 과목만 출력되도록 하는 뷰입니다
CREATE OR REPLACE VIEW vwSubjectName
AS
SELECT 
    
    l.name AS "vLecturerName",
    sn.seq AS vSeq,
    sn.name "vAvailableSubject"
        
            FROM tblLecturer l
            
                INNER JOIN tblAvlb a
                ON l.seq = a.lecturerseq
                
                    INNER JOIN tblSubjectType st
                    ON a.subjectTypeSeq = st.seq
                    
                        INNER JOIN tblSubjectName sn
                        ON st.seq = sn.subjecttypeseq
                
                            WHERE l.seq = 
                                (SELECT seq FROM tblLecturer WHERE name = '차은우') --과정을 담당하는 교사명
                            
                                ORDER BY sn.seq;


--------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE VIEW vwCourseList
AS
SELECT 

    c.seq       AS vCourseNum,
    cn.name     AS vCourseName,
    c.startdate AS vCourseStart,
    c.enddate   AS vCourseEnd
    
        FROM tblCourse c
            
            INNER JOIN tblCourseName cn
                ON c.coursenameseq = cn.seq;


--------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE VIEW vwSubjectList
AS
SELECT 

    c.seq                AS vCourseNum,
    cn.name              AS vCourseName,
    c.startdate          AS vCourseStart,
    c.enddate            AS vCourseEnd,
    sj.seq               AS vSubjectNum,
    sn.name              AS vSubjectName,
    tb.name              AS vTextBookname,
    sj.writtenPercent    AS vWrittenPercent,
    sj.practicalPercent  AS vPracticalPercent,
    sj.attendancePercent AS vAttendancePercent
    
     FROM tblCourse c
    
        INNER JOIN tblCourseName cn
            ON c.coursenameseq = cn.seq	
                
            INNER JOIN tblSubject sj
                ON c.seq = sj.courseseq
                    
                INNER JOIN tblSubjectName sn
                    ON sj.subjectnameseq = sn.seq
                                            
                    INNER JOIN tblTextBook tb
                        ON sj.textbookseq = tb.seq
                        
                            WHERE c.seq = 1;


--------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE VIEW vwSubjectSelect
AS
SELECT 

    sj.seq AS vSubjectNum,
    sn.name AS vSubjectName
    
         FROM tblCourse c
         
            INNER JOIN tblSubject sj
            ON c.seq = sj.courseseq

                INNER JOIN tblSubjectName sn
                    ON sj.subjectnameseq = sn.seq
                    
                        WHERE c.seq = 1 AND sj.seq = 1;


--------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE VIEW vwSubjectPercent
AS
SELECT 

    sj.seq AS subjectNum,
    sn.name AS subjectName,
    sj.writtenPercent AS writtenPercent,
    sj.practicalPercent AS practicalPercent,
    sj.attendancePercent AS attendancePercent
    
         FROM tblCourse c
         
            INNER JOIN tblSubject sj
            ON c.seq = sj.courseseq

                INNER JOIN tblSubjectName sn
                    ON sj.subjectnameseq = sn.seq
                    
                        WHERE c.seq = 1 AND sj.seq = 1; 


--------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE VIEW vwSubjectQuizdate
AS
SELECT 

    sj.seq AS subjectNum,
    sn.name AS subjectName,
    q.quizdate AS quizdate
    
         FROM tblCourse c
         
            INNER JOIN tblSubject sj
            ON c.seq = sj.courseseq

                INNER JOIN tblSubjectName sn
                    ON sj.subjectnameseq = sn.seq
                    
                        INNER JOIN tblQuiz q
                            ON sj.seq = q.subjectSeq
                    
                                WHERE c.seq = 1 AND sj.seq = 3;


--------------------------------------------------------------------------------------------------------------------------------



--------------------------------------------------------------------------------------------------------------------------------




--------------------------------------------------------------------------------------------------------------------------------




--------------------------------------------------------------------------------------------------------------------------------




--------------------------------------------------------------------------------------------------------------------------------




--------------------------------------------------------------------------------------------------------------------------------




--------------------------------------------------------------------------------------------------------------------------------




--------------------------------------------------------------------------------------------------------------------------------




--------------------------------------------------------------------------------------------------------------------------------



select * from tab;



