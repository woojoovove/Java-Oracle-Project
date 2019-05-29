--seol > student.sql


DROP TABLE tblStudent;
DROP SEQUENCE studentSeq;

alter table tblStudent
    rename column studentSeq to studentInfoseq;

CREATE TABLE tblStudent
(
    seq NUMBER PRIMARY KEY,
    studentInfoSeq NUMBER NOT NULL,
    courseSeq NUMBER NOT NULL,
    registrationTime DATE NOT NULL,
    status VARCHAR2(10) 
);

CREATE SEQUENCE studentSeq;

DELETE FROM tblstudent;

INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 1, 2,'2018-06-25', 3);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 2, 2,'2018-06-25', 3);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 3, 2,'2018-06-25', 3);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 4, 2,'2018-06-25', 3);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 5, 2,'2018-06-26', 3);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 6, 2,'2018-06-26', 3);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 7, 2,'2018-06-26', 3);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 8, 2,'2018-06-26', 3);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 9, 2,'2018-06-26', 3);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 10, 2,'2018-06-26', 3);

INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 11, 2,'2018-06-27', 3);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 12, 2,'2018-06-27', 3);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 13, 2,'2018-06-27', 3);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 14, 2,'2018-06-27', 3);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 15, 2,'2018-06-27', 3);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 16, 2,'2018-06-27', 3);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 17, 2,'2018-06-27', 3);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 18, 2,'2018-06-28', 3);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 19, 2,'2018-06-28', 3);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 20, 2,'2018-06-28', 3);

INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 21, 2,'2018-06-29', 3);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 22, 2,'2018-06-29', 3);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 23, 2,'2018-06-29', 3);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 24, 2,'2018-06-29', 3);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 25, 2,'2018-06-29', 3);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 26, 2,'2018-06-29', 3);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 27, 2,'2018-06-29', 3);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 28, 2,'2018-06-29', 3);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 29, 2,'2018-06-29', 3);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 30, 2,'2018-06-29', 3);


INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 31, 2,'2019-01-21', 2);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 32, 2,'2019-01-21', 2);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 33, 2,'2019-01-21', 2);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 34, 2,'2019-01-21', 2);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 35, 2,'2019-01-21', 2);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 36, 2,'2019-01-21', 2);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 37, 2,'2019-01-21', 2);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 38, 2,'2019-01-21', 2);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 39, 2,'2019-01-22', 2);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 40, 2,'2019-01-22', 2);

INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 41, 2,'2019-01-22', 2);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 42, 2,'2019-01-22', 2);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 43, 2,'2019-01-22', 2);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 44, 2,'2019-01-22', 2);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 45, 2,'2019-01-23', 2);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 46, 2,'2019-01-23', 2);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 47, 2,'2019-01-23', 2);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 48, 2,'2019-01-23', 2);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 49, 2,'2019-01-23', 2);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 50, 2,'2019-01-23', 2);

INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 51, 2,'2019-01-24', 2);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 52, 2,'2019-01-24', 2);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 53, 2,'2019-01-24', 2);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 54, 2,'2019-01-24', 2);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 55, 2,'2019-01-24', 2);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 56, 2,'2019-01-25', 2);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 57, 2,'2019-01-25', 2);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 58, 2,'2019-01-25', 2);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 59, 2,'2019-01-25', 2);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 60, 2,'2019-01-25', 2);

INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 61, 3,'2019-04-06', 1);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 62, 3,'2019-04-07', 1);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 63, 3,'2019-04-07', 1);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 64, 3,'2019-04-11', 1);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 65, 3,'2019-04-12', 1);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 66, 3,'2019-04-14', 1);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 67, 3,'2019-04-16', 1);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 68, 3,'2019-04-18', 1);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 69, 3,'2019-04-20', 1);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 70, 3,'2019-04-21', 1);

INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 71, 3,'2019-04-01', 1);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 72, 3,'2019-04-02', 1);
INSERT INTO tblStudent(seq, studentInfoSeq, courseSeq, registrationTime, status)  VALUES(studentSeq.NEXTVAL, 73, 3,'2019-04-03', 1);


--
--수강예정1 수강중2 수강종료3 중도탈락4
--
--Java를 활용한 웹 응용 SW개발자 양성과정  1번
--2019.02.11 ~ 2019.08.23
--
--Java기반의 스마트 웹 앱콘텐츠 양성과정 4번
--2019.05.13 ~ 2019.10.25
--
--
--

select*from tblstudent;


select*from tblsubject;



COMMIT;



















































