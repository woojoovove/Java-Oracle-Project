--A05-002 교육생 등록 (student info)

DESC tblcourse;
INSERT INTO tblstudentinfo values(TBLSTUDENTINFOSEQ.nextval,'입력이름','1111111','1111111111',SYSDATE,DEFAULT);
commit;
rollback;
SELECT * FROM tblstudentinfo;

--A05-004 이름으로 검색
SELECT * FROM tblStudentInfo WHERE name = '문윤하';

--A05-005 과정명,교육생 검색 과정 출력
commit;


-- 과정 출력
SELECT DISTINCT n.name,c.seq FROM tblstudentinfo i 
    INNER JOIN tblstudent s
        ON i.seq=s.studentinfoseq
            INNER JOIN tblcourse c
               ON s.courseseq = c.seq
                    INNER JOIN tblcoursename n
                        ON c.coursenameseq = n.seq;
                        
--과정 검색 후 그 과정의 seq 필요 (선택한 과정의 seq)
SELECT DISTINCT n.name,c.seq FROM tblstudentinfo i 
    INNER JOIN tblstudent s
        ON i.seq=s.studentinfoseq
            INNER JOIN tblcourse c
               ON s.courseseq = c.seq
                    INNER JOIN tblcoursename n
                        ON c.coursenameseq = n.seq;

--A05-006
-- 과정 검색 후 교육생 출력                        
SELECT i.name,i.registrationnum,i.phonenum FROM tblstudentinfo i 
    INNER JOIN tblstudent s
        ON i.seq=s.studentinfoseq
            INNER JOIN tblcourse c
               ON s.courseseq = c.seq
                    INNER JOIN tblcoursename n
                        ON c.coursenameseq = n.seq
                         WHERE i.name like '%'||'교육생이름'||'%' and s.courseseq = '위에서 선택한 과정의 seq';

--A5-007 
-- 006에서 선택한 교육생 -- 그 교육생info seq까지받기
SELECT i.name,i.registrationnum,i.phonenum, 
        n.name,c.startdate,c.enddate,s.status,i.seq
    FROM tblstudentinfo i 
        INNER JOIN tblstudent s
            ON i.seq=s.studentinfoseq
                INNER JOIN tblcourse c
                   ON s.courseseq = c.seq
                        INNER JOIN tblcoursename n
                            ON c.coursenameseq = n.seq
                                WHERE i.name like '%'||'입력'||'%' and s.courseseq = '위에서 받은 선택한 과정의 SEQ';
                                
--수강신청 횟수
SELECT count(*) FROM tblstudent WHERE studentinfoseq = '위에서 받은 선택한 과정의 studentinfo의 SEQ'; 


--A5-008 기본사항 및 과정정보 출력
SELECT i.name,i.registrationnum,i.phonenum, 
        n.name,c.startdate,c.enddate,s.status,i.seq
    FROM tblstudentinfo i 
        INNER JOIN tblstudent s
            ON i.seq=s.studentinfoseq
                INNER JOIN tblcourse c
                   ON s.courseseq = c.seq
                        INNER JOIN tblcoursename n
                            ON c.coursenameseq = n.seq
                                WHERE i.name like '%'||'문윤하'||'%' and s.courseseq = 2;


--A5-008 수강신청 횟수
SELECT count(*) FROM tblstudent WHERE studentinfoseq = '위에서 받은 선택한 과정의 studentSEQ'; 
ROLLBACK;
COMMIT;
--이름,주민번호,전화번호,등록일, 수정  --위에서 받은 studentinfo의 seq
--A05-009 이름
UPDATE tblstudentinfo SET name = '야호호' WHERE seq = 50;   
--A05-010 주민번호
UPDATE tblstudentinfo SET registrationnum = '1111111' WHERE seq =  50;
--A05-011 전화번호
UPDATE tblstudentinfo SET phonenum = '0100100101' WHERE seq =  50;
--A05-012  등록일
UPDATE tblstudentinfo SET registrationdate = '2019-04-04' WHERE seq =  50; --날짜 유형
--A05-013  -> 위에서 교육생INFO SEQ, 교육생SEQ 가지고 내려옴
-- 선택할 수 있는 과정, 과정의 seq 얻기
SELECT n.name,c.seq FROM tblcourse c
    INNER JOIN tblcoursename n
         ON c.coursenameseq = n.seq
            WHERE c.startdate>sysdate;
            
