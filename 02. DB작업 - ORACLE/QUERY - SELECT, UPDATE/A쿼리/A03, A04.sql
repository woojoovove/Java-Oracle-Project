SELECT * FROM tblCourse;
SELECT * FROM tblSubject;
SELECT * FROM tblCourseName;
SELECT * FROM tblClassroom;
SELECT * FROM tblLecturer;
SELECT * FROM tblStudent;
SELECT * FROM tblSubjectname;
SELECT * FROM tblAvlb;
SELECT * FROM tblSubjectType;
SELECT * FROM tblTextbook;
SELECT * FROM tblPublisher;
  
SELECT * FROM tblSubject;



--============================================================================================================================== 
COMMIT;
ROLLBACK;
--==============================================================================================================================

--#A03-002, 003, 004, 005. 개설 과정 입력 화면 : 과정명 입력

INSERT INTO tblCourse (seq, startDate, endDate, courseNameSeq, classroomSeq, lecturerSeq)
    VALUES (tblCourseSeq.NEXTVAL, ?, ?, ?, ?, ?);

--------------------------------------------------------------------------------------------------------------------------------
        
--#A03-006. 개설 과정 정보 수정 화면
SELECT * FROM vwCourseEditInfo;

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

--#A03-007. 개설 과정 수정 - 과정명 수정
UPDATE tblCourse SET coursenameseq = 11 WHERE seq = 2;

--------------------------------------------------------------------------------------------------------------------------------

--#A03-008. 개설 과정 수정 - 과정기간 수정
UPDATE tblCourse SET startdate = ?, enddate = ? WHERE seq = ?;

--------------------------------------------------------------------------------------------------------------------------------

--#A03-009. 개설 과정 수정 - 강의실 수정
UPDATE tblCourse SET classroomSeq = ? WHERE seq = ?;

--------------------------------------------------------------------------------------------------------------------------------

--#A03-010. 개설 과정 수정 - 교사 수정
UPDATE tblCourse SET lecturerSeq = ? WHERE seq = ?;

--------------------------------------------------------------------------------------------------------------------------------

--#A03-011. 개설 과정 삭제 화면
DELETE FROM tblCourse WHERE seq = ?;

--------------------------------------------------------------------------------------------------------------------------------

--#A03-012. 개설 과정 정보 조회

SELECT * FROM vwCourseInfo;

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

--#A03-013. 과정 정보 - 교육생 목록 출력 화면

SELECT * FROM tblStudent;
SELECT * FROM tblStudentInfo;

SELECT * FROM vwCourseStudentInfo;

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

--==============================================================================================================================

--#A04-002. 특정 개설 과정 정보 - 과목 정보 출력 화면
SELECT * FROM vwCourseSubjectList WHERE "vCourseSeq" = 2 AND "vSubjectEnd" < SYSDATE AND state = 1;

SELECT * FROM vwCourseSubjectList;

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

--#A04-003. 과목 추가 - 과목명 선택

SELECT * FROM vwSubjectName;

--해당 과정의 담당 교사가 강의 가능한 과목만 출력되도록 하는 뷰입니다
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

--#A04-005. 과목 추가 - 교재 선택

SELECT * FROM vwTextbookInfo;

CREATE OR REPLACE VIEW vwTextbookInfo
AS
SELECT 

    t.seq   AS "vTextbookSeq",
    t.name  AS "vTextbookName",
    p.name  AS "vPublisher"
    
        FROM tblTextbook t

            INNER JOIN tblPublisher p
            ON t.publisherseq = p.seq;
            
--------------------------------------------------------------------------------------------------------------------------------            
            
--INSERT문 실행

INSERT INTO tblSubject VALUES(seq.NEXTVAL, ?, ?, NULL, NULL, NULL, ?, ?, ?, DEFAULT);

--------------------------------------------------------------------------------------------------------------------------------

--#A04-008. 과목 수정 - 과목명 수정
UPDATE tblSubject 
    SET subjectnameSeq = ? 
        WHERE seq = '';
        
--------------------------------------------------------------------------------------------------------------------------------
--#A04-008, 009, 010. 과목 수정 - 과목기간 수정
UPDATE tblSubject 
    SET startdate = ?, enddate = ? 
        WHERE seq = ?;

--------------------------------------------------------------------------------------------------------------------------------
--#A04-008, 009, 010. 과목 수정 - 교재 수정
UPDATE tblSubject 
    SET textbookSeq = ?
        WHERE seq = ?;

--------------------------------------------------------------------------------------------------------------------------------

--#A04-011. 과정 정보 - 과목 삭제
UPDATE tblSubject SET state = 0 WHERE seq = ?;





