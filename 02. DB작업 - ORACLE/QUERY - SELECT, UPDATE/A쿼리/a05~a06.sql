--A05-002 교육생 등록 (student info)

INSERT INTO tblstudentinfo values(TBLSTUDENTINFOSEQ.nextval,'테스트','1111111','1111111111',SYSDATE,default);
SELECT * FROM tblstudentinfo;

--A05-004 이름으로 검색
SELECT * FROM tblStudentInfo WHERE name = '문윤하';

--A05-005 과정명,교육생 검색 과정 출력
commit;


-- 과정 출력
select * from vwcoustu;

CREATE OR REPLACE view vwcoustu
as
SELECT DISTINCT n.name as vname,c.seq as vseq FROM tblstudentinfo i 
    INNER JOIN tblstudent s
        ON i.seq=s.studentinfoseq
            INNER JOIN tblcourse c
               ON s.courseseq = c.seq
                    INNER JOIN tblcoursename n
                        ON c.coursenameseq = n.seq;
                        
--과정 검색 후 그 과정의 seq 필요 (선택한 과정의 seq)
select * from vwcourse;

--A05-006
-- 과정 검색 후 교육생 출력

SELECT * FROM vwstusinfo
    WHERE vstuname like '%'||'문윤하'||'%' and vcouseq = 1;


CREATE OR REPLACE VIEW vwstusinfo
as
SELECT i.name AS vstuname,i.registrationnum as vsturnum,
    i.phonenum as vstupnum,s.courseseq as vcouseq,i.seq as vsinfoseq FROM tblstudentinfo i 
    INNER JOIN tblstudent s
        ON i.seq=s.studentinfoseq
            INNER JOIN tblcourse c
               ON s.courseseq = c.seq
                    INNER JOIN tblcoursename n
                        ON c.coursenameseq = n.seq;
                        
               

--A5-007 
-- 006에서 선택한 교육생 -- 그 교육생info seq까지받기
SELECT * FROM vwstucou
WHERE vstuname like '%'||'문윤하'||'%' and vcouseq =1;

CREATE OR REPLACE VIEW vwstucou
as
SELECT i.name as vstuname,i.registrationnum as vsturnum,i.phonenum as vstupnum, 
        n.name as vcouname,c.startdate as vcoustart,c.enddate as vcouend,s.status as vstustatus,i.seq as vstuinseq , c.seq as vcouseq
    FROM tblstudentinfo i 
        INNER JOIN tblstudent s
            ON i.seq=s.studentinfoseq
                INNER JOIN tblcourse c
                   ON s.courseseq = c.seq
                        INNER JOIN tblcoursename n
                            ON c.coursenameseq = n.seq;
                                
                                
--수강신청 횟수
SELECT count(*) FROM tblstudent WHERE studentinfoseq = 42; 


--A5-008 기본사항 및 과정정보 출력
SELECT * FROM vwstucou;

SELECT i.name,i.registrationnum,i.phonenum, 
        n.name,c.startdate,c.enddate,s.status,i.seq
    FROM tblstudentinfo i 
        INNER JOIN tblstudent s
            ON i.seq=s.studentinfoseq
                INNER JOIN tblcourse c
                   ON s.courseseq = c.seq
                        INNER JOIN tblcoursename n
                            ON c.coursenameseq = n.seq;
                               


--A5-008 수강신청 횟수
SELECT count(*) FROM tblstudent WHERE studentinfoseq = 42; 

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

SELECT * FROM vwcoudate;

CREATE OR REPLACE VIEW vwcoudate
as
SELECT n.name as vcouname,c.seq as vcouseq,c.startdate as vcoustart, c.enddate as vcouend  FROM tblcourse c
    INNER JOIN tblcoursename n
         ON c.coursenameseq = n.seq;
            WHERE c.startdate>sysdate;
            
            
UPDATE tblstudent SET courseseq = '위 과정의 seq' WHERE seq =  50;

UPDATE tblstudent SET courseseq = '입력받은 course의 seq' WHERE seq =  50;

--A05-014 교육생 수료/중도탈락
UPDATE tblstudent SET status = '수료/중도탈락' WHERE seq =  50;
-----------------------------------------------------------------------------------
--A06-001
-- 진행중인 과정 출력 
SELECT * FROM vwcouingdate;

CREATE OR REPLACE VIEW vwcouingdate
AS
SELECT n.name as vcouname,c.seq as vcouseq FROM tblcourse c
    INNER JOIN tblcoursename n
        ON c.coursenameseq=n.seq
            WHERE sysdate between c.startdate and c.enddate ;
--A06-002
-- 진행중인 과정 선택시 과정의 seq
SELECT * FROM vwcouingdate;

-- SELECT n.name,c.seq FROM tblcourse c
--    INNER JOIN tblcoursename n
--        ON c.coursenameseq=n.seq
--            WHERE c.enddate>=sysdate;  
            
----A06-002
-- 002에서 얻은 seq 이용
--과정명,기간,강의실명,교사명
SELECT * FROM vwcouroomlec
     WHERE  vcouseq = 2;

CREATE OR REPLACE VIEW vwcouroomlec
AS
SELECT n.name as vcouname,c.startdate as vcoustart,c.enddate as vcouend,r.name as vroomname,l.name as vlecname, c.seq as vcouseq 
   FROM tblcourse c
    INNER JOIN tblcoursename n
        ON c.coursenameseq = n.seq
        INNER JOIN tblclassroom r
            ON c.classroomseq=r.seq
                INNER JOIN tbllecturer l
                    ON c.lectureseq = l.seq;
                           

