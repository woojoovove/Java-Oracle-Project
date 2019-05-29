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
SELECT * FROM tblStudentInfo;
SELECT * FROM tblAttendance;

--------------------------------------------------------------------------------------------------------------------------------
COMMIT;
ROLLBACK;
--------------------------------------------------------------------------------------------------------------------------------

--출결 기록 입력 
INSERT INTO tblAttendance (seq, attendancedate, studentseq) 
    VALUES(attendanceSeq.NEXTVAL, TO_DATE(?,'yyyy-mm-dd hh24-mi-ss'), ?);

--------------------------------------------------------------------------------------------------------------------------------

--출결 조회 - 과목별 조회 - 과목 리스트 출력
SELECT * FROM vwsubjectAttendance WHERE vstudentseq = 1;

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




