SELECT * FROM tab;
commit;

------------------------------------------------------------
CREATE SEQUENCE tblstudentinfoseq;  --교육생정보

CREATE TABLE tblstudentinfo
(
    seq NUMBER primary key,
    name VARCHAR2(20) NULL,
    registrationNum VARCHAR2(7) NULL,
    phoneNum VARCHAR2(13) NULL,
    registrationDate DATE NULL
    
);
drop SEQUENCE tblstudentinfoseq;
CREATE SEQUENCE tblstudentinfoseq;
---------------------------------------------------------------------
CREATE SEQUENCE tblsubjectseq;  --과목
drop SEQUENCE tblsubjectseq;

CREATE TABLE tblsubject
(
    seq NUMBER primary key,
    startdate DATE NULL,
    enddate DATE NULL,
    attendancepercent NUMBER,
    writtenpercent NUMBER,
    practicalpercent NUMBER,
    subjectnameseq NUMBER NOT NULL REFERENCES tblsubjectname(seq),
    courseseq NUMBER NOT NULL REFERENCES tblcourse(seq),
    textbookseq NUMBER NOT NULL REFERENCES tbltextbook(seq)
    
);
---------------------------------------------------------
CREATE SEQUENCE tblcourseseq;  --과정
drop SEQUENCE tblcourseseq;
CREATE TABLE tblcourse
(
    seq NUMBER primary key,
    startdate DATE NULL,
    enddate DATE NULL,
    coursenameseq NUMBER NOT NULL REFERENCES tblcourseName(seq),
    lectureseq NUMBER NOT NULL REFERENCES tbllecturer(seq),
    classroomseq NUMBER NOT NULL REFERENCES tblclassroom(seq)
);
commit;
SELECT * FROM tblcourse;
------------------------------------------------
CREATE SEQUENCE tblstudentseq;  --교육생
drop SEQUENCE tblstudentseq;
CREATE TABLE tblstudent
(
    seq NUMBER primary key,
    registrationtime DATE NULL,
    status varchar2(10) NULL,
    studentinfoseq NUMBER NOT NULL REFERENCES tblstudent(seq),
    courseseq NUMBER NOT NULL REFERENCES tblcourse(seq)
    
);
---------------------------------------------------
CREATE SEQUENCE tblsubjectgradeseq;
drop SEQUENCE tblsubjectgradeseq;

CREATE TABLE tblsubjectgrade  --과목성적
(
    seq NUMBER primary key,
    written NUMBER NULL,
    practical NUMBER NULL,
    attendance NUMBER NULL,
    studentseq NUMBER NOT NULL REFERENCES tblstudent(seq),
    subjectseq NUMBER NOT NULL REFERENCES tblsubject(seq)
       
);
------------------------------------------------------------
CREATE TABLE tblwarning --특별상담
(
   seq NUMBER primary key,
   warningdate date NULL,
   contetnts varchar2(200),
   studentseq NUMBER NOT NULL REFERENCES tblstudent(seq)
);
CREATE SEQUENCE tblwarningseq;
drop SEQUENCE tblwarningseq;


------------------------------------------------------------
CREATE TABLE tbltutoring --상담일지
(
   seq NUMBER primary key,
   tutordate date NULL,
   contetnts varchar2(200) NULL,
   studentseq NUMBER NOT NULL REFERENCES tblstudent(seq)
);
CREATE SEQUENCE tbltutoringseq;
drop SEQUENCE tbltutoringseq;

----------------------------------------------------------
------------------------------------------------------------
CREATE SEQUENCE tblcourseseq;  --과정
drop SEQUENCE tblcourseseq;
CREATE TABLE tblcourse
(
    seq NUMBER primary key,
    startdate DATE NULL,
    enddate DATE NULL,
    coursenameseq NUMBER NOT NULL REFERENCES tblcourseName(seq),
    lectureseq NUMBER NOT NULL REFERENCES tbllecturer(seq),
    classroomseq NUMBER NOT NULL REFERENCES tblclassroom(seq)
);
commit;
SELECT * FROM tblcourse;


---------------------------------------------------------------------


----------------------------------------------------------------


----------------------------------------------------------------------