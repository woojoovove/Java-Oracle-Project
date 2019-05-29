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
SELECT * FROM tblSubjectGrade;
SELECT * FROM tblQuiz;
  
DESC tblQuiz;

UPDATE tblQuiz SET contents = ? WHERE NUM = ? AND subjectseq = ?;

UPDATE tblQuiz SET answer = ? WHERE NUM = ? AND subjectseq = ?;
    
--============================================================================================================================== 
COMMIT;
ROLLBACK;
--==============================================================================================================================

--#B02-001.교사main_배점 입출력_과정목록
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

--# B02-003.교사main_배점입출력_과정정보_과목목록_선택과목

SELECT DISTINCT vQuizNum, vQuizContnts, vQuizAnswer 
    FROM vwSubjectPercentQuiz
        WHERE vCourseNum = 1 AND vsubjectnum = 3 AND vQuizState = 1
            ORDER BY vQuizNum; 

SELECT * FROM vwSubjectPercentQuiz;

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

--# B02-003.교사main_배점입출력_과정정보_과목목록_선택과목
--SELECT * FROM vwSubjectSelect;
--
--CREATE OR REPLACE VIEW vwSubjectSelect
--AS
--SELECT 
--
--    sj.seq AS vSubjectNum,
--    sn.name AS vSubjectName
--    
--         FROM tblCourse c
--         
--            INNER JOIN tblSubject sj
--            ON c.seq = sj.courseseq
--
--                INNER JOIN tblSubjectName sn
--                    ON sj.subjectnameseq = sn.seq
--                    
--                        WHERE c.seq = 1 AND sj.seq = 1;

--------------------------------------------------------------------------------------------------------------------------------

--# B02-004.교사main_배점입출력_과정정보_과목목록_선택과목_배점관리
SELECT * FROM vwSubjectSelect;

--------------------------------------------------------------------------------------------------------------------------------

--#B02-005.교사main_배점입출력_과정정보_과목목록_선택과목_배점관리_배점입력

UPDATE tblSubject SET writtenPercent = ?, practicalPercent = ?, attendancePercent = ? WHERE courseseq = ? AND seq = ?; 

--------------------------------------------------------------------------------------------------------------------------------

--#B02-006. 교사main_배점입출력_과정정보_과목목록_선택과목_배점관리_배점수정
SELECT * FROM vwSubjectSelect;

UPDATE tblSubject

	SET writtenPercent = 00, practicalPercent = 00, attendancePercent = 00
    
        WHERE courseseq = 00 AND seq = 00; 

--------------------------------------------------------------------------------------------------------------------------------

--#B02-007. 교사main_배점입출력_과정정보_과목목록_선택과목_배점관리_배점삭제
--CREATE OR REPLACE VIEW vwSubjectPercent
--AS
--SELECT 
--
--    sj.seq AS subjectNum,
--    sn.name AS subjectName,
--    sj.writtenPercent AS writtenPercent,
--    sj.practicalPercent AS practicalPercent,
--    sj.attendancePercent AS attendancePercent
--    
--         FROM tblCourse c
--         
--            INNER JOIN tblSubject sj
--            ON c.seq = sj.courseseq
--
--                INNER JOIN tblSubjectName sn
--                    ON sj.subjectnameseq = sn.seq
--                    
--                        WHERE c.seq = 1 AND sj.seq = 1; 

UPDATE tblQuiz

	SET writtenPercent = 00, practicalPercent = 00, attendancePercent = 00
    
        WHERE courseseq = 00 AND seq = 00;    

--------------------------------------------------------------------------------------------------------------------------------

--#B02-008.교사main_배점입출력_과정정보_과목목록_선택과목_시험날짜 관리
SELECT * FROM vwSubjectSelect;

--------------------------------------------------------------------------------------------------------------------------------

--#B02-009. 배점입출력_과정정보_과목목록_선택과목_시험날짜관리_시험날짜입력
SELECT * FROM vwSubjectSelect;

UPDATE tblQuiz 
    SET quizDate = ? 
        WHERE subjectSeq = ?;

--(PL/SQL 혹은 JAVA에서 작업할때,  이 날짜를 변수에 담아 저장해둔다
--나중에 INSERT 할 때 날짜를 삽입하기 위해)

--------------------------------------------------------------------------------------------------------------------------------

--#B02-010. 배점입출력_과정정보_과목목록_선택과목_시험날짜관리_시험날짜삭제
--CREATE OR REPLACE VIEW vwSubjectQuizdate
--AS
--SELECT 
--
--    sj.seq AS subjectNum,
--    sn.name AS subjectName,
--    q.quizdate AS quizdate
--    
--         FROM tblCourse c
--         
--            INNER JOIN tblSubject sj
--            ON c.seq = sj.courseseq
--
--                INNER JOIN tblSubjectName sn
--                    ON sj.subjectnameseq = sn.seq
--                    
--                        INNER JOIN tblQuiz q
--                            ON sj.seq = q.subjectSeq
--                    
--                                WHERE c.seq = 1 AND sj.seq = 3;

UPDATE tblQuiz
	SET quizdate = NULL 
        WHERE subjectSeq = 3 AND seq = 3;  

--------------------------------------------------------------------------------------------------------------------------------\

--#B02-011. 배점입출력_과정정보_과목목록_선택과목_시험문제관리
SELECT * FROM vwSubjectSelect;

--------------------------------------------------------------------------------------------------------------------------------

--#B02-012. 배점입출력_과정정보_과목목록_선택과목_시험문제관리_시험문제입력
SELECT * FROM vwSubjectQuizdate;

INSERT INTO tblQuiz (seq, type, num, contents, answer, subseq, quizdate, state)
    VALUES (quizSeq.NEXTVAL, '필기', ?, ?, ?, ?, DEFAULT, DEFAULT);

        
--10개 행이 함께 입력된다(문제 내용 각각 다름)

--------------------------------------------------------------------------------------------------------------------------------

--#B02-013. 배점입출력_과정정보_과목목록_선택과목_시험문제관리_시험문제삭제
SELECT DISTINCT vQuizNum, vQuizContnts, vQuizAnswer 
    FROM vwSubjectPercentQuiz
        WHERE vCourseNum = 1 AND vsubjectnum = 3 AND vQuizState = 1
            ORDER BY vQuizNum; 



UPDATE tblQuiz
	SET contents = NULL 
        WHERE subjectSeq = 3 AND seq = 3;  

--==============================================================================================================================


