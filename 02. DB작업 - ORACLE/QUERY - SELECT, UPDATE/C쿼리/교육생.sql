CREATE VIEW tblvwStudentinfo
AS        
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
    
    
    SELECT * FROM tblvwStudentinfo;
--------------------------------------------------------------------------------------

-- 성적조회    

--***** 시험날짜 조회 테이블 없음.  
-- where min(sysdate - subject.enddate) > 0

CREATE VIEW tblvwGradeList
AS  
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
CREATE VIEW tblvwQuizList
AS  
SELECT 
    tblSubjectName.name AS subjectName,
    tblQuiz.num AS quizNum,
    tblQuiz.contents AS quizContents,
    tblQuiz.answer AS quizAnswer
    
FROM tblSubject
    INNER JOIN tblSubjectName ON tblSubjectName.seq = tblSubject.subjectnameseq
    INNER JOIN tblQuiz        ON tblquiz.subjectseq = tblSubject.seq
    WHERE (SYSDATE - tblSubject.endDate) > 0;
    