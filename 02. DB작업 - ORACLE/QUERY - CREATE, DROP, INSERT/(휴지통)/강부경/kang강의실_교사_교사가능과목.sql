
SELECT * FROM tab;

-- 강의실 명


DROP TABLE tblClassRoom;


CREATE TABLE tblClassRoom
(
    seq NUMBER PRIMARY KEY,  -- 강의실 PK
    name VARCHAR2(50) NULL,  -- 강의실 이름
    num NUMBER NULL,
    state NUMBER DEFAULT 1 NULL
);





INSERT INTO tblClassRoom (seq, name, num, state) VALUES (1, '제 1강의실', 30, 1);
INSERT INTO tblClassRoom (seq, name, num, state) VALUES (2, '제 2강의실', 30, 1);
INSERT INTO tblClassRoom (seq, name, num, state) VALUES (3, '제 3강의실', 30, 1);
INSERT INTO tblClassRoom (seq, name, num, state) VALUES (4, '제 4강의실', 26, 1);
INSERT INTO tblClassRoom (seq, name, num, state) VALUES (5, '제 5강의실', 26, 1);
INSERT INTO tblClassRoom (seq, name, num, state) VALUES (6, '제 6강의실', 26, 1);



SELECT * FROM tblClassRoom;

COMMIT;
ROLLBACK;

select * from tblcoursename;
select * from tblsubjectname;


--------------------------------------------------------------------------------------------------------------------------------



-- 교사



DROP TABLE tblLecturer;

CREATE TABLE tblLecturer
(
    seq NUMBER PRIMARY KEY,  -- 교사번호PK
    name VARCHAR2(20) NULL,  -- 교사 이름
    registrationNum VARCHAR2(7) NULL,  -- 주민번호
    phoneNum VARCHAR2(13) NULL, -- 전화번호
    state NUMBER DEFAULT 1 NULL
);






INSERT INTO tblLecturer (seq, name, registrationNum, phoneNum, state) VALUES (1, '차은우', 1254126, '010-9958-5487', 1);        
INSERT INTO tblLecturer (seq, name, registrationNum, phoneNum, state) VALUES (2, '서강준', 1245785, '010-1004-2546', 1);        
INSERT INTO tblLecturer (seq, name, registrationNum, phoneNum, state) VALUES (3, '이상민', 1124568, '010-3524-5586', 1);        
INSERT INTO tblLecturer (seq, name, registrationNum, phoneNum, state) VALUES (4, '설유경', 2257893, '010-1248-6523', 1);        
INSERT INTO tblLecturer (seq, name, registrationNum, phoneNum, state) VALUES (5, '정우진', 2247935, '010-3657-4521', 1);        
INSERT INTO tblLecturer (seq, name, registrationNum, phoneNum, state) VALUES (6, '엄현철', 1415975, '010-2546-6857', 1);       
INSERT INTO tblLecturer (seq, name, registrationNum, phoneNum, state) VALUES (7, '강부경', 2254793, '010-9548-5454', 1);        
INSERT INTO tblLecturer (seq, name, registrationNum, phoneNum, state) VALUES (8, '김병준', 1122563, '010-1245-6584', 1);        
INSERT INTO tblLecturer (seq, name, registrationNum, phoneNum, state) VALUES (9, '김세인', 1245789, '010-3215-5545', 1);        
INSERT INTO tblLecturer (seq, name, registrationNum, phoneNum, state) VALUES (10, '이제훈', 1478935, '010-2459-6541', 1);




SELECT * FROM tblLecturer;



--------------------------------------------------------------------------------------------------------------------------------



-- 가능과목유형


DROP TABLE tblAvlb;
DROP SEQUENCE tblAvlbSeq;

SELECT * FROM tblAvlb;

