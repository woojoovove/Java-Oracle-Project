--C00

CREATE USER DB_TEAM1 IDENTIFIED BY java1234;
GRANT CONNECT, RESOURCE, CREATE VIEW TO DB_TEAM1; 


        
SELECT
    tblStudentinfo.name AS studentName,
    tblCoursename.name AS courseName,
    tblCourse.startdate AS courseStartDate,
    tblCourse.enddate AS courseEndDate,
    tblClassRoom.seq AS classRoom
    FROM tblStudent 
    INNER JOIN tblStudentinfo   ON tblStudent.studentinfoseq = tblStudentinfo.seq
    INNER JOIN tblCourse        ON tblStudent.courseseq = tblCourse.seq
    INNER JOIN tblCourseName    ON tblCourse.coursenameseq = tblCourseName.seq
    INNER JOIN tblClassRoom     ON tblcourse.classroomseq = tblClassRoom.seq;
    
    
    
--------------------------------------------------------------------------------------

-- 성적조회    

--***** 시험날짜 조회 테이블 없음.  
-- where min(sysdate - subject.enddate) > 0

SELECT 
    tblSubjectName.name AS subjectName,
    tblSubject.startDate AS subjectStartDate,
    tblsubject.endDate AS subjectEndDate,
    tblTextBook.name AS textBook,
    tblLecturer.name AS lecturer,
    tblSubject.writtenpercent AS writtenpercent,
    tblSubject.practicalPercent AS practicalPercent,
    tblSubject.attendancepercent AS attendancepercent,
    tblsubject.endDate AS QuizDate
FROM tblsubject
    INNER JOIN tblSubjectName         ON tblSubjectName.seq = tblSubject.subjectnameseq
    INNER JOIN tblTextbook            ON tblTextbook.seq = tblsubject.textbookseq
    LEFT OUTER JOIN tblSubjectGrade   ON tblSubjectgrade.subjectseq = tblSubject.seq
    INNER JOIN tblQuiz                ON tblSubject.seq = tblquiz.subjectseq
    INNER JOIN tblCourse              ON tblCourse.seq = tblsubject.courseseq
    INNER JOIN tblLecturer            ON tblLecturer.seq = tblCourse.lecturerseq
    WHERE (SYSDATE - tblSubject.endDate) > 0;
    
    
    
    
-----------------------------------------------------------------------------------

-- 시험문제 확인
--

SELECT 
    tblSubjectName.name AS subjectName,
    tblQuiz.num AS quizNum,
    tblQuiz.contents AS quizContents,
    tblQuiz.answer AS quizAnswer
    
FROM tblSubject
    INNER JOIN tblSubjectName ON tblSubjectName.seq = tblSubject.subjectnameseq
    INNER JOIN tblQuiz        ON tblquiz.subjectseq = tblSubject.seq
    WHERE (SYSDATE - tblSubject.endDate) > 0;
    
    
    
    
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


commit;