-- b01.sql


-- 과정을 보는 뷰(과정번호, 과정명, 과정시작기간, 과정종료기간,강의실)
CREATE VIEW vwCourse
AS
SELECT tblCourse.seq AS vcourseSeq
        , tblCourseName.name AS vcourseName
        , tblCourse.startDate AS vcourseStartDate
        , tblCourse.endDate AS vcourseEndDate
        , tblclassroom.name AS vclassroom
        , tbllecturer.seq AS vlecturerSeq
FROM tblCourse
    INNER JOIN tblCourseName
    ON tblCourseName.seq = tblCourse.courseNameSeq
        INNER JOIN tblClassroom
        ON tblClassroom.seq = tblCourse.classroomSeq
            INNER JOIN tblLecturer
            ON  tblLecturer.seq = tblCourse.lecturerSeq;
           
DROP VIEW vwCourse;

--과목을 보는 뷰( 과목번호, 과목명, 과목시작기간,과목종료기간,  교재명)
CREATE VIEW vwSubject
AS
SELECT tblSubject.seq AS vsubjectSeq
        , tblSubjectName.name AS vsubjectName
        , tblSubject.startDate AS vsubjectStartDate
        , tblSubject.endDate AS vsubjectEndDate
        , tbltextbook.name AS vTextbook
        , tbllecturer.name AS vlecturerName
        , tblcourse.seq AS vcourseSeq
        , tblcoursename.name AS vcourseName
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
select*from vwSubject;                       

drop view vwSubject;


--교육생 보는 뷰 (학생번호, 이름, tel, 등록일, 상태)
CREATE VIEW vwStudent
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

DROP VIEW vwStudent;


--#B01-002.강의 스케줄 조회_강의 예정
--      과정번호, 과정명, 과정기간, 강의실
SELECT  vcourseSeq
        , vcourseName
        , vcourseStartDate
        , vcourseEndDate
        , vclassroom  
FROM vwCourse 
WHERE vcourseStartDate > sysdate
AND vlecturerseq = 2;
            
            
--         과목번호, 과목명, 과목기간, 교재명
SELECT vsubjectSeq
        , vsubjectName
        , vsubjectStartDate
        , vsubjectEndDate
        , vTextbook   
FROM vwsubject
WHERE vcourseseq = 3;

desc vwsubject;

--#B01-003.강의 스케줄조회_강의중
SELECT  vcourseSeq
        , vcourseName
        , vcourseStartDate
        , vcourseEndDate
        , vclassroom  
FROM vwCourse 
WHERE vcourseEndDate > sysdate
     AND vcourseStartDate < sysdate
       AND vlecturerseq = 3;                                               
                        
--         과목번호, 과목명, 과목기간, 교재명
SELECT vsubjectSeq
        , vsubjectName
        , vsubjectStartDate
        , vsubjectEndDate
        , vTextbook   
FROM vwsubject
WHERE vcourseseq = 2;

                        
--#B01-004.교사main_강의 스케줄조회_강의중_과목정보&교육인원
--      과목번호, 과목명, 과목기간, 교재명, 강사명
SELECT vsubjectSeq
        , vsubjectName
        , vsubjectStartDate
        , vsubjectEndDate
        , vTextbook   
        , vlecturername
FROM vwsubject
   WHERE vsubjectSeq = '8';
                                            


--교육인원
SELECT  count(*)
FROM vwstudent
   WHERE vcourseseq = 2;

--학생번호, 이름, tel, 등록일, 상태

SELECT  vstudentSeq
        , vstudentName
        , vphonenum
        , vregistrationtime
        , vstudentstatus        
FROM vwstudent
     WHERE vsubjectSeq = 8;
                            
 
 
 
-- #B01-005.교사main_강의 스케줄조회_강의종료
--      과정번호, 과정명, 과정기간, 강의실
SELECT  vcourseSeq
        , vcourseName
        , vcourseStartDate
        , vcourseEndDate
        , vclassroom  
FROM vwCourse 
WHERE vcourseEndDate < sysdate
    AND vlecturerseq = 4; 


--과정별 인원수
SELECT COUNT(*)
FROM vwstudent
    WHERE vcourseEndDate > sysdate
    GROUP BY vcourseSeq;

select*from tblstudent;
--#B01-006.교사main_강의 스케줄조회_강의종료
--      과정번호, 과정명, 과정기간, 강의실
SELECT  vcourseSeq
        , vcourseName
        , vcourseStartDate
        , vcourseEndDate
        , vclassroom  
FROM vwCourse 
WHERE vcourseEndDate < sysdate
    AND vlecturerseq = 4
    AND vcourseseq = 1;
    
    SELECT*FROM tblcourse;

--      등록인원수
SELECT COUNT(*)
FROM vwstudent
    WHERE vcourseEndDate < sysdate
        AND  vcourseseq = '선택된 과정번호';
                
select*from tblstudent;                
SELECT*FROM TBLcourse;
--         과목번호, 과목명, 과목기간, 교재명

SELECT vsubjectSeq
        , vsubjectName
        , vsubjectStartDate || '~' ||vsubjectEndDate
        , vTextbook   
FROM vwsubject
WHERE vsubjectEndDate < sysdate; 


--#B01-007.교사main_강의 스케줄조회_강의종료_과목정보&교육인원
--      과목번호, 과목명, 과목기간, 교재명, 강사명

SELECT vsubjectSeq
        , vcourseName
        , vsubjectName
        , vsubjectStartDate
        , vsubjectEndDate
        , vTextbook   
        , vlecturername
        
FROM vwsubject
     WHERE vsubjectEndDate < sysdate
         AND vsubjectSeq = '선택된 과목 번호';


--      등록인원수
SELECT COUNT(*)
FROM vwstudent
    WHERE vsubjectEndDate < sysdate
         AND vcourseseq = '선택된 과정번호';


--          학생번호, 이름, tel, 등록일, 상태
SELECT  vstudentSeq
        , vstudentName
        , vphonenum
        , vregistrationtime
        , vstudentstatus 
FROM vwstudent
     WHERE vcourseseq = '선택된 과정번호'; 




select*from tblcourse;
 select*from tblsubjectname;                       
 select*from tblstudent;                         
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        