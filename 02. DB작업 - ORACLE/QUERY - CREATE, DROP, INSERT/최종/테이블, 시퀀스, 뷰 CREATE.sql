-- 전체 테이블 작성

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

CREATE SEQUENCE subjectTypeSeq START WITH 1;
CREATE TABLE tblSubjectType --과목 유형
(
    seq     NUMBER PRIMARY KEY, -- 번호
    name    VARCHAR2(50)        NOT NULL, -- 과목유형명
    state   NUMBER DEFAULT 1    NOT NULL
);

--------------------------------------------------------------------------------------------------------------------------------

CREATE SEQUENCE courseNameSeq START WITH 1;
CREATE TABLE tblCourseName --과정 이름
(
    seq     NUMBER PRIMARY KEY, -- 번호
    name    VARCHAR2(150)  NOT NULL, -- 과정명
    state   NUMBER DEFAULT 1      NOT NULL
);

--------------------------------------------------------------------------------------------------------------------------------

CREATE SEQUENCE tblcourseSeq START WITH 1;
CREATE TABLE tblCourse     --과정
(
    seq             NUMBER PRIMARY KEY,   -- 과정번호
    startDate       DATE                NULL,   -- 과정시작일
    endDate         DATE                NULL,  -- 과정종료일
    courseNameSeq   NUMBER              NOT NULL REFERENCES tblcourseName(seq), -- 과정명번호
    lecturerSeq      NUMBER              NOT NULL REFERENCES tbllecturer(seq),  -- 교사번호
    classRoomSeq    NUMBER              NOT NULL REFERENCES tblClassRoom(seq)  -- 강의실번호
);

--------------------------------------------------------------------------------------------------------------------------------

CREATE SEQUENCE tblAvlbSeq START WITH 1;
CREATE TABLE tblAvlb        -- 가능과목유형
(
    seq             NUMBER PRIMARY KEY,   -- 교사가능과목번호
    lecturerseq     NUMBER              NOT NULL REFERENCES tblLecturer(seq),   -- 교사번호 참조
    subjectTypeSeq  NUMBER              NOT NULL REFERENCES tblSubjectType(seq)   -- 과목유형번호
);

--------------------------------------------------------------------------------------------------------------------------------

CREATE SEQUENCE subjectNameSeq START WITH 1;
CREATE TABLE tblSubjectName --과목 이름
(
    seq             NUMBER PRIMARY KEY, -- 번호
    name            VARCHAR2(100)       NOT NULL, -- 과목명
    subjectTypeSeq  VARCHAR2(50)        NOT NULL, -- 과목유형 번호
    state           NUMBER DEFAULT 1    NOT NULL
);

--------------------------------------------------------------------------------------------------------------------------------

CREATE SEQUENCE publisherSeq START WITH 1;    --출판사번호용 시퀀스 객체
CREATE TABLE tblPublisher  --출판사
(
    seq     NUMBER PRIMARY KEY, --출판사번호(pk)
    name    VARCHAR2(30)        NULL, --출판사명
    state   NUMBER DEFAULT 1    NOT NULL
);
   
--------------------------------------------------------------------------------------------------------------------------------

CREATE SEQUENCE studentSeq START WITH 1;
CREATE TABLE tblStudent --교육생 
(
    seq                 NUMBER PRIMARY KEY,
    studentInfoSeq      NUMBER              NOT NULL,
    courseSeq           NUMBER              NOT NULL,
    registrationTime    DATE                NOT NULL,
    status              NUMBER              NULL,
    statusDate          DATE                NULL
);

--------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE tblAttendanceType -- 출석 유형
(
    seq             NUMBER PRIMARY KEY,
    name            VARCHAR2(20)        NOT NULL,
    legitimacy      VARCHAR(3)          NOT NULL,
    point           NUMBER              NOT NULL,
    weightedPoint   NUMBER              NOT NULL,
    CHECK (legitimacy IN ('YES', 'NO')) 
);

--------------------------------------------------------------------------------------------------------------------------------

CREATE SEQUENCE quizSeq START WITH 1;
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

CREATE SEQUENCE textbookSeq START WITH 1; 
CREATE TABLE tblTextbook  --교재
(
    seq             NUMBER PRIMARY KEY, --교재번호(pk)
    publisherSeq    NUMBER              NOT NULL,    --출판사 번호
    name            VARCHAR2(100)       NULL, --교재명
    state           NUMBER DEFAULT 1    NOT NULL 
);

--------------------------------------------------------------------------------------------------------------------------------

CREATE SEQUENCE tblStudentInfoSeq START WITH 1;  --교육생정보
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
CREATE SEQUENCE tblSubjectSeq START WITH 1;  --과목
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

CREATE SEQUENCE attendanceSeq START WITH 1;
CREATE TABLE tblAttendance -- 출석 
(
    seq                 NUMBER PRIMARY KEY,
    attendanceDate      DATE                NOT NULL,
    studentSeq          NUMBER              NOT NULL REFERENCES tblStudent(seq)
);

--------------------------------------------------------------------------------------------------------------------------------

CREATE SEQUENCE tblSubjectGradeSeq START WITH 1;
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

CREATE SEQUENCE tblWarningSeq START WITH 1;
CREATE TABLE tblWarning --특별상담
(
--   seq          NUMBER PRIMARY KEY  ,
--   studentseq   NUMBER              NOT NULL REFERENCES tblstudent(seq),
--   warningdate  DATE                NULL,
--   contetnts    VARCHAR2(200)       NULL
   
    seq                 NUMBER PRIMARY KEY,
    studentSeq          NUMBER,
    studentName         VARCHAR2(20),
    attendanceGrade     NUMBER,
    courseSeq           NUMBER,
    courseName          VARCHAR(150),
    lecturerSeq         NUMBER,
    lecturerName        VARCHAR(20),
    counselingDate      DATE DEFAULT SYSDATE,
    counselingContent   VARCHAR2(600)
);

--------------------------------------------------------------------------------------------------------------------------------

CREATE SEQUENCE tbltutoringseq START WITH 1; 
CREATE TABLE tbltutoring --상담일지
(
   seq          NUMBER PRIMARY KEY,
   studentseq   NUMBER              NOT NULL REFERENCES tblstudent(seq),
   tutordate    DATE                NULL,
   contetnts    VARCHAR2(200)       NULL
);

--------------------------------------------------------------------------------------------------------------------------------

CREATE SEQUENCE holidaySeq START WITH 1;
CREATE TABLE tblHoliday --공휴일
(
    seq     NUMBER PRIMARY KEY,
    regdate DATE                NOT NULL,
    name    VARCHAR2(30)        NOT NULL
);

--------------------------------------------------------------------------------------------------------------------------------