CREATE SEQUENCE tblAvlbSeq;
CREATE TABLE tblAvlb       
(
    seq NUMBER PRIMARY KEY,   -- 교사가능과목번호
    seq2 NUMBER NOT NULL REFERENCES tblLecturer(seq),   -- 교사번호 참조
    subjectTypeSeq NUMBER NOT NULL REFERENCES tblSubjectType(seq)   -- 과목유형번호
);



SELECT * FROM tblAvlb;

INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 1, 1);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 1, 2); 
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 1, 3);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 1, 4);    
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 1, 5);    
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 1, 6);    
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 1, 7);    
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 1, 8);    
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 1, 9);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 1, 10);   
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 1, 11);    
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 1, 12);    
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 1, 13);    
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 1, 14);    
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 1, 15);    
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 1, 16);    
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 1, 17);    
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 1, 18);    
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 1, 19);    
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 1, 20);
    

INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 2, 1);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 2, 2);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 2, 16);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 2, 7);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 2, 3);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 2, 9);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 2, 6);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 2, 10);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 2, 11);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 2, 17);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 2, 18);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 2, 19);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 2, 20);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 2, 21);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 2, 22);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 2, 23);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 2, 24);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 2, 25);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 2, 26);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 2, 27);


INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 3, 1);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 3, 2);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 3, 3);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 3, 4);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 3, 5);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 3, 6);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 3, 7);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 3, 8);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 3, 9);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 3, 16);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 3, 17);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 3, 18);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 3, 19);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 3, 20);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 3, 21);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 3, 22);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 3, 23);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 3, 24);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 3, 25);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 3, 26);


INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 4, 1);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 4, 2);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 4, 7);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 4, 8);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 4, 12);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 4, 3);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 4, 4);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 4, 5);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 4, 6);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 4, 9);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 4, 10);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 4, 11);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 4, 20);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 4, 13);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 4, 14);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 4, 15);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 4, 16);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 4, 17);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 4, 18);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 4, 19);


INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 5, 1);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 5, 2);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 5, 3);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 5, 4);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 5, 5);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 5, 6);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 5, 7);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 5, 8);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 5, 9);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 5, 10);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 5, 11);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 5, 12);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 5, 20);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 5, 21);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 5, 22);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 5, 23);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 5, 24);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 5, 25);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 5, 26);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 5, 18);




INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 6, 1);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 6, 2);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 6, 3);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 6, 4);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 6, 6);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 6, 13);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 6, 14);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 6, 15);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 6, 16);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 6, 17);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 6, 18);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 6, 19);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 6, 20);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 6, 21);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 6, 22);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 6, 23);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 6, 24);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 6, 25);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 6, 26);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 6, 27);


INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 7, 1);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 7, 2);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 7, 4);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 7, 5);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 7, 6);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 7, 7);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 7, 13);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 7, 10);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 7, 12);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 7, 14);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 7, 15);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 7, 16);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 7, 17);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 7, 18);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 7, 19);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 7, 20);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 7, 21);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 7, 22);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 7, 23);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 7, 24);


INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 8, 1);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 8, 2);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 8, 3);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 8, 4);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 8, 5);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 8, 6);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 8, 7);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 8, 8);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 8, 9);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 8, 10);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 8, 11);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 8, 12);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 8, 13);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 8, 14);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 8, 27);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 8, 26);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 8, 25);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 8, 24);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 8, 23);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 8, 22);


INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 9, 1);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 9, 2);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 9, 3);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 9, 4);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 9, 5);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 9, 6);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 9, 7);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 9, 8);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 9, 9);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 9, 10);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 9, 11);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 9, 12);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 9, 27);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 9, 26);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 9, 25);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 9, 24);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 9, 23);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 9, 22);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 9, 21);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 9, 20);


INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 10, 1);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 10, 2);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 10, 3);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 10, 7);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 10, 9);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 10, 12);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 10, 13);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 10, 15);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 10, 17);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 10, 19);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 10, 20);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 10, 21);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 10, 22);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 10, 23);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 10, 24);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 10, 25);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 10, 26);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 10, 27);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 10, 8);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 10, 14);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 10, 16);
INSERT INTO tblAvlb (seq, seq2, subjectTypeSeq) VALUES (tblAvlbSeq.NEXTVAL, 10, 4);