---A06-003 과목 출력 
SELECT * FROM vwcousub
    WHERE vcouseq = 2 ;

CREATE OR REPLACE VIEW vwcousub
as
SELECT s.seq as vsubseq,j.name as vsubname,c.seq as vcouseq
    FROM tblcourse c
        INNER JOIN tblcoursename n
            ON c.coursenameseq = n.seq
            INNER JOIN tblclassroom r
                ON c.classroomseq=r.seq
                    INNER JOIN tbllecturer l
                        ON c.lectureseq  = l.seq
                            INNER JOIN tblsubject s
                                ON c.seq = s.courseseq
                                    INNER JOIN tblsubjectname j
                                        ON j.seq = s.subjectnameseq;
                                           


--  성적 등록 여부 
SELECT vsubseq,count(*) as cnt FROM vwgrasub
 where vsubseq in (SELECT seq FROM tblsubject WHERE courseseq = 1)
    GROUP BY vsubseq order by vsubseq;

select * from vwgrasub;
CREATE OR REPLACE VIEW vwgrasub
AS
SELECT s.seq as vsubseq, g.subjectseq as vgrasubseq 
    FROM tblsubjectgrade g
        INNER JOIN tblsubject s
            ON g.subjectseq = s.seq 
                INNER JOIN tblsubjectname n
                    ON n.seq=s.subjectnameseq;
                    
                        where vsubseq in
                             (SELECT seq FROM tblsubject WHERE courseseq = 1);

select * from tblsubjectgrade;      
select * from tblsubject; 
        
-- 시험문제 등록 여부
SELECT subjectseq as subseq,COUNT(*) as cnt FROM tblquiz
    where subjectseq in
        (SELECT seq FROM tblsubject WHERE courseseq =1)
            group by subjectseq;

SELECT * FROM tblquiz;
----------------------------------

SELECT g.subjectseq, COUNT(*) 
    FROM tblquiz q
        INNER JOIN subject s
            ON q.subjectseq = s.seq 
                INNER JOIN subjectname n
                    ON n.seq=s.subjectname
     where q.subjectseq in
           (SELECT seq FROM tblsubject WHERE courseseq = '002 얻은 시퀀스 ')
             group by g.subjectseq;

----------------------------------
--A06-004
-- 전 단계에서 과정seq, 과목seq 얻기
---A06-003 과목 출력 
SELECT * FROM vwsubcouroomlec
 WHERE vcouseq = 2 ;

CREATE OR REPLACE VIEW vwsubcouroomlec
as
SELECT n.name as vcouname, r.name as vroomname, l.name as vlecname
,j.name as vsubsname,c.seq as vcouseq, s.seq as vsubseq
    FROM tblcourse c
        INNER JOIN tblcoursename n
            ON c.coursenameseq = n.seq
            INNER JOIN tblclassroom r
                ON c.classroomseq=r.seq
                    INNER JOIN tbllecturer l
                        ON c.lectureseq = l.seq
                            INNER JOIN tblsubject s
                                ON c.seq = s.courseseq
                                    INNER JOIN tbltextbook t
                                        ON t.seq = s.textbookseq
                                            INNER JOIN tblsubjectname j
                                                ON j.seq = s.subjectnameseq;
                                           
--얻어온 과정seq, 과목 seq 이용
SELECT * FROM vwsinfogra
WHERE vcouseq=1 AND vsubseq = 1;

CREATE OR REPLACE VIEW vwsinfogra
AS
SELECT i.name as vstuname,i.registrationnum as vrnum,g.written as vgrawri,g.practical as vgraprac
 , s.courseseq  as vcouseq, g.subjectseq as vsubseq FROM tblstudent s 
    INNER JOIN tblsubjectgrade g
        ON s.seq = g.studentseq
            INNER JOIN tblstudentinfo i
                ON i.seq = s.studentinfoseq;
                        WHERE s.courseseq=1 AND g.subjectseq = 1;


--A06005
--학생 검색
SELECT name,registrationnum,phonenum,seq FROM tblstudentinfo WHERE name like '%'||'문윤하'||'%'; 

SELECT * FROM vwcousubstutexlec
WHERE vsinfoseq =1;


CREATE OR REPLACE VIEW vwcousubstutexlec
as
SELECT distinct i.name as vstuname, i.registrationnum as vsturnum, i.phonenum as vstupnum,
        n.name as vcouname, c.startdate as vcoustart, c.enddate as vcouend,
        r.name as vroomname, e.name as vsubname, j.startdate as vsubstart, j.enddate as vsubend,
        t.name as vtexname, l.name as vlecname,i.seq as vsinfoseq,c.seq as vcouseq
         FROM tblcourse c   --과정
           INNER JOIN tblcoursename n  --과정명
             ON c.coursenameseq = n.seq
            INNER JOIN tblclassroom r  --강의실
                 ON c.classroomseq=r.seq
                    INNER JOIN tbllecturer l  --강사
                        ON c.lectureseq = l.seq
                            INNER JOIN tblsubject j  --과목
                                ON c.seq = j.courseseq
                                    INNER JOIN tbltextbook t  --교재
                                        ON t.seq = j.textbookseq
                                         INNER JOIN tblstudent s  --교육생    
                                            ON s.courseseq = c.seq
                                            INNER JOIN tblstudentinfo i --교육생정보
                                               ON  i.seq = s.studentinfoseq
                                                INNER JOIN tblsubjectgrade g
                                                    ON s.seq = g.studentseq
                                                        INNER JOIN tblsubjectname e
                                                            ON e.seq = j.subjectnameseq;
                                                   
                       
select * from tblstudent;