UPDATE tblstudent SET courseseq = '위 과정의 seq' WHERE seq =  50;


UPDATE tblstudent SET courseseq = '입력받은 course의 seq' WHERE seq =  50;

--A05-014 교육생 수료/중도탈락
UPDATE tblstudent SET status = '수료/중도탈락' WHERE seq =  50;
-----------------------------------------------------------------------------------
--A06-001
-- 진행중인 과정 출력 
SELECT n.name,c.seq FROM tblcourse c
    INNER JOIN tblcoursename n
        ON c.coursenameseq=n.seq
            WHERE c.enddate>=sysdate;
--A06-002
-- 진행중인 과정 선택시 과정의 seq
 SELECT n.name,c.seq FROM tblcourse c
    INNER JOIN tblcoursename n
        ON c.coursenameseq=n.seq
            WHERE c.enddate>=sysdate;  
            
----A06-002
-- 002에서 얻은 seq 이용
--과정명,기간,강의실명,교사명
SELECT n.name,c.startdate,c.enddate,r.name,l.name FROM tblcourse c
    INNER JOIN tblcoursename n
        ON c.coursenameseq = n.seq
        INNER JOIN tblclassroom r
            ON c.classroomseq=r.seq
                INNER JOIN tbllecturer l
                    ON c.lecturerseq = l.seq
                        WHERE c.seq = '002 얻은 시퀀스 ' ;
  
---A06-003 과목 출력 
SELECT s.seq,n.name
    FROM tblcourse c
        INNER JOIN tblcoursename n
            ON c.coursenameseq = n.seq
            INNER JOIN tblclassroom r
                ON c.classroomseq=r.seq
                    INNER JOIN tbllecturer l
                        ON c.lecturerseq = l.seq
                            INNER JOIN subject s
                                ON c.seq = s.courseseq
                                 WHERE c.seq = '002 얻은 시퀀스 ' ;


--  성적 등록 여부 
SELECT g.subjectseq, COUNT(*) 
    FROM tblsubjectgrade g
        INNER JOIN subject s
            ON g.subjectseq = s.seq 
                INNER JOIN subjectname n
                    ON n.seq=s.subjectname
     where g.subjectseq in
           (SELECT seq FROM tblsubject WHERE courseseq = '002 얻은 시퀀스 ')
             group by g.subjectseq;

        
-- 시험문제 등록 여부
SELECT COUNT(*) FROM tblquiz
    where subjectgrade = 
        (SELECT seq FROM tblsubject WHERE courseseq = '002 얻은 시퀀스 ');

SELECT g.subjectseq, COUNT(*) 
    FROM tblquiz q
        INNER JOIN subject s
            ON q.subjectseq = s.seq 
                INNER JOIN subjectname n
                    ON n.seq=s.subjectname
     where q.subjectseq in
           (SELECT seq FROM tblsubject WHERE courseseq = '002 얻은 시퀀스 ')
             group by g.subjectseq;


--A06-004
-- 전 단계에서 과정seq, 과목seq 얻기
---A06-003 과목 출력 
SELECT s.seq,n.name,l.name,t.name
    FROM tblcourse c
        INNER JOIN tblcoursename n
            ON c.coursenameseq = n.seq
            INNER JOIN tblclassroom r
                ON c.classroomseq=r.seq
                    INNER JOIN tbllecturer l
                        ON c.lecturerseq = l.seq
                            INNER JOIN subject s
                                ON c.seq = s.courseseq
                                    INNER JOIN textbook t
                                        ON t.seq = s.textbookseq
                                            WHERE c.seq = '002 얻은 시퀀스 ' ;
--얻어온 과정seq, 과목 seq 이용
SELECT i.name,i.registrationnum,g.written,g.practical FROM tblstudent s 
    INNER JOIN tblstudentgrade g
        ON s.seq = g.studentseq
            INNER JOIN tblstudentinfo i
                ON i.seq = s.studentinfoseq
                        WHERE s.courseseq='얻어온 과정 seq' AND g.subjectseq = '얻어온 과목 seq';


--A06005
--학생 검색
SELECT name,registrationnum,phonenum,seq FROM tblstudent WHERE name = '%;'||'입력'||'%'; 

SELECT *
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
                                                INNER JOIN tblsubjectgrade g
                                                    ON s.seq = g.studentseq;
                                                                                                       
                                                   
                       
select * from tblstudent;



