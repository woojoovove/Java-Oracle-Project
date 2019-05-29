
CREATE OR REPLACE VIEW vwDate
as
select to_date('20180813','yymmdd') + level - 1 as regdate from dual
     connect by level <= (to_date('20180831','yymmdd')-to_date('20180813','yymmdd') + 1 );


CREATE OR REPLACE VIEW vwDates 
    AS SELECT regdate, seq as studentSeq 
        FROM vwDate,(SELECT seq FROM tblStudent)
            WHERE seq BETWEEN 1 AND 30
                AND TO_CHAR(vwdate.regdate, 'yyyy-mm-dd') BETWEEN '2018-08-13' AND '2018-08-31';  
                

CREATE OR REPLACE VIEW vwAbscence AS
SELECT d.regdate, d.studentSeq,
    CASE
        WHEN TO_CHAR(d.regdate, 'd') IN ('7', '1') THEN '주말'
        WHEN a.vstudentSeq IS NOT NULL THEN '출석'
        WHEN a.vstudentSeq IS NULL AND h.name IS NULL THEN '결석'
        WHEN a.vstudentSeq IS NULL AND h.name IS NOT NULL THEN h.name
    END as state
        FROM vwDates d
            LEFT OUTER JOIN vwAttendance a
                ON d.studentseq = a.vstudentseq AND d.regdate = a.vattendancedate
                    LEFT OUTER JOIN tblholiday h
                        ON d.regdate = h.regdate
                            WHERE TO_CHAR(d.regdate, 'yyyy-mm-dd') BETWEEN '2018-08-13' AND '2018-08-31'
                                ORDER BY d.regdate, d.studentSeq;

CREATE VIEW vwAttendanceFinal AS
SELECT  ab.studentSeq, 
        ab.regdate,
        at.goout1, 
        at.goout2, 
        at.goout3, 
        at.late1, 
        at.late2, 
        at.late3, 
        at.early1, 
        at.early2, 
        at.early3,
        ab.state
     FROM vwabscence ab
        LEFT OUTER JOIN vwAttendance at
            ON ab.regdate = at.vattendanceDate AND ab.studentseq = at.vstudentSeq
                    ORDER BY ab.regdate, ab.studentSeq;
        