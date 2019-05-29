--B03  - 교사의 seq 가지고 있는 상태

--B03-001 종강 과목 조회  > 과목 seq 필요 
SELECT * FROM vwcousubstubook  
WHERE vlecturerseq = 4 and vcouend=(select max(enddate) from tblcourse where enddate<sysdate and lecturerseq=4);

select * from tblcourse;

select max(enddate) from tblcourse where enddate<sysdate;
select* from tbllecturer;

CREATE OR REPLACE VIEW vwcousubstubook
as
SELECT n.name as vcouname,to_char(c.startdate,'yy-mm-dd') as vcoustart,to_char(c.enddate,'yy-mm-dd') as vcouend,
r.name as vroomname,j.name as vsubname,to_char(s.startdate,'yy-mm-dd') as vsubstart,to_char(s.enddate,'yy-mm-dd') as vsubend,t.name as vbookname
,s.attendancepercent as vsubatt,s.writtenpercent as vsubwrit,s.practicalpercent as vsubprac,c.seq as vcouseq,s.seq as vsubseq, l.seq as vlecturerseq
    FROM tblcourse c
        INNER JOIN tblcoursename n
            ON c.coursenameseq = n.seq
            INNER JOIN tblclassroom r
                ON c.classroomseq=r.seq
                    INNER JOIN tbllecturer l
                        ON c.lecturerseq = l.seq
                            INNER JOIN tblsubject s
                                ON c.seq = s.courseseq
                                    INNER JOIN tbltextbook t
                                        ON t.seq = s.textbookseq
                                           INNER JOIN tblsubjectname j
                                                ON j.seq = s.subjectnameseq
                                                    WHERE c.enddate=(select max(enddate) from tblcourse where enddate<sysdate)
                                                        order by s.seq;
                                                                                
                                                    WHERE c.seq = 1 and s.enddate<sysdate and ;

--B03-002 종강 과목 조회  > 과목 seq 필요 
select * from vwsinfo;
where vgsubseq = 3;

CREATe or replace VIEW vwsinfo
as
SELECT i.name as vstuname,i.phonenum as vstupnum,
case
     when s.status = '3' then '수료'
            when s.status = '2' then '중도탈락'
             when s.status = '1' then '수강중'
            when s.status ='4' then '수강예정'     
    else '잘못된 입력'
    end
    as vstustatus,s.seq as vstuseq
    ,g.subjectseq as vgsubseq,  
    case
    when  to_char(s.statusDate,'yy-mm-dd') is not null then  to_char(s.statusDate,'yy-mm-dd')
    when  to_char(s.statusDate,'yy-mm-dd') is null then '해당사항 없음'
    end
    as vstatusdate
    FROM tblsubjectgrade g
        INNER JOIN tblstudent s
            ON g.studentseq=s.seq
                INNER JOIN tblstudentinfo i
                    ON i.seq = s.studentinfoseq
                        WHERE g.attendance is null or g.practical is null and i.state=1 and s.status!='2';
                        
                        
                        select * from tblsubjectgrade;
insert into TBLSUBJECTGRADe values (TBLSUBJECTGRADESEQ.nextval,31,1,null,null,10);

SELECT count(*) FROM tblsubjectgrade g
    INNER JOIN tblstudent s
        ON g.studentseq=s.seq
            INNER JOIN tblstudentinfo i
                ON i.seq = s.studentinfoseq
                    where subjectseq = 1;
    
select * from tblsubjectgrade;
----B03-003 종강 과목 조회  > 과목 seq 필요 
select * from vwstugra where vstuseq=31 and vsubseq=1;
CREATE or replace VIEW vwstugra
as
SELECT i.name as vstuname,i.phonenum as vstupnum,
case
    when s.status = '3' then '수료'
            when s.status = '2' then '중도탈락'
             when s.status = '1' then '수강중'
            when s.status ='4' then '수강예정'   
    else '잘못된 입력'
end as vstustatus,s.seq as vstuseq,g.subjectseq as vsubseq
          ,to_char(s.statusdate,'yyyy-mm-dd') as vstustadate,g.seq as vgraseq
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
                        ON c.lecturerseq = l.seq
                            INNER JOIN tblsubject s
                                ON c.seq = s.courseseq
                                    INNER JOIN tbltextbook t
                                        ON t.seq = s.textbookseq
                                           INNER JOIN tblsubjectname j
                                                ON j.seq = s.subjectnameseq
                                                     order by c.seq; 
                                                  
--B03-006 과목선택 후 교육생출력
select * from vwstugrainfo  where vgrasubseq = 2;

CREATE or replace VIEW vwstugrainfo
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


                    
select * from vwstugrainfo where vgrasubseq =1;

select * from tblsubjectgrade;
update tblsubjectgrade set written = null where seq =1;


