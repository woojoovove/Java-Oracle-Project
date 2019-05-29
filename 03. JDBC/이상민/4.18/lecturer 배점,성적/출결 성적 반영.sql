-- gradeSeq X attendanceGrade

CREATE OR REPLACE VIEW vwTotalAttGrade
AS
SELECT  g.seq, t.attendanceGrade
    FROM vwTotalAttendanceGrade t
        RIGHT OUTER JOIN tblSubjectGrade g
            ON g.studentseq = t.studentseq AND g.subjectseq = t.subjectseq;











