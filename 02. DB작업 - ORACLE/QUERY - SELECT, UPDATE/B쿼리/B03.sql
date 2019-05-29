--B03  - 교사의 seq 가지고 있는 상태

--B03-001 종강 과목 조회  > 과목 seq 필요 
SELECT * FROM vwcousubstubook

WHERE vcouseq = 1 and vsubend<sysdate;

CREATE OR REPLACE VIEW vwcousubstubook
as
SELECT n.name as vcouname,to_char(c.startdate,'yy-mm-dd') as vcoustart,to_char(c.enddate,'yy-mm-dd') as vcouend,
r.name as vroomname,j.name as vsubname,to_char(s.startdate,'yy-mm-dd') as vsubstart,to_char(s.enddate,'yy-mm-dd') as vsubend,t.name as vbookname
,s.attendancepercent as vsubatt,s.writtenpercent as vsubwrit,s.practicalpercent as vsubprac,c.seq as vcouseq,s.seq as vsubseq
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
                                                ON j.seq = s.subjectnameseq
                                                    order by s.seq;
                                                
                                                    WHERE c.seq = 1 and s.enddate<sysdate and ;

--B03-002 종강 과목 조회  > 과목 seq 필요 
select * from vwsinfo;
where vgsubseq = 3;

CREATe or replace VIEW vwsinfo
as
SELECT i.name as vstuname,i.phonenum as vstupnum,s.status as vstustatus,s.seq as vstuseq
    ,g.subjectseq as vgsubseq,  to_char(s.statusDate,'yy-mm-dd') as vstatusdate
    FROM tblsubjectgrade g
        INNER JOIN tblstudent s
            ON g.studentseq=s.seq
                INNER JOIN tblstudentinfo i
                    ON i.seq = s.studentinfoseq
                        WHERE g.attendance is null or g.practical is null;
                        
                        
                        select * from tblsubjectgrade;
insert into TBLSUBJECTGRADe values (TBLSUBJECTGRADESEQ.nextval,31,1,null,null,10);

SELECT count(*) FROM tblsubjectgrade g
    INNER JOIN tblstudent s
        ON g.studentseq=s.seq
            INNER JOIN tblstudentinfo i
                ON i.seq = s.studentinfoseq
                    where subjectseq = 1;
                    
----B03-003 종강 과목 조회  > 과목 seq 필요 
select * from vwstugra where vstuseq=31 and vsubseq=1;
CREATE or replace VIEW vwstugra
as
SELECT i.name as vstuname,i.phonenum as vstupnum,s.status as vstustatus,s.seq as vstuseq,g.subjectseq as vsubseq
          ,s.statusdate as vstustadate,g.seq as vgraseq
    FROM tblsubjectgrade g
        INNER JOIN tblstudent s
            ON g.studentseq=s.seq
                INNER JOIN tblstudentinfo i
                    ON i.seq = s.studentinfoseq;

        
SELECT * FROM tblsubjectgrade;
--B03--004 필기 점수
UPDATE tblsubjectgrade SET written = '입력값' 
    WHERE seq = 2; 

--B03--005 실기 점수
UPDATE tblsubjectgrade SET practical = '입력값' 
    WHERE seq = 2;     
-----------------------------------------------------------------------------------------------------------------------------    
--B03-006 과목선택 
select * from vwcousubstuinfo;
WHERE vcouseq = 1 ;
select * from tblcourse;
CREATE or replace VIEW vwcousubstuinfo
as
SELECT n.name as vcouname,c.startdate as vcoustart,c.enddate as vcouend,
r.name as vroomname,j.name as vsubname,s.startdate as vsubstart,s.enddate as vsubend,t.name as vbookname
,s.attendancepercent as vsubatt,s.writtenpercent as vsubwri,s.practicalpercent as vsubprac, s.seq as vsubseq,
c.seq as vcouseq
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
                                                ON j.seq = s.subjectnameseq
                                                     order by c.seq; 
                                                  
--B03-006 과목선택 후 교육생출력
select * from vwstugrainfo;

CREATE or replace VIEW 
as
SELECT i.name as vstuname,s.seq as vstuseq,g.written as vgrawri,g.practical as vgraprac,g.seq as vgraseq
    ,g.subjectseq as vgrasubseq
    FROM tblsubjectgrade g
        INNER JOIN tblstudent s
            ON g.studentseq=s.seq
                INNER JOIN tblstudentinfo i
                    ON i.seq = s.studentinfoseq;
                        where subjectseq = 2;
--B03-006 과목선택 후 교육생선택 006에서 g.seq 얻기

--B03--004 필기 점수
UPDATE tblsubjectgrade SET written = 10 
    WHERE seq = 2; 

--B03--005 실기 점수
UPDATE tblsubjectgrade SET practical = 10 
    WHERE seq = 2; 


                    