CREATE SEQUENCE dateSeq START WITH 1; --과정 내 모든 날짜
CREATE TABLE tblDate 
(
    seq     NUMBER PRIMARY KEY,
    regdate DATE                NOT NULL,
    state   VARCHAR2(30)        NOT NULL
);


--------------------------------------------------------------------------------------------------------------------------------

CREATE SEQUENCE recommendationSeq START WITH 1;
CREATE TABLE tblRecommendation -- 추천서
(
    seq                        NUMBER              PRIMARY KEY,
    studentSeq                 NUMBER              NOT NULL REFERENCES tblstudent(seq),
    lecturerRecommendation     VARCHAR2(1000)      NULL,
    adminConfirm               NUMBER DEFAULT 0    NOT NULL,
    ranking                    NUMBER              NULL
    
);

--------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE VIEW vwCourseEditInfo
AS
SELECT

    c.seq                        AS "vCourseNum",
    n.name                       AS "vCourseName",
    c.startdate                  AS "vCourseStart",
    c.enddate                    AS "vCourseEnd",
    '제 ' || c.classroomSeq || '강의실'    AS "vCourseClassroom",
    l.seq                        AS "vCourseLecturerSeq",
    l.name                       AS "vCourseLecturer"

        FROM tblCourse c

            INNER JOIN tblCourseName n
            ON c.coursenameseq = n.seq
            
                INNER JOIN tblLecturer l
                ON c.lecturerseq = l.seq
        
                    ORDER BY c.seq;

--------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE VIEW vwCourseInfo
AS
SELECT

    c.seq                        AS "vCourseNum",
    n.name                       AS "vCourseName",
    c.startdate                  AS "vCourseStart",
    c.enddate                    AS "vCourseEnd",
    '제 ' || c.classroomSeq || '강의실'    AS "vCourseClassroom",
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

CREATE OR REPLACE VIEW vwCourseStudentInfo
AS
SELECT 
    
    s.seq,
    c.seq               AS "vCourseSeq",
    i.name              AS "vName",
    i.registrationnum   AS "vRegistrationNum",
    i.phonenum          AS "vPhoneNum",
    i.registrationdate  AS "vRegistrationDate",
    i.state             AS "vState",
    s.status            AS "vStatus"
    
        FROM tblCourse c
        
            INNER JOIN tblStudent s
            ON c.seq = s.courseseq
            
                INNER JOIN tblStudentInfo i
                ON s.studentinfoseq = i.seq;


--------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE VIEW vwCourseSubjectList
AS
SELECT 
    
    c.seq       AS "vCourseSeq",
    s.seq       AS "vSubjectSeq",
    sn.name     AS "vSubjectName",
    s.startdate AS "vSubjectStart",
    s.enddate   AS "vSubjectEnd",
    t.name      AS "vTextbookName",
    p.name      AS "vPublisherName",
    l.name      AS "vLecturerName",
    s.state
    
        FROM tblSubject s
        
            INNER JOIN tblSubjectname sn
            ON s.subjectnameseq = sn.seq
            
                INNER JOIN tbltextbook t
                ON s.textbookseq = t.seq
                
                    INNER JOIN tblPublisher p
                    ON t.publisherseq = p.seq
                
                        INNER JOIN tblCourse c
                        ON s.courseseq = c.seq
                        
                            INNER JOIN tblLecturer l
                            ON c.lecturerseq = l.seq
                            
                                ORDER BY c.seq;

--------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE VIEW vwSubjectName
AS
SELECT 

    sn.seq AS "vSeq",
    l.name AS "vLecturerName",   
    sn.name "vAvailableSubject"
        
            FROM tblLecturer l
            
                INNER JOIN tblAvlb a
                ON l.seq = a.lecturerseq
                
                    INNER JOIN tblSubjectType st
                    ON a.subjectTypeSeq = st.seq
                    
                        INNER JOIN tblSubjectName sn
                        ON st.seq = sn.subjecttypeseq
                            
                                ORDER BY sn.seq;


--------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE VIEW vwTextbookInfo
AS
SELECT 

    t.seq       AS "vTextbookSeq",
    t.name      AS "vTextbookName",
    p.name      AS "vPublisher",
    t.state     AS "vTextbookState"
    
        FROM tblTextbook t

            INNER JOIN tblPublisher p
            ON t.publisherseq = p.seq;

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

CREATE OR REPLACE VIEW vwSubjectPercentQuiz
AS
SELECT 

    c.seq                AS vCourseNum,
    sj.seq               AS vSubjectNum,
    sn.name              AS vSubjectName,
    sj.writtenPercent    AS vWrittenPercent,
    sj.practicalPercent  AS vPracticalPercent,
    sj.attendancePercent AS vAttendancePercent,
    qz.num               AS vQuizNum,
    qz.quizdate          AS vQuizDate,
    qz.contents          AS vQuizContnts,
    qz.answer            AS vQuizAnswer,
    qz.state             AS vQuizState
    
     FROM tblCourse c
    
        INNER JOIN tblCourseName cn
            ON c.coursenameseq = cn.seq	
                
            INNER JOIN tblSubject sj
                ON c.seq = sj.courseseq
                    
                INNER JOIN tblSubjectName sn
                    ON sj.subjectnameseq = sn.seq
                    
                        INNER JOIN tblQuiz qz
                            ON sj.seq = qz.subjectseq;

--------------------------------------------------------------------------------------------------------------------------------

--교육생 출결 조회 - 과목별 출결 조회 - 과목 리스트
CREATE OR REPLACE VIEW vwsubjectAttendance
AS
SELECT 
    
    c.seq           AS vCourseSeq,
    st.seq          AS vStudentSeq,
    sti.name        AS vStudentName,
    sb.seq          AS vSubjectSeq,
    sbn.name        AS vSubjectName,
    sb.startdate    AS vSubjectStart,
    sb.enddate      AS vSubjectEnd
    
    
        FROM tblCourse c
        
            INNER JOIN tblStudent st
            ON c.seq = st.courseseq
                
                INNER JOIN tblStudentInfo sti
                ON st.studentinfoseq = sti.seq
                
                    INNER JOIN tblSubject sb
                    ON c.seq = sb.courseseq
                        
                        INNER JOIN tblSubjectName sbn
                        ON sb.subjectnameseq = sbn.seq;

--------------------------------------------------------------------------------------------------------------------------------           
    
CREATE or replace VIEW vwStudentinfo    --학생정보
AS        
SELECT distinct
    tblStudent.seq AS vstuSeq,
    tblStudentinfo.registrationnum AS vREGISTRATIONNUM,
    tblStudentinfo.name AS vStudentName,
    tblCoursename.name AS vCourseName,
    tblCourse.startdate AS vCourseStartDate,
    tblCourse.enddate AS vCourseEndDate,
    tblClassRoom.seq AS vClassRoom
    FROM tblStudent 
    INNER JOIN tblStudentinfo   ON tblStudent.studentinfoseq = tblStudentinfo.seq
    INNER JOIN tblCourse        ON tblStudent.courseseq = tblCourse.seq
    INNER JOIN tblCourseName    ON tblCourse.coursenameseq = tblCourseName.seq
    INNER JOIN tblClassRoom     ON tblcourse.classroomseq = tblClassRoom.seq
    INNER JOIN tblSubject       ON tblCourse.seq = tblsubject.courseseq
    WHERE (SYSDATE - tblCourse.endDate) > 0;        

