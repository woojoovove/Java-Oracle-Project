CREATE TABLE tblAttendanceType
(
    seq NUMBER PRIMARY KEY,
    name VARCHAR2(20) NOT NULL,
    legitimacy VARCHAR(3) NOT NULL,
    point NUMBER NOT NULL,
    weightedPoint NUMBER NOT NULL,
    
--    CHECK (legitimacy = 'YES' || 'NO')
    CHECK (legitimacy IN ('YES', 'NO'))
    
);

INSERT INTO tblAttendanceType VALUES(1, '1h지각', 'NO', 20/9, 1.1); --MAX 5회
INSERT INTO tblAttendanceType VALUES(2, '2h지각', 'NO', 20/7, 1.15); --MAX 4회
INSERT INTO tblAttendanceType VALUES(3, '3h지각', 'NO', 20/5, 1.2); --MAX 3회
INSERT INTO tblAttendanceType VALUES(4, '4h지각', 'NO', 20/3, 0); --MAX 3회
-- 4h 이상 지각은 결석과 벌점 및 가중치가 같을 것

INSERT INTO tblAttendanceType VALUES(5, '1h조퇴', 'NO', 20/6, 1.1); 
INSERT INTO tblAttendanceType VALUES(6, '2h조퇴', 'NO', 20/5, 1.15);
INSERT INTO tblAttendanceType VALUES(7, '3h조퇴', 'NO', 20/4, 1.2);
INSERT INTO tblAttendanceType VALUES(8, '4h조퇴', 'NO', 20/3, 0);
-- 4h 이상 이른 조퇴는 결석과 벌점 및 가중치가 같을 것

INSERT INTO tblAttendanceType VALUES(9, '1h외출', 'NO', 20/4, 1.2);
INSERT INTO tblAttendanceType VALUES(10, '2h외출', 'NO', 20/4, 1.2);
INSERT INTO tblAttendanceType VALUES(11, '3h외출', 'NO', 20/4, 1.2);

INSERT INTO tblAttendanceType VALUES(12, '결석', 'NO', 20/3, 1);


INSERT INTO tblAttendanceType VALUES(13, '1h지각', 'YES', 0,0);
INSERT INTO tblAttendanceType VALUES(14, '2h지각', 'YES', 0,0);
INSERT INTO tblAttendanceType VALUES(15, '3h지각', 'YES', 0,0);
INSERT INTO tblAttendanceType VALUES(16, '4h지각', 'YES', 0,0);
-- 4h 이상 지각은 결석과 벌점 및 가중치가 같을 것

INSERT INTO tblAttendanceType VALUES(17, '1h조퇴', 'YES', 0,0);
INSERT INTO tblAttendanceType VALUES(18, '2h조퇴', 'YES', 0,0);
INSERT INTO tblAttendanceType VALUES(19, '3h조퇴', 'YES', 0,0);
INSERT INTO tblAttendanceType VALUES(20, '4h조퇴', 'YES', 0,0);
-- 4h 이상 이른 조퇴는 결석과 벌점 및 가중치가 같을 것

INSERT INTO tblAttendanceType VALUES(21, '1h외출', 'YES', 0,0);
INSERT INTO tblAttendanceType VALUES(22, '2h외출', 'YES', 0,0);
INSERT INTO tblAttendanceType VALUES(23, '3h외출', 'YES', 0,0);

INSERT INTO tblAttendanceType VALUES(24, '결석', 'YES', 0,0);

SELECT * FROM tblAttendanceType;
