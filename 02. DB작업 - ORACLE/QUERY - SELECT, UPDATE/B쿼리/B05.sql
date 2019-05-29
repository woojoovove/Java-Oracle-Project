SELECT * FROM vwLecRecommendationBasicInfo;

CREATE OR REPLACE VIEW vwLecRecommendationBasicInfo
AS
SELECT 

    C.coursenameseq AS vcourseNameSeq, 
    N.name AS vname, 
    C.startdate AS vstartdate, 
    C.enddate AS venddate

        FROM TBLCOURSE C
            INNER JOIN tblCoursename N
                
                ON C.coursenameseq = N.seq
                   
                    WHERE c.enddate < sysdate
                        
                        ORDER BY c.enddate DESC;

--------------------------------------------------------------------------------------------------------------------------------

SELECT * FROM vwLecturerRecommendation;

CREATE OR REPLACE VIEW vwLecturerRecommendation
AS
SELECT 
    
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
                            
                                WHERE ROWNUM < 6;    
                
--------------------------------------------------------------------------------------------------------------------------------  
                        
--성적 컬럼 산출
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