--------------------------------------------------------------------------------------------------------------------------------


-- 과정





CREATE SEQUENCE tblcourseSeq;
DROP SEQUENCE tblcourseSeq;



DROP TABLE tblcourse;
CREATE TABLE tblcourse
(
    seq NUMBER primary key,   -- 과정번호
    startDate DATE NULL,   -- 과정시작일
    endDate DATE NULL,  -- 과정종료일
    courseNameSeq NUMBER NOT NULL REFERENCES tblcourseName(seq), -- 과정명번호
    lectureSeq NUMBER NOT NULL REFERENCES tbllecturer(seq),  -- 교사번호
    classRoomSeq NUMBER NOT NULL REFERENCES tblClassRoom(seq)  -- 강의실번호
);


INSERT INTO tblcourse (seq, startdate, enddate, coursenameseq,lectureseq,classRoomSeq)
    VALUES (tblcourseSeq.NEXTVAL, '2018-07-02', '2018-11-30', 4, 4, 1);    -- 종료과정

INSERT INTO tblcourse (seq, startdate, enddate, coursenameseq,lectureseq,classRoomSeq)
    VALUES (tblcourseSeq.NEXTVAL, '2019-01-28', '2019-08-23', 3, 3, 1);     -- 1강의실 진행중
    
INSERT INTO tblcourse (seq, startdate, enddate, coursenameseq,lectureseq,classRoomSeq)
    VALUES (tblcourseSeq.NEXTVAL, '2019-04-29', '2019-10-25', 2, 2, 4);     -- 4강의실 진행예정
     


DELETE  tblcourse ;

COMMIT;


SELECT * FROM tblcourse;








--------------------------------------------------------------------------------------------------------------------------------


INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-13 08:58:38', 7);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-13 18:10:30', 7);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-14 08:48:12', 7);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-14 18:05:11', 7);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-16 08:55:20', 7);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-16 18:55:10', 7);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-17 08:57:20', 7);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-17 18:07:12', 7);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-20 08:55:15', 7);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-20 18:07:11', 7);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-21 08:45:07', 7);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-21 18:06:11', 7);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-22 08:50:07', 7);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-22 18:07:11', 7);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-23 08:59:00', 7);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-23 18:00:30', 7);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-24 08:59:10', 7);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-24 18:25:00', 7);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-27 08:58:12', 7);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-27 18:27:11', 7);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-28 10:00:40', 7);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-28 18:27:11', 7);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-29 08:55:40', 7);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-29 18:11:11', 7);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-30 08:57:40', 7);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-30 18:10:10', 7);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-31 08:47:00', 7);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-31 18:12:10', 7);


INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-13 08:57:38', 8);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-13 18:16:30', 8);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-14 08:45:12', 8);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-14 18:06:11', 8);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-16 08:57:20', 8);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-16 18:11:10', 8);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-17 08:55:20', 8);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-17 18:06:12', 8);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-20 08:57:15', 8);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-20 18:07:11', 8);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-21 08:45:07', 8);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-21 18:02:11', 8);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-22 08:55:07', 8);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-22 18:06:11', 8);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-23 08:51:00', 8);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-23 18:02:30', 8);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-24 08:54:10', 8);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-24 18:25:00', 8);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-27 08:51:12', 8);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-27 18:24:11', 8);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-28 08:57:40', 8);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-28 18:23:11', 8);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-29 08:55:40', 8);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-29 18:12:11', 8);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-30 08:45:40', 8);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-30 18:16:10', 8);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-31 08:48:00', 8);
INSERT INTO tblAttendanceRecord VALUES(attendanceRecordSeq.NEXTVAL, '2018-08-31 18:12:10', 8);





--------------------------------------------------------------------------------------------------------------------------------







SELECT * FROM tblAttendance;




