--------------------------------------------------------------------------------------------------------------------------------
  
CREATE OR REPLACE VIEW vwGradeList    --성적조회
AS  
SELECT DISTINCT
    tblstudentinfo.NAME AS vStuName,
    tblSubject.seq AS vSubjectSeq,
    tblSubjectName.NAME AS vSubjectName,
    tblSubject.startDate AS vSubjectStartDate,
    tblsubject.endDate AS vSubjectEndDate,
    tblTextBook.NAME AS vTextBook,
    tblLecturer.NAME AS vLecturer,
    tblSubject.writtenpercent AS vWrittenpercent,
    tblSubject.practicalPercent AS vPracticalPercent,
    tblSubject.attendancepercent AS vAttendancepercent,
    tblsubjectgrade.written AS vwritten,
    tblsubjectgrade.practical AS vpractical,
    tblsubjectgrade.attendance AS vattendance,
    tblsubject.endDate AS vQuizDate,
    tblSubjectGrade.studentseq AS stuseq

FROM tblcourse
    INNER JOIN tblsubject ON tblcourse.seq = tblsubject.courseseq
    INNER JOIN tblcoursename ON tblcoursename.seq = tblcourse.coursenameseq
    INNER JOIN tbltextbook ON tbltextbook.seq = tblsubject.textbookseq
    INNER JOIN tblsubjectgrade ON tblsubject.seq = tblsubjectgrade.subjectseq
    INNER JOIN tblquiz ON tblquiz.subjectseq = tblsubject.seq
    INNER JOIN tbllecturer ON tbllecturer.seq = tblcourse.lecturerseq
    INNER JOIN tblsubjectname ON tblsubjectname.seq = tblsubject.subjectnameseq
    INNER JOIN tblstudent  ON tblstudent.seq = tblsubjectgrade.studentseq
    INNER JOIN tblstudentinfo ON tblstudentinfo.seq = tblstudent.studentinfoseq
        WHERE(sysdate - tblcourse.enddate) >0
        ORDER BY vStuName ASC;


--------------------------------------------------------------------------------------------------------------------------------
 
CREATE or replace VIEW vwQuizList   --문제확인
AS  
SELECT 
    tblsubjectName.name AS vSubjectName,
    tblsubject.seq AS vseq,
    tblQuiz.num AS vQuizNum,
    tblQuiz.contents AS vQuizContents,
    tblQuiz.answer AS vQuizAnswer
    
  FROM tblSubject
    INNER JOIN tblQuiz        ON tblquiz.subjectseq = tblSubject.seq
    INNER JOIN tblsubjectName ON tblsubjectName.seq = tblSubject.subjectNameSeq
        where tblsubject.seq between 1 and 6 order by vseq asc, vQuizNum asc;                   

--------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE VIEW vwattendance AS

