DROP VIEW vwattendance;
CREATE VIEW vwattendance AS

SELECT  studentSeq as vstudentSeq, 
        TO_CHAR(attendanceDate, 'yyyy-mm-dd') as vattendanceDate,
        to_char((
        select min(attendancedate) from TBLATTENDANCE
                where to_char(attendancedate, 'yyyy-mm-dd') = to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = 9
        ), 'yyyy-mm-dd hh24:mi:ss') as checkIn,
        
        to_char((
            select max(attendancedate) from TBLATTENDANCE
                where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = 9
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
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = 9
                )
                -
                to_date((
                    select to_char(min(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = 9
                ) || '09:00:00', 'yyyy-mm-dd hh24:mi:ss')) * 24)
            AND
            
            
                (((
                    select min(attendancedate) from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = 9
                )
                -
                to_date((
                    select to_char(min(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = 9
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
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = 9
                )
                -
                to_date((
                    select to_char(min(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = 9
                ) || '09:00:00', 'yyyy-mm-dd hh24:mi:ss')) * 24)
            AND
            
            
                (((
                    select min(attendancedate) from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = 9
                )
                -
                to_date((
                    select to_char(min(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = 9
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
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = 9
                )
                -
                to_date((
                    select to_char(min(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = 9
                ) || '09:00:00', 'yyyy-mm-dd hh24:mi:ss')) * 24)
            AND
            
            
                (((
                    select min(attendancedate) from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = 9
                )
                -
                to_date((
                    select to_char(min(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = 9
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
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = 9
                )
                -
                to_date((
                    select to_char(min(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = 9
                ) || '09:00:00', 'yyyy-mm-dd hh24:mi:ss')) * 24)
            AND
            
            
                (((
                    select min(attendancedate) from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = 9
                )
                -
                to_date((
                    select to_char(min(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = 9
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
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = 9
                )
                -
                to_date((
                    select to_char(MAX(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = 9
                ) || '18:00:00', 'yyyy-mm-dd hh24:mi:ss')) * 24)
            AND
            
            
                (((
                    select MAX(attendancedate) from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = 9
                )
                -
                to_date((
                    select to_char(MAX(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = 9
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
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = 9
                )
                -
                to_date((
                    select to_char(MAX(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = 9
                ) || '18:00:00', 'yyyy-mm-dd hh24:mi:ss')) * 24)
            AND
            
            
                (((
                    select MAX(attendancedate) from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = 9
                )
                -
                to_date((
                    select to_char(MAX(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = 9
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
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = 9
                )
                -
                to_date((
                    select to_char(MAX(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = 9
                ) || '18:00:00', 'yyyy-mm-dd hh24:mi:ss')) * 24)
            AND
            
            
                (((
                    select MAX(attendancedate) from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = 9
                )
                -
                to_date((
                    select to_char(MAX(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = 9
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
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = 9
                )
                -
                to_date((
                    select to_char(MAX(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = 9
                ) || '18:00:00', 'yyyy-mm-dd hh24:mi:ss')) * 24)
            AND
            
            
                (((
                    select MAX(attendancedate) from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = 9
                )
                -
                to_date((
                    select to_char(MAX(attendancedate), 'yyyy-mm-dd') from TBLATTENDANCE
                        where to_char(attendancedate, 'yyyy-mm-dd') =  to_char(p.attendancedate, 'yyyy-mm-dd') and  studentseq = 9
                ) || '18:00:00', 'yyyy-mm-dd hh24:mi:ss')) * 24)
            >=-4
        THEN 1
        ELSE 0
    END as early4
        
    FROM tblAttendance p
        WHERE p.attendanceDate BETWEEN '2018-08-13' AND '2018-08-31'        
            GROUP BY studentSeq, TO_CHAR(attendanceDate, 'yyyy-mm-dd')
                ORDER BY studentSeq, TO_CHAR(attendanceDate, 'yyyy-mm-dd');
            
            
            
            
