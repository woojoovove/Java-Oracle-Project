--과정(과정번호, 과정명, 과정기간)
SELECT * FROM vwLecRecommendationBasicInfo;

CREATE OR REPLACE VIEW vwLecRecommendationBasicInfo
AS
SELECT 

    C.seq AS vSeq, 
    N.name AS vname, 
    C.startdate AS vstartdate, 
    C.enddate AS venddate

FROM TBLCOURSE C
    INNER JOIN tblCoursename N
        ON C.coursenameseq = N.seq
            where c.enddate < sysdate
                ORDER BY c.enddate desc;
                
--SELECT * FROM TBLCOURSE;
--SELECT * FROM TBLCLASSROOM;
--SELECT * FROM TBLCOURSENAME;

--------------------------------------------------------------------------------------------------------------------------------

SELECT * FROM vwLecturerRecommendation;

CREATE OR REPLACE VIEW vwTopStudents
AS
SELECT

    * 
    
        FROM
(SELECT 
    
    I.seq AS vseq,
    I.name AS vname, 
    I.phonenum AS vphonenum, 
    I.registrationdate AS vregistrationdate, 
    V.vtotal AS vtotal
    
FROM tblCourse c
	
    INNER JOIN tblCourseName N
	ON C.coursenameseq = N.seq
           
			INNER JOIN tblStudent S
			ON S.courseseq = C.seq
            
				INNER JOIN tblStudentInfo I
				ON S.studentinfoseq = I.seq
            
              			      INNER JOIN vwCourseTotal V
      				      ON V.vname = I.name
                  
					ORDER BY v.vtotal DESC)   

                  				      WHERE ROWNUM < 6;    
                
--------------------------------------------------------------------------------------------------------------------------------  
                        
--성적 컬럼 산출(모든 학색)
SELECT * FROM vwCourseTotal;

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

--추천서 입력안한(5등안의 학생)
SELECT T.Seq, T.name, T.phonenum,  T.registrationTime, T.total
FROM vwTopStudents T
    LEFT OUTER JOIN tblRecommendation R
        ON T.Seq = R.studentSeq
            WHERE T.Seq NOT IN (SELECT studentSeq FROM tblRecommendation);

-----------------------------------------------------------------------------------------------------------------------------------
--ENTER시에 관리자등록상태 변경
UPDATE tblrecommendation SET adminConfirm = 'O' WHERE lecturerRecommendation IS NOT NULL;