SELECT  studentSeq as vstudentSeq, 
        TO_CHAR(attendanceDate, 'yyyy-mm-dd') as vattendanceDate,
        
        CASE
            WHEN TO_CHAR(attendanceDate, 'yyyy-mm-dd') BETWEEN '2018-07-02'AND '2018-08-10'THEN 1
            WHEN TO_CHAR(attendanceDate, 'yyyy-mm-dd') BETWEEN '2018-08-13'AND '2018-08-31'THEN 2
            WHEN TO_CHAR(attendanceDate, 'yyyy-mm-dd') BETWEEN '2018-09-03'AND '2018-09-24'THEN 3
            WHEN TO_CHAR(attendanceDate, 'yyyy-mm-dd') BETWEEN '2018-10-15'AND '2018-11-05'THEN 4
        END as subjectSeq,
       
        to_char((
        select min(attendancedate) from TBLATTENDANCE
                where to_char(attendancedate, 'yyyy-mm-dd') = to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
        ), 'yyyy-mm-dd hh24:mi:ss') as checkIn,
        
        to_char((
            select max(attendancedate) from TBLATTENDANCE
                where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
        ), 'yyyy-mm-dd hh24:mi:ss') as checkOut,
        
        CASE
            WHEN COUNT(*) =4 THEN 1
            ELSE 0
        END as goout1,
        
        CASE
            WHEN COUNT(*) =6 THEN 1
            ELSE 0
        END as goout2,
        
        CASE
            WHEN COUNT(*) >=8 THEN 1
            ELSE 0
        END as goout3,
        
        
        
    CASE
        WHEN
            1>=
                (((
                    select min(attendancedate) from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                )
                -
                to_date((
                    select to_char(min(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                ) || '09:00:00', 'yyyy-mm-dd hh24:mi:ss')) * 24)
            AND
            
            
                (((
                    select min(attendancedate) from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                )
                -
                to_date((
                    select to_char(min(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                ) || '09:00:00', 'yyyy-mm-dd hh24:mi:ss')) * 24)
            >0
        THEN 1
        ELSE 0
    END as late1,
    
    CASE
        WHEN
            2>=
                (((
                    select min(attendancedate) from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                )
                -
                to_date((
                    select to_char(min(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                ) || '09:00:00', 'yyyy-mm-dd hh24:mi:ss')) * 24)
            AND
            
            
                (((
                    select min(attendancedate) from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                )
                -
                to_date((
                    select to_char(min(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                ) || '09:00:00', 'yyyy-mm-dd hh24:mi:ss')) * 24)
            >1
        THEN 1
        ELSE 0
    END as late2,
    
    CASE
        WHEN
            3>=
                (((
                    select min(attendancedate) from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                )
                -
                to_date((
                    select to_char(min(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                ) || '09:00:00', 'yyyy-mm-dd hh24:mi:ss')) * 24)
            AND
            
            
                (((
                    select min(attendancedate) from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                )
                -
                to_date((
                    select to_char(min(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                ) || '09:00:00', 'yyyy-mm-dd hh24:mi:ss')) * 24)
            >2
        THEN 1
        ELSE 0
    END as late3,
    
    CASE
        WHEN
            4>=
                (((
                    select min(attendancedate) from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                )
                -
                to_date((
                    select to_char(min(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                ) || '09:00:00', 'yyyy-mm-dd hh24:mi:ss')) * 24)
            AND
            
            
                (((
                    select min(attendancedate) from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                )
                -
                to_date((
                    select to_char(min(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                ) || '09:00:00', 'yyyy-mm-dd hh24:mi:ss')) * 24)
            >3
        THEN 1
        ELSE 0
    END as late4,
    
    CASE
        WHEN
            0>
                (((
                    select MAX(attendancedate) from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                )
                -
                to_date((
                    select to_char(MAX(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                ) || '18:00:00', 'yyyy-mm-dd hh24:mi:ss')) * 24)
            AND
            
            
                (((
                    select MAX(attendancedate) from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                )
                -
                to_date((
                    select to_char(MAX(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                ) || '18:00:00', 'yyyy-mm-dd hh24:mi:ss')) * 24)
            >=-1
        THEN 1
        ELSE 0
    END as early1,
    
    CASE
        WHEN
            -1>
                (((
                    select MAX(attendancedate) from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                )
                -
                to_date((
                    select to_char(MAX(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                ) || '18:00:00', 'yyyy-mm-dd hh24:mi:ss')) * 24)
            AND
            
            
                (((
                    select MAX(attendancedate) from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                )
                -
                to_date((
                    select to_char(MAX(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                ) || '18:00:00', 'yyyy-mm-dd hh24:mi:ss')) * 24)
            >=-2
        THEN 1
        ELSE 0
    END as early2,
    
    CASE
        WHEN
            -2>
                (((
                    select MAX(attendancedate) from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                )
                -
                to_date((
                    select to_char(MAX(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                ) || '18:00:00', 'yyyy-mm-dd hh24:mi:ss')) * 24)
            AND
            
            
                (((
                    select MAX(attendancedate) from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                )
                -
                to_date((
                    select to_char(MAX(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                ) || '18:00:00', 'yyyy-mm-dd hh24:mi:ss')) * 24)
            >=-3
        THEN 1
        ELSE 0
    END as early3,
    
    CASE
        WHEN
            -3>
                (((
                    select MAX(attendancedate) from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                )
                -
                to_date((
                    select to_char(MAX(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                ) || '18:00:00', 'yyyy-mm-dd hh24:mi:ss')) * 24)
            AND
            
            
                (((
                    select MAX(attendancedate) from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                )
                -
                to_date((
                    select to_char(MAX(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                ) || '18:00:00', 'yyyy-mm-dd hh24:mi:ss')) * 24)
            >=-4
        THEN 1
        ELSE 0
    END as early4
        
    FROM tblAttendance p
            GROUP BY studentSeq, TO_CHAR(attendanceDate, 'yyyy-mm-dd')
                ORDER BY studentSeq, TO_CHAR(attendanceDate, 'yyyy-mm-dd');

--------------------------------------------------------------------------------------------------------------------------------

create or replace view vwDate
as
select to_date('20180813','yymmdd') + level - 1 as regdate from dual
     connect by level <= (to_date('20180831','yymmdd')-to_date('20180813','yymmdd') + 1 );

--------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE VIEW vwDates  -- 과목 내 모든 날짜 x 학생 시퀀스: n번 학생은 이 날 출석 해야한다.
    AS SELECT regdate, seq as studentSeq 
        FROM vwDate, (SELECT seq FROM tblStudentInfo); 

--------------------------------------------------------------------------------------------------------------------------------


CREATE OR REPLACE VIEW vwAbscence AS -- 과목 내 결석부, 정상 추가
SELECT d.regdate, d.studentSeq, a.subjectSeq,
    CASE
        WHEN TO_CHAR(d.regdate, 'd') IN ('7', '1') THEN 0
        WHEN a.vstudentSeq IS NOT NULL THEN 0
        WHEN a.vstudentSeq IS NULL AND h.name IS NULL THEN 1
        WHEN a.vstudentSeq IS NULL AND h.name IS NOT NULL THEN 0
    END as abscence,
    CASE
        WHEN a.vstudentSeq IS NOT NULL THEN 1
    END as attended
        FROM vwDates d
            LEFT OUTER JOIN vwAttendance a
                ON d.studentseq = a.vstudentseq AND d.regdate = a.vattendancedate
                    LEFT OUTER JOIN tblholiday h
                        ON d.regdate = h.regdate
                                ORDER BY d.regdate, d.studentSeq;

--------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE VIEW vwAttendanceFinal AS -- 전체 학생별 출결 현황
SELECT  ab.studentSeq, 
        at.subjectSeq,
        ab.regdate,
        at.goout1, 
        at.goout2, 
        at.goout3, 
        at.late1, 
        at.late2, 
        at.late3,
        at.late4,
        at.early1, 
        at.early2, 
        at.early3,
        at.early4,
        ab.abscence,
        ab.attended
     FROM vwabscence ab
        LEFT OUTER JOIN vwAttendance at
            ON ab.regdate = at.vattendanceDate AND ab.studentseq = at.vstudentSeq
                    ORDER BY ab.regdate, ab.studentSeq;
                    
--------------------------------------------------------------------------------------------------------------------------------  

CREATE OR REPLACE VIEW vwAttendanceGrade -- 과목 기간 내 학생별/항목별 벌점 
AS
SELECT 
    studentseq,
    subjectSeq,
    CASE
        WHEN SUM(late1) >=3
        THEN SUM(late1) * 20/9 * 1.1 
        ELSE SUM(late1) * 20/9
    END as pLate1,
    
    CASE 
        WHEN SUM(late2) >=3
        THEN SUM(late2) * 20/7 * 1.15
        ELSE SUM(late2) * 20/7
    END as pLate2,
    
    CASE 
        WHEN SUM(late3) >=2
        THEN SUM(late3) * 20/5 * 1.2
        ELSE SUM(late3) * 20/5
    END as pLate3,
    
    SUM(late4) * 20/3 as pLate4,
    
    CASE
        WHEN SUM(early1) >=3
        THEN SUM(early1) * 20/9 * 1.1 
        ELSE SUM(early1) * 20/9
    END as pearly1,
    
    CASE 
        WHEN SUM(early2) >=3
        THEN SUM(early2) * 20/7 * 1.15
        ELSE SUM(early2) * 20/7
    END as pearly2,
    
    CASE 
        WHEN SUM(early3) >=2
        THEN SUM(early3) * 20/5 * 1.2
        ELSE SUM(early3) * 20/5
    END as pearly3,
    
    SUM(early4) * 20/3 as pearly4,
    
    SUM(abscence) * 20/3 as abscence,
    
    SUM(goout1) * 2 as goout1,
    
    SUM(goout2) * 2.2 as goout2,
    
    SUM(goout3) * 2.4 as goout3
    
FROM vwAttendanceFinal
GROUP BY studentseq, subjectSeq; 

--------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE VIEW vwTotalAttendanceGrade AS --과목 기간 내 학생별 출결 총점
SELECT 
    studentseq,
    subjectSeq,
    ROUND(20 - (plate1 + plate2 + plate3 + plate4 + pearly1 + pearly2 + pearly3 + abscence + goout1 + goout2 + goout3)) attendanceGrade
FROM vwAttendanceGrade;

--------------------------------------------------------------------------------------------------------------------------------

-- gradeSeq X attendanceGrade

CREATE OR REPLACE VIEW vwTotalAttGrade
AS
SELECT  g.seq, t.attendanceGrade
    FROM vwTotalAttendanceGrade t
        RIGHT OUTER JOIN tblSubjectGrade g
            ON g.studentseq = t.studentseq AND g.subjectseq = t.subjectseq;

--------------------------------------------------------------------------------------------------------------------------------    

CREATE OR REPLACE VIEW vwCountAttendance AS             
SELECT
    s.seq,
    s.name,
    SUM(goout1) + SUM(goout2) + SUM(goout3) AS goout,
    SUM(late1) + SUM(late2) + SUM(late3) + SUM(late4) AS late,
    SUM(early1) + SUM(early2) + SUM(early3) + SUM(early4) AS early,
    SUM(abscence) AS abscence,
    SUM(attended) AS attended
        FROM vwAttendanceFinal v
            INNER JOIN tblStudentInfo s
                ON v.studentSeq = s.seq
                    GROUP BY s.seq, s.name
                        ORDER BY s.seq;

--------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE VIEW vwCourse
AS
SELECT C.seq AS vcourseSeq
        , CN.name AS vcourseName
        , C.startDate AS vcourseStartDate
        , C.endDate AS vcourseEndDate
        , CR.name AS vclassroom
        , L.seq AS vlecturerSeq
        , L.name AS vlecturerName
FROM tblCourse C
    LEFT OUTER JOIN tblCourseName CN
    ON CN.seq = C.courseNameSeq
        LEFT OUTER JOIN tblClassroom CR
        ON CR.seq = C.classroomSeq
            LEFT OUTER JOIN tblLecturer L
            ON  L.Seq = C.lecturerSeq;     
            
--------------------------------------------------------------------------------------------------------------------------------

--과목을 보는 뷰( 과목번호, 과목명, 과목시작기간,과목종료기간,  교재명)
--CREATE OR REPLACE VIEW vwSubject
--AS
--SELECT S.seq AS vsubjectSeq
--        , SN.name AS vsubjectName
--        , S.startDate AS vsubjectStartDate
--        , S.endDate AS vsubjectEndDate
--        , T.name AS vTextbook
--        , L.name AS vlecturerName
--        , C.seq AS vcourseSeq
--        , CN.name AS vcourseName
--FROM tblCourse C
--    LEFT OUTER JOIN tblCourseName CN
--    ON CN.seq = C.courseNameSeq
--        LEFT OUTER JOIN tblClassroom CR
--        ON CR.seq = C.classroomSeq
--            RIGHT OUTER JOIN tblSubject S
--            ON C.seq = S.courseseq
--                LEFT OUTER JOIN tblSubjectName SN
--                ON SN.seq = S.subjectnameseq
--                    LEFT OUTER JOIN tblTextbook T
--                    ON T.seq = S.textbookseq
--                        LEFT OUTER JOIN tblLecturer L
--                        ON  L.seq = C.lecturerSeq
--                            ORDER BY vsubjectstartdate; 


--과목을 보는 뷰( 과목번호, 과목명, 과목시작기간,과목종료기간,  교재명)
CREATE OR REPLACE VIEW vwSubject
AS
SELECT tblSubject.seq AS vsubjectSeq
        , tblSubjectName.name AS vsubjectName
        , to_char(tblSubject.startDate , 'yyyy-mm-dd') AS vsubjectStartDate
        , to_char(tblSubject.endDate , 'yyyy-mm-dd') AS vsubjectEndDate
        , tbltextbook.name AS vTextbook
        , tbllecturer.name AS vlecturerName
        , tblcourse.seq AS vcourseSeq
        , tblcoursename.name AS vcourseName
        , tblcourse.lecturerseq AS vlecturerseq
FROM tblCourse 
    INNER JOIN tblCourseName
    ON tblCourseName.seq = tblCourse.courseNameSeq
        INNER JOIN tblClassroom
        ON tblClassroom.seq = tblCourse.classroomSeq
            INNER JOIN tblSubject
            ON tblCourse.seq = tblsubject.courseseq
                INNER JOIN tblSubjectName
                ON tblSubjectName.seq = tblSubject.subjectnameseq
                    INNER JOIN tblTextbook
                    ON tbltextbook.seq = tblsubject.textbookseq
                        INNER JOIN tblLecturer
                        ON  tblLecturer.seq = tblCourse.lecturerSeq; 

--------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE VIEW vwCourseTotal
AS
SELECT 
    I.name AS vname,
    ROUND(SUM(G.written + G.practical + G.attendance) / COUNT(*), 1) AS vtotal   
    FROM tblSubjectGrade G
    
        INNER JOIN tblSubject B
            ON G.subjectseq = B.seq
            
                INNER JOIN tblStudent S
                    ON S.seq = G.studentseq
                    
                        INNER JOIN tblStudentInfo I
                            ON S.studentinfoseq = I.seq
                            
                                INNER JOIN tblCourse C
                                    ON S.courseseq = C.seq
                                    
                                        GROUP BY I.NAME
                                            
                                            ORDER BY ROUND(SUM(G.written + G.practical + G.attendance)) DESC;

--------------------------------------------------------------------------------------------------------------------------------

--과정유형 (강의가능번호, 과정유형번호, 과정유형명, 교사번호, )
CREATE OR REPLACE VIEW vwsubjectType
AS
SELECT
    A.seq AS vAvlbSeq
    , ST.name AS vTypeName
    , ST.seq AS vTypeSeq
    , A.lecturerSeq AS vLecturerSeq
FROM tblAvlb A
    LEFT OUTER JOIN tblsubjectType ST
    ON A.subjectTypeSeq = ST.seq
        LEFT OUTER JOIN tblLecturer L
        ON L.seq = A.lecturerSeq;

--------------------------------------------------------------------------------------------------------------------------------

--과정별 등록인원,과정번호
CREATE OR REPLACE VIEW VwCount
AS
SELECT CourseSeq, COUNT(*) AS count 
FROM tblStudent
GROUP BY courseseq;

--------------------------------------------------------------------------------------------------------------------------------

--등록인원수,과정번호, 강사번호, 과정 기간

CREATE OR REPLACE VIEW VWCountStudent
AS
SELECT VC.courseSEQ AS vCourseSeq
        , vc.count AS vCount
        , L.seq AS vLecturerSeq
        , c.startdate AS vCourseStartDate
        , c.enddate AS vCourseEndDate
FROM tblcourse C
    LEFT OUTER JOIN VwCount VC
    ON C.seq = VC.courseSeq
        LEFT OUTER JOIN tblCourseName CN
        ON CN.seq = C.CourseNameSeq
            LEFT OUTER JOIN tblLecturer L 
            ON L.seq = C.LecturerSeq;

--------------------------------------------------------------------------------------------------------------------------------

--교사 정보를 보는 뷰(교사번호, 이름, 주민, 폰번호, 강의가능과목명)
CREATE OR REPLACE VIEW vwLecturer
AS
SELECT  L.seq AS vlecturerSeq
        , L.name AS vlecturerName
        , L.registrationNum AS vlecturerRegistrationNum
        , L.phonenum AS vlecturerPhonenum
        , SN.name AS vsubjectName
        , SN.seq AS vsubjectSeq
FROM tblLecturer L
    LEFT OUTER JOIN tblAvlb A
    ON L.seq = A.lecturerSeq
            LEFT OUTER JOIN tblsubjectType   ST
            ON ST.seq = A.subjectTypeSeq
                  LEFT OUTER JOIN tblsubjectName SN
                  ON ST.seq = SN.seq;

--------------------------------------------------------------------------------------------------------------------------------

--교육생 보는 뷰 (학생번호, 이름, tel, 등록일, 상태)
CREATE OR REPLACE VIEW vwStudent
AS
SELECT  tblstudent.seq AS vstudentSeq
        , tblstudentInfo.name AS vstudentName
        , tblstudentInfo.phonenum AS vphonenum
        , tblstudent.registrationtime AS vregistrationtime
        , tblstudent.status AS vstudentstatus
        , tblCourse.startDate AS vcourseStartDate
        , tblCourse.EndDate AS vcourseEndDate
        , tblcourse.seq AS vcourseSeq
FROM tblCourse
    INNER JOIN tblCourseName
    ON tblCourseName.seq = tblCourse.courseNameSeq
        INNER JOIN tblClassroom
        ON tblClassroom.seq = tblCourse.classroomSeq
                     INNER JOIN tblstudent
                      ON tblCourse.seq = tblStudent.courseSeq
                            INNER JOIN tblStudentInfo
                            ON tblStudentInfo.seq = tblStudent.studentInfoSeq;

--------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE VIEW vwTopStudents
AS
SELECT
 
   distinct *
        FROM
(SELECT 
    
    I.seq AS vseq,
    I.name AS vname, 
    I.phonenum AS vphonenum, 
    I.registrationdate AS vregistrationdate, 
    V.vtotal AS vtotal,
    l.name AS vlename,
    c.coursenameseq AS vcourseSeq,
    n.name AS vcoursename,
    c.startdate AS vstart,
    c.enddate AS vend
    
FROM tblCourse c
   
    INNER JOIN tblCourseName N
   ON C.coursenameseq = N.seq
           
         INNER JOIN tblStudent S
         ON S.courseseq = C.seq
            
            INNER JOIN tblStudentInfo I
            ON S.studentinfoseq = I.seq
            
                 INNER JOIN vwCourseTotal V
                 ON V.vname = I.name
                    inner join tbllecturer l
                    on l.seq = c.lecturerseq
                  
               ORDER BY v.vtotal DESC );   

--------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE VIEW vwTopFive
AS 
    SELECT 
        ROWNUM as rank,
        vseq,
        vname,
        vphonenum,
        vregistrationdate, 
        vtotal,
        vlename,
        vcourseSeq,
        vcoursename,
        vstart,
        vend
      
    FROM (SELECT * FROM vwTopStudents ORDER BY vtotal DESC) where rownum < 6;

--------------------------------------------------------------------------------------------------------------------------------

 -- 최종 5등 학생
CREATE OR REPLACE VIEW vwTopFive1 
AS 
SELECT 

    *

        FROM tblrecommendation
     
            INNER JOIN vwTopFive
            on tblrecommendation.studentseq = vwTopFive.vseq
                
                ORDER BY rank ASC;

--------------------------------------------------------------------------------------------------------------------------------

create or replace view vwtblstudentinfo
as
SELECT seq,name,phonenum,to_char(registrationdate,'yyyy-mm-dd') as registrationdate,registrationnum,state FROM tblstudentinfo
where state=1;

--------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE view vwcoustu
as
SELECT DISTINCT n.name as vname,c.seq as vseq FROM tblstudentinfo i 
    INNER JOIN tblstudent s
        ON i.seq=s.studentinfoseq
            INNER JOIN tblcourse c
               ON s.courseseq = c.seq
                    INNER JOIN tblcoursename n
                        ON c.coursenameseq = n.seq
                            where i.state=1
                             order by vseq;

--------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE VIEW vwstusinfo
as
SELECT i.name AS vstuname,i.registrationnum as vsturnum,
    i.phonenum as vstupnum,s.courseseq as vcouseq,i.seq as vsinfoseq FROM tblstudentinfo i 
    INNER JOIN tblstudent s
        ON i.seq=s.studentinfoseq
            INNER JOIN tblcourse c
               ON s.courseseq = c.seq
                    INNER JOIN tblcoursename n
                        ON c.coursenameseq = n.seq
                        where i.state=1;

--------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE VIEW vwstucou
as
SELECT i.name as vstuname,i.registrationnum as vsturnum,i.phonenum as vstupnum, 
        n.name as vcouname,to_char(c.startdate,'yyyy-mm-dd') as vcoustart,to_char(c.enddate,'yyyy-mm-dd') as vcouend,
        case 
            
            when s.status = '3' then '수료'
            when s.status = '2' then '중도탈락'
             when s.status = '1' then '수강중'
            when s.status ='4' then '수강예정'   
    else '잘못된 입력'
        end
        as vstustatus,i.seq as vstuinseq , c.seq as vcouseq
         ,to_char(i.registrationdate,'yyyy-mm-dd') as vstuinrdate, 
         case
            when to_char(s.statusdate,'yyyy-mm-dd') is null then '해당없음'
            else to_char(s.statusdate,'yyyy-mm-dd')
         end
          as vstustatusdate,s.seq as vstuseq     
    FROM tblstudentinfo i 
        INNER JOIN tblstudent s
            ON i.seq=s.studentinfoseq
                INNER JOIN tblcourse c
                   ON s.courseseq = c.seq
                        INNER JOIN tblcoursename n
                            ON c.coursenameseq = n.seq where i.state=1;


--------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE VIEW vwcoudate
as
SELECT n.name as vcouname,c.seq as vcouseq,c.startdate as vcoustart, c.enddate as vcouend  FROM tblcourse c
    INNER JOIN tblcoursename n
         ON c.coursenameseq = n.seq
            WHERE c.startdate>sysdate order by vcouseq;
            
--------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE VIEW vwcouingdate
AS
SELECT n.name as vcouname,c.seq as vcouseq FROM tblcourse c
    INNER JOIN tblcoursename n
        ON c.coursenameseq=n.seq
            WHERE sysdate between c.startdate and c.enddate order by vcouseq;
            
--------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE VIEW vwcouroomlec
AS
SELECT n.name as vcouname,to_char(c.startdate,'yyyy-mm-dd') as vcoustart,to_char(c.enddate,'yyyy-mm-dd') as vcouend,r.name as vroomname,l.name as vlecname, c.seq as vcouseq 
   FROM tblcourse c
    INNER JOIN tblcoursename n
        ON c.coursenameseq = n.seq
        INNER JOIN tblclassroom r
            ON c.classroomseq=r.seq
                INNER JOIN tbllecturer l
                    ON c.lecturerseq = l.seq;
                    
--------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE VIEW vwcousub
as
SELECT s.seq as vsubseq,j.name as vsubname,c.seq as vcouseq
    FROM tblcourse c
        INNER JOIN tblcoursename n
            ON c.coursenameseq = n.seq
            INNER JOIN tblclassroom r
                ON c.classroomseq=r.seq
                    INNER JOIN tbllecturer l
                        ON c.lecturerseq  = l.seq
                            INNER JOIN tblsubject s
                                ON c.seq = s.courseseq
                                    INNER JOIN tblsubjectname j
                                        ON j.seq = s.subjectnameseq
                                        order by vsubseq;
                                        
-------------------------------------------------------------------------------------------------------------------------------- 

CREATE OR REPLACE VIEW vwgrasub
AS
SELECT s.seq as vsubseq, g.subjectseq as vgrasubseq 
    FROM tblsubjectgrade g
        INNER JOIN tblsubject s
            ON g.subjectseq = s.seq 
                INNER JOIN tblsubjectname n
                    ON n.seq=s.subjectnameseq;
                    
--------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE VIEW vwsubcouroomlec
as
SELECT n.name as vcouname, r.name as vroomname, l.name as vlecname
,j.name as vsubname,c.seq as vcouseq, s.seq as vsubseq,to_char(s.startdate,'yyyy-mm-dd') as vsubstart,to_char(s.enddate,'yyyy-mm-dd') as vsubend
, t.name as vtextname 
    FROM tblcourse c
        INNER JOIN tblcoursename n
            ON c.coursenameseq = n.seq
            INNER JOIN tblclassroom r
                ON c.classroomseq=r.seq
                    INNER JOIN tbllecturer l
                        ON c.lecturerseq = l.seq
                            INNER JOIN tblsubject s
                                ON c.seq = s.courseseq
                                    INNER JOIN tbltextbook t
                                        ON t.seq = s.textbookseq
                                            INNER JOIN tblsubjectname j
                                                ON j.seq = s.subjectnameseq
                                                    order by s.seq;
                                                    
-------------------------------------------------------------------------------------------------------------------------------- 

CREATE OR REPLACE VIEW vwsinfogra
AS
SELECT i.name as vstuname,i.registrationnum as vrnum,g.written as vgrawri,g.practical as vgraprac
 , s.courseseq  as vcouseq, g.subjectseq as vsubseq , g.attendance as vgraatt
 FROM tblstudent s 
    INNER JOIN tblsubjectgrade g
        ON s.seq = g.studentseq
            INNER JOIN tblstudentinfo i
                ON i.seq = s.studentinfoseq
                    where i.state=1;
                        
-------------------------------------------------------------------------------------------------------------------------------- 

CREATE or replace VIEW vwstucoutemp
AS
SELECT DISTINCT vstuname, vsturnum,vstupnum,vcouname,vcoustart,vcouend,vroomname,vsinfoseq,vcouseq
from vwcousubstutexlec;

-------------------------------------------------------------------------------------------------------------------------------- 

CREATE OR REPLACE VIEW vwcousubstutexlec
as
SELECT distinct i.name as vstuname, i.registrationnum as vsturnum, i.phonenum as vstupnum,
        n.name as vcouname, to_char(c.startdate,'yyyy-mm-dd') as vcoustart, to_char(c.enddate,'yyyy-mm-dd') as vcouend,
        r.name as vroomname, e.name as vsubname, to_char(j.startdate,'yyyy-mm-dd') as vsubstart, to_char(j.enddate,'yyyy-mm-dd') as vsubend,
        t.name as vtextname, l.name as vlecname,i.seq as vsinfoseq,c.seq as vcouseq,j.seq as vsubseq
         FROM tblcourse c   --과정
           INNER JOIN tblcoursename n  --과정명
             ON c.coursenameseq = n.seq
            INNER JOIN tblclassroom r  --강의실
                 ON c.classroomseq=r.seq
                    INNER JOIN tbllecturer l  --강사
                        ON c.lecturerseq = l.seq
                            INNER JOIN tblsubject j  --과목
                                ON c.seq = j.courseseq
                                    INNER JOIN tbltextbook t  --교재
                                        ON t.seq = j.textbookseq
                                         INNER JOIN tblstudent s  --교육생    
                                            ON s.courseseq = c.seq
                                            INNER JOIN tblstudentinfo i --교육생정보
                                               ON  i.seq = s.studentinfoseq
                                                INNER JOIN tblsubjectgrade g --성적
                                                    ON s.seq = g.studentseq
                                                        INNER JOIN tblsubjectname e
                                                            ON e.seq = j.subjectnameseq
                                                                INNER JOIN tblQuiz q
                                                                 ON q.subjectseq = j.seq
                                                                 where i.state=1;

-------------------------------------------------------------------------------------------------------------------------------- 

CREATE or replace VIEW vwsubgraquiz
as
select
    distinct n.name as vsubnanme,to_char(j.startdate,'yyyy-mm-dd') as vsubstart,to_char(j.enddate,'yyyy-mm-dd') as vsubend,
    t.name as vtextname, l.name as vlecturername, j.practicalpercent as vsubpracpercent, j.writtenpercent as vsubwrittenpercent,
    g.written as vgrawritten, g.practical as vgrapractical, q.quizdate as vquizdate,i.seq as vstuinseq,j.seq as vsubseq
    
FROM 
    tblstudent s
        INNER JOIN tblstudentinfo i
            ON s.studentinfoseq = i.seq
                INNER JOIN tblsubjectgrade g
                    ON g.studentseq = s.seq
                        INNER JOIN tblsubject j
                            ON j.seq = g.subjectseq
                                INNER join tblquiz q
                                    ON q.subjectseq = j.seq
                                        Inner join tblcourse c
                                            on c.seq = s.courseseq
                                                inner join tbllecturer l
                                                    on l.seq = c.lecturerseq
                                                        inner join tbltextbook t
                                                          on  t.seq = j.textbookseq
                                                            Inner join tblsubjectname n 
                                                                on n.seq = j.subjectnameseq
                                                                where i.state=1;
                                                                
-------------------------------------------------------------------------------------------------------------------------------- 

create or replace view vwdellist
as
select c.seq as vcouseq, n.name as vcouname,to_char(c.startdate,'yyyy-mm-dd') as vcoustart,
to_char(c.enddate,'yyyy-mm-dd') as vcouend,t.seq as vstuseq,i.seq as vstuinfoseq 
from tblcourse c
inner join tblcoursename n
    ON c.coursenameseq = n.seq
    inner join tblstudent t
        on t.courseseq = c.seq
        inner join tblstudentinfo i
            on i.seq = t.studentinfoseq
             where c.startdate > sysdate and i.state = 1;
             
--------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE VIEW vwallcount
as
select j.seq as vsubseq from tblstudent s
    inner join tblcourse c
        on s.courseseq = c.seq
            INNER JOIN tblsubject j
                on j.courseseq = c.seq
                    where j.seq = 1;
                    
-------------------------------------------------------------------------------------------------------------------------------- 

CREATE OR REPLACE VIEW vwcousubstubook
as
SELECT n.name as vcouname,to_char(c.startdate,'yy-mm-dd') as vcoustart,to_char(c.enddate,'yy-mm-dd') as vcouend,
r.name as vroomname,j.name as vsubname,to_char(s.startdate,'yy-mm-dd') as vsubstart,to_char(s.enddate,'yy-mm-dd') as vsubend,t.name as vbookname
,s.attendancepercent as vsubatt,s.writtenpercent as vsubwrit,s.practicalpercent as vsubprac,c.seq as vcouseq,s.seq as vsubseq, l.seq as vlecturerseq
    FROM tblcourse c
        INNER JOIN tblcoursename n
            ON c.coursenameseq = n.seq
            INNER JOIN tblclassroom r
                ON c.classroomseq=r.seq
                    INNER JOIN tbllecturer l
                        ON c.lecturerseq = l.seq
                            INNER JOIN tblsubject s
                                ON c.seq = s.courseseq
                                    INNER JOIN tbltextbook t
                                        ON t.seq = s.textbookseq
                                           INNER JOIN tblsubjectname j
                                                ON j.seq = s.subjectnameseq
                                                    WHERE c.enddate=(select max(enddate) from tblcourse where enddate<sysdate)
                                                        order by s.seq;
                                                        
-------------------------------------------------------------------------------------------------------------------------------- 

CREATe or replace VIEW vwsinfo
as
SELECT i.name as vstuname,i.phonenum as vstupnum,
case
     when s.status = '3' then '수료'
            when s.status = '2' then '중도탈락'
             when s.status = '1' then '수강중'
            when s.status ='4' then '수강예정'     
    else '잘못된 입력'
    end
    as vstustatus,s.seq as vstuseq
    ,g.subjectseq as vgsubseq,  
    case
    when  to_char(s.statusDate,'yy-mm-dd') is not null then  to_char(s.statusDate,'yy-mm-dd')
    when  to_char(s.statusDate,'yy-mm-dd') is null then '해당사항 없음'
    end
    as vstatusdate
    FROM tblsubjectgrade g
        INNER JOIN tblstudent s
            ON g.studentseq=s.seq
                INNER JOIN tblstudentinfo i
                    ON i.seq = s.studentinfoseq
                        WHERE g.attendance is null or g.practical is null and i.state=1 and s.status!='2';
                        
-------------------------------------------------------------------------------------------------------------------------------- 

CREATE or replace VIEW vwstugra
as
SELECT i.name as vstuname,i.phonenum as vstupnum,
case
    when s.status = '3' then '수료'
            when s.status = '2' then '중도탈락'
             when s.status = '1' then '수강중'
            when s.status ='4' then '수강예정'   
    else '잘못된 입력'
end as vstustatus,s.seq as vstuseq,g.subjectseq as vsubseq
          ,to_char(s.statusdate,'yyyy-mm-dd') as vstustadate,g.seq as vgraseq
    FROM tblsubjectgrade g
        INNER JOIN tblstudent s
            ON g.studentseq=s.seq
                INNER JOIN tblstudentinfo i
                    ON i.seq = s.studentinfoseq where i.state=1;
                    
-------------------------------------------------------------------------------------------------------------------------------- 

CREATE or replace VIEW vwcousubstuinfo 
as
SELECT n.name as vcouname,c.startdate as vcoustart,c.enddate as vcouend,
r.name as vroomname,j.name as vsubname,s.startdate as vsubstart,s.enddate as vsubend,t.name as vbookname
,s.attendancepercent as vsubatt,s.writtenpercent as vsubwri,s.practicalpercent as vsubprac, s.seq as vsubseq,
c.seq as vcouseq
    FROM tblcourse c
        INNER JOIN tblcoursename n
            ON c.coursenameseq = n.seq
            INNER JOIN tblclassroom r
                ON c.classroomseq=r.seq
                    INNER JOIN tbllecturer l
                        ON c.lecturerseq = l.seq
                            INNER JOIN tblsubject s
                                ON c.seq = s.courseseq
                                    INNER JOIN tbltextbook t
                                        ON t.seq = s.textbookseq
                                           INNER JOIN tblsubjectname j
                                                ON j.seq = s.subjectnameseq
                                                     order by c.seq; 
                                                     
-------------------------------------------------------------------------------------------------------------------------------- 

CREATE or replace VIEW vwstugrainfo
as
SELECT i.name as vstuname,s.seq as vstuseq,g.written as vgrawri,g.practical as vgraprac,g.seq as vgraseq
    ,g.subjectseq as vgrasubseq
    FROM tblsubjectgrade g
        INNER JOIN tblstudent s
            ON g.studentseq=s.seq
                INNER JOIN tblstudentinfo i
                    ON i.seq = s.studentinfoseq where i.state = 1;
                     
-------------------------------------------------------------------------------------------------------------------------------- 

CREATE OR REPLACE VIEW vwWarning
AS
SELECT g.studentSeq as studentSeq
        , si.name as studentName
        , t.attendanceGrade as attendanceGrade
        , s.courseSeq as courseSeq
        , c.name as courseName
        , l.seq as lecturerSeq
        , l.name as lecturerName
    FROM vwTotalAttendanceGrade t
        RIGHT OUTER JOIN tblSubjectGrade g
            ON g.studentseq = t.studentseq AND g.subjectseq = t.subjectseq
                LEFT OUTER JOIN tblStudent s
                    ON g.studentSeq = s.seq
                        LEFT OUTER JOIN tblStudentInfo si
                            ON s.seq = si.seq
                                LEFT OUTER JOIN tblCourseName c
                                    ON s.courseSeq = c.seq
                                        LEFT OUTER JOIN vwCourse vc
                                            ON s.courseSeq = vc.vcourseSeq
                                                LEFT OUTER JOIN tblLecturer l
                                                    ON vc.vlecturerseq = l.seq
                                                        WHERE attendanceGrade <15
                                                            ORDER BY attendancegrade; 

-------------------------------------------------------------------------------------------------------------------------------- 