------------------------------------------------------------------------------------------------
CREATE OR REPLACE VIEW vwattendance AS

SELECT  studentSeq as vstudentSeq, 
        TO_CHAR(attendanceDate, 'yyyy-mm-dd') as vattendanceDate,
        
        CASE
            WHEN TO_CHAR(attendanceDate, 'yyyy-mm-dd') BETWEEN '2018-07-02'AND '2018-08-10'THEN 1
            WHEN TO_CHAR(attendanceDate, 'yyyy-mm-dd') BETWEEN '2018-08-13'AND '2018-08-31'THEN 2
            WHEN TO_CHAR(attendanceDate, 'yyyy-mm-dd') BETWEEN '2018-09-03'AND '2018-09-24'THEN 3
            WHEN TO_CHAR(attendanceDate, 'yyyy-mm-dd') BETWEEN '2018-10-15'AND '2018-11-05'THEN 4
        END as subjectSeq,
       
        to_char((
        select min(attendancedate) from TBLATTENDANCE
                where to_char(attendancedate, 'yyyy-mm-dd') = to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
        ), 'yyyy-mm-dd hh24:mi:ss') as checkIn,
        
        to_char((
            select max(attendancedate) from TBLATTENDANCE
                where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
        ), 'yyyy-mm-dd hh24:mi:ss') as checkOut,
        
        CASE
            WHEN COUNT(*) =4 THEN 1
            ELSE 0
        END as goout1,
        
        CASE
            WHEN COUNT(*) =6 THEN 1
            ELSE 0
        END as goout2,
        
        CASE
            WHEN COUNT(*) >=8 THEN 1
            ELSE 0
        END as goout3,
        
        
        
    CASE
        WHEN
            1>=
                (((
                    select min(attendancedate) from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                )
                -
                to_date((
                    select to_char(min(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                ) || '09:00:00', 'yyyy-mm-dd hh24:mi:ss')) * 24)
            AND
            
            
                (((
                    select min(attendancedate) from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                )
                -
                to_date((
                    select to_char(min(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                ) || '09:00:00', 'yyyy-mm-dd hh24:mi:ss')) * 24)
            >0
        THEN 1
        ELSE 0
    END as late1,
    
    CASE
        WHEN
            2>=
                (((
                    select min(attendancedate) from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                )
                -
                to_date((
                    select to_char(min(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                ) || '09:00:00', 'yyyy-mm-dd hh24:mi:ss')) * 24)
            AND
            
            
                (((
                    select min(attendancedate) from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                )
                -
                to_date((
                    select to_char(min(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                ) || '09:00:00', 'yyyy-mm-dd hh24:mi:ss')) * 24)
            >1
        THEN 1
        ELSE 0
    END as late2,
    
    CASE
        WHEN
            3>=
                (((
                    select min(attendancedate) from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                )
                -
                to_date((
                    select to_char(min(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                ) || '09:00:00', 'yyyy-mm-dd hh24:mi:ss')) * 24)
            AND
            
            
                (((
                    select min(attendancedate) from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                )
                -
                to_date((
                    select to_char(min(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                ) || '09:00:00', 'yyyy-mm-dd hh24:mi:ss')) * 24)
            >2
        THEN 1
        ELSE 0
    END as late3,
    
    CASE
        WHEN
            4>=
                (((
                    select min(attendancedate) from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                )
                -
                to_date((
                    select to_char(min(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                ) || '09:00:00', 'yyyy-mm-dd hh24:mi:ss')) * 24)
            AND
            
            
                (((
                    select min(attendancedate) from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                )
                -
                to_date((
                    select to_char(min(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                ) || '09:00:00', 'yyyy-mm-dd hh24:mi:ss')) * 24)
            >3
        THEN 1
        ELSE 0
    END as late4,
    
    CASE
        WHEN
            0>
                (((
                    select MAX(attendancedate) from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                )
                -
                to_date((
                    select to_char(MAX(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                ) || '18:00:00', 'yyyy-mm-dd hh24:mi:ss')) * 24)
            AND
            
            
                (((
                    select MAX(attendancedate) from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                )
                -
                to_date((
                    select to_char(MAX(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                ) || '18:00:00', 'yyyy-mm-dd hh24:mi:ss')) * 24)
            >=-1
        THEN 1
        ELSE 0
    END as early1,
    
    CASE
        WHEN
            -1>
                (((
                    select MAX(attendancedate) from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                )
                -
                to_date((
                    select to_char(MAX(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                ) || '18:00:00', 'yyyy-mm-dd hh24:mi:ss')) * 24)
            AND
            
            
                (((
                    select MAX(attendancedate) from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                )
                -
                to_date((
                    select to_char(MAX(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                ) || '18:00:00', 'yyyy-mm-dd hh24:mi:ss')) * 24)
            >=-2
        THEN 1
        ELSE 0
    END as early2,
    
    CASE
        WHEN
            -2>
                (((
                    select MAX(attendancedate) from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                )
                -
                to_date((
                    select to_char(MAX(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                ) || '18:00:00', 'yyyy-mm-dd hh24:mi:ss')) * 24)
            AND
            
            
                (((
                    select MAX(attendancedate) from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                )
                -
                to_date((
                    select to_char(MAX(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                ) || '18:00:00', 'yyyy-mm-dd hh24:mi:ss')) * 24)
            >=-3
        THEN 1
        ELSE 0
    END as early3,
    
    CASE
        WHEN
            -3>
                (((
                    select MAX(attendancedate) from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                )
                -
                to_date((
                    select to_char(MAX(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                ) || '18:00:00', 'yyyy-mm-dd hh24:mi:ss')) * 24)
            AND
            
            
                (((
                    select MAX(attendancedate) from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                )
                -
                to_date((
                    select to_char(MAX(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = p.studentSeq
                ) || '18:00:00', 'yyyy-mm-dd hh24:mi:ss')) * 24)
            >=-4
        THEN 1
        ELSE 0
    END as early4
        
    FROM tblAttendance p
            GROUP BY studentSeq, TO_CHAR(attendanceDate, 'yyyy-mm-dd')
                ORDER BY studentSeq, TO_CHAR(attendanceDate, 'yyyy-mm-dd');

SELECT * FROM vwAttendance;

SELECT * FROM vwAttendance;
--------------------------------------------------------------------------------------------------------------------------------

create or replace view vwDate
as
select to_date('20180813','yymmdd') + level - 1 as regdate from dual
     connect by level <= (to_date('20180831','yymmdd')-to_date('20180813','yymmdd') + 1 );

SELECT * FROM vwDate;

--------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE VIEW vwDates  -- 과목 내 모든 날짜 x 학생 시퀀스: n번 학생은 이 날 출석 해야한다.
    AS SELECT regdate, seq as studentSeq 
        FROM vwDate, (SELECT seq FROM tblStudentInfo); 
                
SELECT * FROM vwDates;                

--------------------------------------------------------------------------------------------------------------------------------


CREATE OR REPLACE VIEW vwAbscence AS -- 과목 내 결석부, 정상 추가
SELECT d.regdate, d.studentSeq, a.subjectSeq,
    CASE
        WHEN TO_CHAR(d.regdate, 'd') IN ('7', '1') THEN 0
        WHEN a.vstudentSeq IS NOT NULL THEN 0
        WHEN a.vstudentSeq IS NULL AND h.name IS NULL THEN 1
        WHEN a.vstudentSeq IS NULL AND h.name IS NOT NULL THEN 0
    END as abscence,
    CASE
        WHEN a.vstudentSeq IS NOT NULL THEN 1
    END as attended
        FROM vwDates d
            LEFT OUTER JOIN vwAttendance a
                ON d.studentseq = a.vstudentseq AND d.regdate = a.vattendancedate
                    LEFT OUTER JOIN tblholiday h
                        ON d.regdate = h.regdate
                                ORDER BY d.regdate, d.studentSeq;
--------------------------------------------------------------------------------------------------------------------------------
SELECT * FROM vwDates;

CREATE OR REPLACE VIEW vwAttendanceFinal AS -- 전체 학생별 출결 현황
SELECT  ab.studentSeq, 
        at.subjectSeq,
        ab.regdate,
        at.goout1, 
        at.goout2, 
        at.goout3, 
        at.late1, 
        at.late2, 
        at.late3,
        at.late4,
        at.early1, 
        at.early2, 
        at.early3,
        at.early4,
        ab.abscence,
        ab.attended
     FROM vwabscence ab
        LEFT OUTER JOIN vwAttendance at
            ON ab.regdate = at.vattendanceDate AND ab.studentseq = at.vstudentSeq
                    ORDER BY ab.regdate, ab.studentSeq;
                    
--------------------------------------------------------------------------------------------------------------------------------  

CREATE OR REPLACE VIEW vwAttendanceGrade -- 과목 기간 내 학생별/항목별 벌점 
AS
SELECT 
    studentseq,
    subjectSeq,
    CASE
        WHEN SUM(late1) >=3
        THEN SUM(late1) * 20/9 * 1.1 
        ELSE SUM(late1) * 20/9
    END as pLate1,
    
    CASE 
        WHEN SUM(late2) >=3
        THEN SUM(late2) * 20/7 * 1.15
        ELSE SUM(late2) * 20/7
    END as pLate2,
    
    CASE 
        WHEN SUM(late3) >=2
        THEN SUM(late3) * 20/5 * 1.2
        ELSE SUM(late3) * 20/5
    END as pLate3,
    
    SUM(late4) * 20/3 as pLate4,
    
    CASE
        WHEN SUM(early1) >=3
        THEN SUM(early1) * 20/9 * 1.1 
        ELSE SUM(early1) * 20/9
    END as pearly1,
    
    CASE 
        WHEN SUM(early2) >=3
        THEN SUM(early2) * 20/7 * 1.15
        ELSE SUM(early2) * 20/7
    END as pearly2,
    
    CASE 
        WHEN SUM(early3) >=2
        THEN SUM(early3) * 20/5 * 1.2
        ELSE SUM(early3) * 20/5
    END as pearly3,
    
    SUM(early4) * 20/3 as pearly4,
    
    SUM(abscence) * 20/3 as abscence,
    
    SUM(goout1) * 2 as goout1,
    
    SUM(goout2) * 2.2 as goout2,
    
    SUM(goout3) * 2.4 as goout3
    
FROM vwAttendanceFinal
GROUP BY studentseq, subjectSeq; 
--------------------------------------------------------------------------------------------------------------------------------


CREATE OR REPLACE VIEW vwTotalAttendanceGrade AS --과목 기간 내 학생별 출결 총점
SELECT 
    studentseq,
    subjectSeq,
    ROUND(20 - (plate1 + plate2 + plate3 + plate4 + pearly1 + pearly2 + pearly3 + abscence + goout1 + goout2 + goout3)) attendanceGrade
FROM vwAttendanceGrade;

--------------------------------------------------------------------------------------------------------------------------------    

CREATE OR REPLACE VIEW vwCountAttendance AS             
SELECT
    s.seq,
    s.name,
    SUM(goout1) + SUM(goout2) + SUM(goout3) AS goout,
    SUM(late1) + SUM(late2) + SUM(late3) + SUM(late4) AS late,
    SUM(early1) + SUM(early2) + SUM(early3) + SUM(early4) AS early,
    SUM(abscence) AS abscence,
    SUM(attended) AS attended
        FROM vwAttendanceFinal v
            INNER JOIN tblStudentInfo s
                ON v.studentSeq = s.seq
                    GROUP BY s.seq, s.name
                        ORDER BY s.seq;

--------------------------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE VIEW vwCourse
AS
SELECT C.seq AS vcourseSeq
        , CN.name AS vcourseName
        , C.startDate AS vcourseStartDate
        , C.endDate AS vcourseEndDate
        , CR.name AS vclassroom
        , L.seq AS vlecturerSeq
        , L.name AS vlecturerName
FROM tblCourse C
    LEFT OUTER JOIN tblCourseName CN
    ON CN.seq = C.courseNameSeq
        LEFT OUTER JOIN tblClassroom CR
        ON CR.seq = C.classroomSeq
            LEFT OUTER JOIN tblLecturer L
            ON  L.Seq = C.lecturerSeq;     
            


--과목을 보는 뷰( 과목번호, 과목명, 과목시작기간,과목종료기간,  교재명)
CREATE OR REPLACE VIEW vwSubject
AS
SELECT S.seq AS vsubjectSeq
        , SN.name AS vsubjectName
        , S.startDate AS vsubjectStartDate
        , S.endDate AS vsubjectEndDate
        , T.name AS vTextbook
        , L.name AS vlecturerName
        , C.seq AS vcourseSeq
        , CN.name AS vcourseName
FROM tblCourse C
    LEFT OUTER JOIN tblCourseName CN
    ON CN.seq = C.courseNameSeq
        LEFT OUTER JOIN tblClassroom CR
        ON CR.seq = C.classroomSeq
            RIGHT OUTER JOIN tblSubject S
            ON C.seq = S.courseseq
                LEFT OUTER JOIN tblSubjectName SN
                ON SN.seq = S.subjectnameseq
                    LEFT OUTER JOIN tblTextbook T
                    ON T.seq = S.textbookseq
                        LEFT OUTER JOIN tblLecturer L
                        ON  L.seq = C.lecturerSeq
                            ORDER BY vsubjectstartdate; 
                            

-- 점수를 불러오는 뷰                            
SELECT * FROM vwTotalAttendanceGrade ORDER BY studentSeq;                         
-------------------------------------------------------------------------------------------------
select * from vwTotalAttGrade;
select * from tblsubjectgrade;
commit;
select * from tblstudentinfo;
update tblsubjectgrade set Attendance = (select attendancegrade from vwTotalAttGrade where seq = 3) where seq =3;  


CREATE OR REPLACE VIEW vwTotalAttGrade
AS
SELECT  g.seq, t.attendanceGrade
    FROM vwTotalAttendanceGrade t
        RIGHT OUTER JOIN tblSubjectGrade g
            ON g.studentseq = t.studentseq AND g.subjectseq = t.subjectseq;