--------------------------------------------------------
--  파일이 생성됨 - 월요일-4월-15-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence ATTENDANCESEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HONG"."ATTENDANCESEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 861 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence COURSENAMESEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HONG"."COURSENAMESEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence DATESEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HONG"."DATESEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence HOLIDAYSEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HONG"."HOLIDAYSEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PUBLISHERSEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HONG"."PUBLISHERSEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence QUIZSEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HONG"."QUIZSEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence RECOMMENDATIONSEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HONG"."RECOMMENDATIONSEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence STUDENTSEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HONG"."STUDENTSEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SUBJECTNAMESEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HONG"."SUBJECTNAMESEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SUBJECTTYPESEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HONG"."SUBJECTTYPESEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TBLAVLBSEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HONG"."TBLAVLBSEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 221 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TBLCOURSESEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HONG"."TBLCOURSESEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TBLSTUDENTINFOSEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HONG"."TBLSTUDENTINFOSEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TBLSUBJECTGRADESEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HONG"."TBLSUBJECTGRADESEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 221 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TBLSUBJECTSEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HONG"."TBLSUBJECTSEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TBLTUTORINGSEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HONG"."TBLTUTORINGSEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TBLWARNINGSEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HONG"."TBLWARNINGSEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TEXTBOOKSEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HONG"."TEXTBOOKSEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table TBLATTENDANCE
--------------------------------------------------------

  CREATE TABLE "HONG"."TBLATTENDANCE" 
   (	"SEQ" NUMBER, 
	"ATTENDANCEDATE" DATE, 
	"STUDENTSEQ" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TBLATTENDANCETYPE
--------------------------------------------------------

  CREATE TABLE "HONG"."TBLATTENDANCETYPE" 
   (	"SEQ" NUMBER, 
	"NAME" VARCHAR2(20 BYTE), 
	"LEGITIMACY" VARCHAR2(3 BYTE), 
	"POINT" NUMBER, 
	"WEIGHTEDPOINT" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TBLAVLB
--------------------------------------------------------

  CREATE TABLE "HONG"."TBLAVLB" 
   (	"SEQ" NUMBER, 
	"LECTURERSEQ" NUMBER, 
	"SUBJECTTYPESEQ" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TBLCLASSROOM
--------------------------------------------------------

  CREATE TABLE "HONG"."TBLCLASSROOM" 
   (	"SEQ" NUMBER, 
	"NAME" VARCHAR2(50 BYTE), 
	"NUM" NUMBER, 
	"STATE" NUMBER DEFAULT 1
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TBLCOURSE
--------------------------------------------------------

  CREATE TABLE "HONG"."TBLCOURSE" 
   (	"SEQ" NUMBER, 
	"STARTDATE" DATE, 
	"ENDDATE" DATE, 
	"COURSENAMESEQ" NUMBER, 
	"LECTURESEQ" NUMBER, 
	"CLASSROOMSEQ" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TBLCOURSENAME
--------------------------------------------------------

  CREATE TABLE "HONG"."TBLCOURSENAME" 
   (	"SEQ" NUMBER, 
	"NAME" VARCHAR2(150 BYTE), 
	"STATE" NUMBER DEFAULT 1
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TBLDATE
--------------------------------------------------------

  CREATE TABLE "HONG"."TBLDATE" 
   (	"SEQ" NUMBER, 
	"REGDATE" DATE, 
	"STATE" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TBLHOLIDAY
--------------------------------------------------------

  CREATE TABLE "HONG"."TBLHOLIDAY" 
   (	"SEQ" NUMBER, 
	"REGDATE" DATE, 
	"NAME" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TBLLECTURER
--------------------------------------------------------

  CREATE TABLE "HONG"."TBLLECTURER" 
   (	"SEQ" NUMBER, 
	"NAME" VARCHAR2(20 BYTE), 
	"REGISTRATIONNUM" VARCHAR2(7 BYTE), 
	"PHONENUM" VARCHAR2(13 BYTE), 
	"STATE" NUMBER DEFAULT 1
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TBLPUBLISHER
--------------------------------------------------------

  CREATE TABLE "HONG"."TBLPUBLISHER" 
   (	"SEQ" NUMBER, 
	"NAME" VARCHAR2(30 BYTE), 
	"STATE" NUMBER DEFAULT 1
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TBLQUIZ
--------------------------------------------------------

  CREATE TABLE "HONG"."TBLQUIZ" 
   (	"SEQ" NUMBER, 
	"SUBJECTSEQ" NUMBER, 
	"TYPE" VARCHAR2(6 BYTE), 
	"NUM" NUMBER, 
	"CONTENTS" VARCHAR2(200 BYTE), 
	"ANSWER" VARCHAR2(300 BYTE), 
	"QUIZDATE" DATE, 
	"STATE" NUMBER DEFAULT 1
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TBLRECOMMENDATION
--------------------------------------------------------

  CREATE TABLE "HONG"."TBLRECOMMENDATION" 
   (	"SEQ" NUMBER, 
	"STUDENTSEQ" NUMBER, 
	"LECTURERRECOMMENDATION" VARCHAR2(1000 BYTE), 
	"ADMINCONFIRM" NUMBER DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TBLSTUDENT
--------------------------------------------------------

  CREATE TABLE "HONG"."TBLSTUDENT" 
   (	"SEQ" NUMBER, 
	"STUDENTINFOSEQ" NUMBER, 
	"COURSESEQ" NUMBER, 
	"REGISTRATIONTIME" DATE, 
	"STATUS" VARCHAR2(20 BYTE), 
	"STATUSDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TBLSTUDENTINFO
--------------------------------------------------------

  CREATE TABLE "HONG"."TBLSTUDENTINFO" 
   (	"SEQ" NUMBER, 
	"NAME" VARCHAR2(20 BYTE), 
	"REGISTRATIONNUM" VARCHAR2(7 BYTE), 
	"PHONENUM" VARCHAR2(13 BYTE), 
	"REGISTRATIONDATE" DATE, 
	"STATE" NUMBER DEFAULT 1
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TBLSUBJECT
--------------------------------------------------------

  CREATE TABLE "HONG"."TBLSUBJECT" 
   (	"SEQ" NUMBER, 
	"STARTDATE" DATE, 
	"ENDDATE" DATE, 
	"ATTENDANCEPERCENT" NUMBER, 
	"WRITTENPERCENT" NUMBER, 
	"PRACTICALPERCENT" NUMBER, 
	"SUBJECTNAMESEQ" NUMBER, 
	"COURSESEQ" NUMBER, 
	"TEXTBOOKSEQ" NUMBER, 
	"STATE" NUMBER DEFAULT 1
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TBLSUBJECTGRADE
--------------------------------------------------------

  CREATE TABLE "HONG"."TBLSUBJECTGRADE" 
   (	"SEQ" NUMBER, 
	"STUDENTSEQ" NUMBER, 
	"SUBJECTSEQ" NUMBER, 
	"WRITTEN" NUMBER, 
	"PRACTICAL" NUMBER, 
	"ATTENDANCE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TBLSUBJECTNAME
--------------------------------------------------------

  CREATE TABLE "HONG"."TBLSUBJECTNAME" 
   (	"SEQ" NUMBER, 
	"NAME" VARCHAR2(100 BYTE), 
	"SUBJECTTYPESEQ" VARCHAR2(50 BYTE), 
	"STATE" NUMBER DEFAULT 1
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TBLSUBJECTTYPE
--------------------------------------------------------

  CREATE TABLE "HONG"."TBLSUBJECTTYPE" 
   (	"SEQ" NUMBER, 
	"NAME" VARCHAR2(50 BYTE), 
	"STATE" NUMBER DEFAULT 1
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TBLTEXTBOOK
--------------------------------------------------------

  CREATE TABLE "HONG"."TBLTEXTBOOK" 
   (	"SEQ" NUMBER, 
	"PUBLISHERSEQ" NUMBER, 
	"NAME" VARCHAR2(100 BYTE), 
	"STATE" NUMBER DEFAULT 1
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TBLTUTORING
--------------------------------------------------------

  CREATE TABLE "HONG"."TBLTUTORING" 
   (	"SEQ" NUMBER, 
	"STUDENTSEQ" NUMBER, 
	"TUTORDATE" DATE, 
	"CONTETNTS" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TBLWARNING
--------------------------------------------------------

  CREATE TABLE "HONG"."TBLWARNING" 
   (	"SEQ" NUMBER, 
	"STUDENTSEQ" NUMBER, 
	"WARNINGDATE" DATE, 
	"CONTETNTS" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for View TBLVWQUIZLIST
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HONG"."TBLVWQUIZLIST" ("VSUBJECTNAME", "VQUIZNUM", "VQUIZCONTENTS", "VQUIZANSWER") AS 
  SELECT 
    tblSubjectName.name AS vSubjectName,
    tblQuiz.num AS vQuizNum,
    tblQuiz.contents AS vQuizContents,
    tblQuiz.answer AS vQuizAnswer
    
  FROM tblSubject
    INNER JOIN tblSubjectName ON tblSubjectName.seq = tblSubject.subjectnameseq
    INNER JOIN tblQuiz        ON tblquiz.subjectseq = tblSubject.seq
    WHERE (SYSDATE - tblSubject.endDate) > 0
;
--------------------------------------------------------
--  DDL for View TBLVWSTUDENTINFO
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HONG"."TBLVWSTUDENTINFO" ("VSTUDENTNAME", "VCOURSENAME", "VCOURSESTARTDATE", "VCOURSEENDDATE", "VCLASSROOM") AS 
  SELECT
    tblStudentinfo.name AS vStudentName,
    tblCoursename.name AS vCourseName,
    tblCourse.startdate AS vCourseStartDate,
    tblCourse.enddate AS vCourseEndDate,
    tblClassRoom.seq AS vClassRoom
    FROM tblStudent 
    INNER JOIN tblStudentinfo   ON tblStudent.studentinfoseq = tblStudentinfo.seq
    INNER JOIN tblCourse        ON tblStudent.courseseq = tblCourse.seq
    INNER JOIN tblCourseName    ON tblCourse.coursenameseq = tblCourseName.seq
    INNER JOIN tblClassRoom     ON tblcourse.classroomseq = tblClassRoom.seq
;
--------------------------------------------------------
--  DDL for View VWATTENDANCE
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HONG"."VWATTENDANCE" ("VSTUDENTSEQ", "VATTENDANCEDATE", "CHECKIN", "CHECKOUT", "GOOUT1", "GOOUT2", "GOOUT3", "LATE1", "LATE2", "LATE3", "LATE4", "EARLY1", "EARLY2", "EARLY3", "EARLY4") AS 
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
                ORDER BY studentSeq, TO_CHAR(attendanceDate, 'yyyy-mm-dd')
;
--------------------------------------------------------
--  DDL for View VWCOUDATE
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HONG"."VWCOUDATE" ("VCOUNAME", "VCOUSEQ", "VCOUSTART", "VCOUEND") AS 
  SELECT n.name as vcouname,c.seq as vcouseq,c.startdate as vcoustart, c.enddate as vcouend  FROM tblcourse c
    INNER JOIN tblcoursename n
         ON c.coursenameseq = n.seq
            WHERE c.startdate>sysdate
;
--------------------------------------------------------
--  DDL for View VWCOUINGDATE
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HONG"."VWCOUINGDATE" ("VCOUNAME", "VCOUSEQ") AS 
  SELECT n.name as vcouname,c.seq as vcouseq FROM tblcourse c
    INNER JOIN tblcoursename n
        ON c.coursenameseq=n.seq
            WHERE sysdate between c.startdate and c.enddate
;
--------------------------------------------------------
--  DDL for View VWCOUROOMLEC
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HONG"."VWCOUROOMLEC" ("VCOUNAME", "VCOUSTART", "VCOUEND", "VROOMNAME", "VLECNAME", "VCOUSEQ") AS 
  SELECT n.name as vcouname,c.startdate as vcoustart,c.enddate as vcouend,r.name as vroomname,l.name as vlecname, c.seq as vcouseq 
   FROM tblcourse c
    INNER JOIN tblcoursename n
        ON c.coursenameseq = n.seq
        INNER JOIN tblclassroom r
            ON c.classroomseq=r.seq
                INNER JOIN tbllecturer l
                    ON c.lectureseq = l.seq
;
--------------------------------------------------------
--  DDL for View VWCOURSEINFO
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HONG"."VWCOURSEINFO" ("vName", "vRegistrationNum", "vPhoneNum", "vRegistrationDate", "vState") AS 
  SELECT 

    i.name              AS "vName",
    i.registrationnum   AS "vRegistrationNum",
    i.phonenum          AS "vPhoneNum",
    i.registrationdate  AS "vRegistrationDate",
    i.state             AS "vState"
    
        FROM tblCourse c
        
            INNER JOIN tblStudent s
            ON c.seq = s.courseseq
            
                INNER JOIN tblStudentInfo i
                ON s.studentinfoseq = i.seq
;
--------------------------------------------------------
--  DDL for View VWCOURSELIST
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HONG"."VWCOURSELIST" ("VCOURSENUM", "VCOURSENAME", "VCOURSESTART", "VCOURSEEND") AS 
  SELECT 

    c.seq       AS vCourseNum,
    cn.name     AS vCourseName,
    c.startdate AS vCourseStart,
    c.enddate   AS vCourseEnd
    
        FROM tblCourse c
            
            INNER JOIN tblCourseName cn
                ON c.coursenameseq = cn.seq
;
--------------------------------------------------------
--  DDL for View VWCOUSTU
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HONG"."VWCOUSTU" ("VNAME", "VSEQ") AS 
  SELECT DISTINCT n.name as vname,c.seq as vseq FROM tblstudentinfo i 
    INNER JOIN tblstudent s
        ON i.seq=s.studentinfoseq
            INNER JOIN tblcourse c
               ON s.courseseq = c.seq
                    INNER JOIN tblcoursename n
                        ON c.coursenameseq = n.seq
;
--------------------------------------------------------
--  DDL for View VWCOUSUB
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HONG"."VWCOUSUB" ("VSUBSEQ", "VSUBNAME", "VCOUSEQ") AS 
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
                                        ON j.seq = s.subjectnameseq
;
--------------------------------------------------------
--  DDL for View VWCOUSUBSTUBOOK
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HONG"."VWCOUSUBSTUBOOK" ("VCOUNAME", "VCOUSTART", "VCOUEND", "VROOMNAME", "VSUBNAME", "VSUBSTART", "VSUBEND", "VBOOKNAME", "VSUBATT", "VSUBWRIT", "VSUBPRAC", "VCOUSEQ", "VSUBSEQ") AS 
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
                                                    order by s.seq
;
--------------------------------------------------------
--  DDL for View VWCOUSUBSTUINFO
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HONG"."VWCOUSUBSTUINFO" ("VCOUNAME", "VCOUSTART", "VCOUEND", "VROOMNAME", "VSUBNAME", "VSUBSTART", "VSUBEND", "VBOOKNAME", "VSUBATT", "VSUBWRI", "VSUBPRAC", "VSUBSEQ", "VCOUSEQ") AS 
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
                                                     order by c.seq
;
--------------------------------------------------------
--  DDL for View VWCOUSUBSTUTEXLEC
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HONG"."VWCOUSUBSTUTEXLEC" ("VSTUNAME", "VSTURNUM", "VSTUPNUM", "VCOUNAME", "VCOUSTART", "VCOUEND", "VROOMNAME", "VSUBNAME", "VSUBSTART", "VSUBEND", "VTEXNAME", "VLECNAME", "VSINFOSEQ", "VCOUSEQ") AS 
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
                                                            ON e.seq = j.subjectnameseq
;
--------------------------------------------------------
--  DDL for View VWDATE
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HONG"."VWDATE" ("REGDATE") AS 
  select to_date('20180813','yymmdd') + level - 1 as regdate from dual
     connect by level <= (to_date('20180831','yymmdd')-to_date('20180813','yymmdd') + 1 )
;
--------------------------------------------------------
--  DDL for View VWGRASUB
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HONG"."VWGRASUB" ("VSUBSEQ", "VGRASUBSEQ") AS 
  SELECT s.seq as vsubseq, g.subjectseq as vgrasubseq 
    FROM tblsubjectgrade g
        INNER JOIN tblsubject s
            ON g.subjectseq = s.seq 
                INNER JOIN tblsubjectname n
                    ON n.seq=s.subjectnameseq
;
--------------------------------------------------------
--  DDL for View VWLECTURERINFO
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HONG"."VWLECTURERINFO" ("vCourseNum", "vCourseName", "vCourseStart", "vCourseEnd", "vClassroomName", "subjectState", "studentCount") AS 
  SELECT

    c.seq                        AS "vCourseNum",
    n.name                       AS "vCourseName",
    c.startdate                  AS "vCourseStart",
    c.enddate                    AS "vCourseEnd",
    c.classroomSeq || '강의실'    AS "vClassroomName",
    CASE
        WHEN c.seq IN (SELECT courseseq FROM tblSubject) THEN 'O'
        ELSE 'X'
    END                          AS "subjectState",
    (SELECT COUNT(*) FROM tblStudent 
        WHERE courseSeq = c.seq) AS "studentCount"

        FROM tblCourse c

            INNER JOIN tblCourseName n
            ON c.coursenameseq = n.seq
        
                    ORDER BY c.seq
;
--------------------------------------------------------
--  DDL for View VWSINFO
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HONG"."VWSINFO" ("VSTUNAME", "VSTUPNUM", "VSTUSTATUS", "VSTUSEQ", "VGSUBSEQ", "VSTATUSDATE") AS 
  SELECT i.name as vstuname,i.phonenum as vstupnum,s.status as vstustatus,s.seq as vstuseq
    ,g.subjectseq as vgsubseq,  to_char(s.statusDate,'yy-mm-dd') as vstatusdate
    FROM tblsubjectgrade g
        INNER JOIN tblstudent s
            ON g.studentseq=s.seq
                INNER JOIN tblstudentinfo i
                    ON i.seq = s.studentinfoseq
                        WHERE g.attendance is null or g.practical is null
;
--------------------------------------------------------
--  DDL for View VWSINFOGRA
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HONG"."VWSINFOGRA" ("VSTUNAME", "VRNUM", "VGRAWRI", "VGRAPRAC", "VCOUSEQ", "VSUBSEQ") AS 
  SELECT i.name as vstuname,i.registrationnum as vrnum,g.written as vgrawri,g.practical as vgraprac
 , s.courseseq  as vcouseq, g.subjectseq as vsubseq FROM tblstudent s 
    INNER JOIN tblsubjectgrade g
        ON s.seq = g.studentseq
            INNER JOIN tblstudentinfo i
                ON i.seq = s.studentinfoseq
;
--------------------------------------------------------
--  DDL for View VWSTUCOU
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HONG"."VWSTUCOU" ("VSTUNAME", "VSTURNUM", "VSTUPNUM", "VCOUNAME", "VCOUSTART", "VCOUEND", "VSTUSTATUS", "VSTUINSEQ", "VCOUSEQ", "VSTUINRDATE", "VSTUSTATUSDATE") AS 
  SELECT i.name as vstuname,i.registrationnum as vsturnum,i.phonenum as vstupnum, 
        n.name as vcouname,to_char(c.startdate,'yy-mm-dd') as vcoustart,to_char(c.enddate,'yy-mm-dd') as vcouend,s.status as vstustatus,i.seq as vstuinseq , c.seq as vcouseq
        ,to_char(i.registrationdate,'yy-mm-dd') as vstuinrdate,to_char(s.statusdate,'yy-mm-dd') as vstustatusdate
    FROM tblstudentinfo i 
        INNER JOIN tblstudent s
            ON i.seq=s.studentinfoseq
                INNER JOIN tblcourse c
                   ON s.courseseq = c.seq
                        INNER JOIN tblcoursename n
                            ON c.coursenameseq = n.seq
;
--------------------------------------------------------
--  DDL for View VWSTUGRA
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HONG"."VWSTUGRA" ("VSTUNAME", "VSTUPNUM", "VSTUSTATUS", "VSTUSEQ", "VSUBSEQ", "VSTUSTADATE", "VGRASEQ") AS 
  SELECT i.name as vstuname,i.phonenum as vstupnum,s.status as vstustatus,s.seq as vstuseq,g.subjectseq as vsubseq
          ,s.statusdate as vstustadate,g.seq as vgraseq
    FROM tblsubjectgrade g
        INNER JOIN tblstudent s
            ON g.studentseq=s.seq
                INNER JOIN tblstudentinfo i
                    ON i.seq = s.studentinfoseq
;
--------------------------------------------------------
--  DDL for View VWSTUGRAINFO
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HONG"."VWSTUGRAINFO" ("VSTUNAME", "VSTUSEQ", "VGRAWRI", "VGRAPRAC", "VGRASEQ", "VGRASUBSEQ") AS 
  SELECT i.name as vstuname,s.seq as vstuseq,g.written as vgrawri,g.practical as vgraprac,g.seq as vgraseq
    ,g.subjectseq as vgrasubseq
    FROM tblsubjectgrade g
        INNER JOIN tblstudent s
            ON g.studentseq=s.seq
                INNER JOIN tblstudentinfo i
                    ON i.seq = s.studentinfoseq
;
--------------------------------------------------------
--  DDL for View VWSTUSINFO
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HONG"."VWSTUSINFO" ("VSTUNAME", "VSTURNUM", "VSTUPNUM", "VCOUSEQ", "VSINFOSEQ") AS 
  SELECT i.name AS vstuname,i.registrationnum as vsturnum,
    i.phonenum as vstupnum,s.courseseq as vcouseq,i.seq as vsinfoseq FROM tblstudentinfo i 
    INNER JOIN tblstudent s
        ON i.seq=s.studentinfoseq
            INNER JOIN tblcourse c
               ON s.courseseq = c.seq
                    INNER JOIN tblcoursename n
                        ON c.coursenameseq = n.seq
;
--------------------------------------------------------
--  DDL for View VWSUBCOUROOMLEC
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HONG"."VWSUBCOUROOMLEC" ("VCOUNAME", "VROOMNAME", "VLECNAME", "VSUBSNAME", "VCOUSEQ", "VSUBSEQ") AS 
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
                                                ON j.seq = s.subjectnameseq
;
--------------------------------------------------------
--  DDL for View VWSUBJECTLIST
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HONG"."VWSUBJECTLIST" ("VCOURSENUM", "VCOURSENAME", "VCOURSESTART", "VCOURSEEND", "VSUBJECTNUM", "VSUBJECTNAME", "VTEXTBOOKNAME", "VWRITTENPERCENT", "VPRACTICALPERCENT", "VATTENDANCEPERCENT") AS 
  SELECT 

    c.seq                AS vCourseNum,
    cn.name              AS vCourseName,
    c.startdate          AS vCourseStart,
    c.enddate            AS vCourseEnd,
    sj.seq               AS vSubjectNum,
    sn.name              AS vSubjectName,
    tb.name              AS vTextBookname,
    sj.writtenPercent    AS vWrittenPercent,
    sj.practicalPercent  AS vPracticalPercent,
    sj.attendancePercent AS vAttendancePercent
    
     FROM tblCourse c
    
        INNER JOIN tblCourseName cn
            ON c.coursenameseq = cn.seq	
                
            INNER JOIN tblSubject sj
                ON c.seq = sj.courseseq
                    
                INNER JOIN tblSubjectName sn
                    ON sj.subjectnameseq = sn.seq
                                            
                    INNER JOIN tblTextBook tb
                        ON sj.textbookseq = tb.seq
                        
                            WHERE c.seq = 1
;
--------------------------------------------------------
--  DDL for View VWSUBJECTNAME
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HONG"."VWSUBJECTNAME" ("vLecturerName", "VSEQ", "vAvailableSubject") AS 
  SELECT 
    
    l.name AS "vLecturerName",
    sn.seq AS vSeq,
    sn.name "vAvailableSubject"
        
            FROM tblLecturer l
            
                INNER JOIN tblAvlb a
                ON l.seq = a.lecturerseq
                
                    INNER JOIN tblSubjectType st
                    ON a.subjectTypeSeq = st.seq
                    
                        INNER JOIN tblSubjectName sn
                        ON st.seq = sn.subjecttypeseq
                
                            WHERE l.seq = 
                                (SELECT seq FROM tblLecturer WHERE name = '차은우') --과정을 담당하는 교사명
                            
                                ORDER BY sn.seq
;
--------------------------------------------------------
--  DDL for View VWSUBJECTPERCENT
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HONG"."VWSUBJECTPERCENT" ("SUBJECTNUM", "SUBJECTNAME", "WRITTENPERCENT", "PRACTICALPERCENT", "ATTENDANCEPERCENT") AS 
  SELECT 

    sj.seq AS subjectNum,
    sn.name AS subjectName,
    sj.writtenPercent AS writtenPercent,
    sj.practicalPercent AS practicalPercent,
    sj.attendancePercent AS attendancePercent
    
         FROM tblCourse c
         
            INNER JOIN tblSubject sj
            ON c.seq = sj.courseseq

                INNER JOIN tblSubjectName sn
                    ON sj.subjectnameseq = sn.seq
                    
                        WHERE c.seq = 1 AND sj.seq = 1
;
--------------------------------------------------------
--  DDL for View VWSUBJECTQUIZDATE
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HONG"."VWSUBJECTQUIZDATE" ("SUBJECTNUM", "SUBJECTNAME", "QUIZDATE") AS 
  SELECT 

    sj.seq AS subjectNum,
    sn.name AS subjectName,
    q.quizdate AS quizdate
    
         FROM tblCourse c
         
            INNER JOIN tblSubject sj
            ON c.seq = sj.courseseq

                INNER JOIN tblSubjectName sn
                    ON sj.subjectnameseq = sn.seq
                    
                        INNER JOIN tblQuiz q
                            ON sj.seq = q.subjectSeq
                    
                                WHERE c.seq = 1 AND sj.seq = 3
;
--------------------------------------------------------
--  DDL for View VWSUBJECTSELECT
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HONG"."VWSUBJECTSELECT" ("VSUBJECTNUM", "VSUBJECTNAME") AS 
  SELECT 

    sj.seq AS vSubjectNum,
    sn.name AS vSubjectName
    
         FROM tblCourse c
         
            INNER JOIN tblSubject sj
            ON c.seq = sj.courseseq

                INNER JOIN tblSubjectName sn
                    ON sj.subjectnameseq = sn.seq
                    
                        WHERE c.seq = 1 AND sj.seq = 1
;
REM INSERTING into HONG.TBLATTENDANCE
SET DEFINE OFF;
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (1,to_date('18/08/13','RR/MM/DD'),1);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (2,to_date('18/08/13','RR/MM/DD'),1);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (3,to_date('18/08/14','RR/MM/DD'),1);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (4,to_date('18/08/14','RR/MM/DD'),1);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (5,to_date('18/08/16','RR/MM/DD'),1);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (6,to_date('18/08/16','RR/MM/DD'),1);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (7,to_date('18/08/17','RR/MM/DD'),1);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (8,to_date('18/08/17','RR/MM/DD'),1);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (9,to_date('18/08/20','RR/MM/DD'),1);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (10,to_date('18/08/20','RR/MM/DD'),1);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (11,to_date('18/08/21','RR/MM/DD'),1);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (12,to_date('18/08/21','RR/MM/DD'),1);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (13,to_date('18/08/22','RR/MM/DD'),1);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (14,to_date('18/08/22','RR/MM/DD'),1);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (15,to_date('18/08/23','RR/MM/DD'),1);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (16,to_date('18/08/23','RR/MM/DD'),1);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (17,to_date('18/08/24','RR/MM/DD'),1);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (18,to_date('18/08/24','RR/MM/DD'),1);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (19,to_date('18/08/27','RR/MM/DD'),1);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (20,to_date('18/08/27','RR/MM/DD'),1);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (21,to_date('18/08/28','RR/MM/DD'),1);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (22,to_date('18/08/28','RR/MM/DD'),1);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (23,to_date('18/08/29','RR/MM/DD'),1);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (24,to_date('18/08/29','RR/MM/DD'),1);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (25,to_date('18/08/30','RR/MM/DD'),1);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (26,to_date('18/08/30','RR/MM/DD'),1);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (27,to_date('18/08/31','RR/MM/DD'),1);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (28,to_date('18/08/31','RR/MM/DD'),1);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (29,to_date('18/08/13','RR/MM/DD'),2);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (30,to_date('18/08/13','RR/MM/DD'),2);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (31,to_date('18/08/14','RR/MM/DD'),2);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (32,to_date('18/08/14','RR/MM/DD'),2);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (33,to_date('18/08/16','RR/MM/DD'),2);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (34,to_date('18/08/16','RR/MM/DD'),2);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (35,to_date('18/08/17','RR/MM/DD'),2);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (36,to_date('18/08/17','RR/MM/DD'),2);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (37,to_date('18/08/20','RR/MM/DD'),2);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (38,to_date('18/08/20','RR/MM/DD'),2);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (39,to_date('18/08/21','RR/MM/DD'),2);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (40,to_date('18/08/21','RR/MM/DD'),2);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (41,to_date('18/08/22','RR/MM/DD'),2);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (42,to_date('18/08/22','RR/MM/DD'),2);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (43,to_date('18/08/23','RR/MM/DD'),2);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (44,to_date('18/08/23','RR/MM/DD'),2);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (45,to_date('18/08/24','RR/MM/DD'),2);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (46,to_date('18/08/24','RR/MM/DD'),2);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (47,to_date('18/08/27','RR/MM/DD'),2);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (48,to_date('18/08/27','RR/MM/DD'),2);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (49,to_date('18/08/28','RR/MM/DD'),2);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (50,to_date('18/08/28','RR/MM/DD'),2);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (51,to_date('18/08/29','RR/MM/DD'),2);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (52,to_date('18/08/29','RR/MM/DD'),2);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (53,to_date('18/08/30','RR/MM/DD'),2);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (54,to_date('18/08/30','RR/MM/DD'),2);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (55,to_date('18/08/31','RR/MM/DD'),2);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (56,to_date('18/08/31','RR/MM/DD'),2);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (57,to_date('18/08/13','RR/MM/DD'),3);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (58,to_date('18/08/13','RR/MM/DD'),3);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (59,to_date('18/08/14','RR/MM/DD'),3);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (60,to_date('18/08/14','RR/MM/DD'),3);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (61,to_date('18/08/16','RR/MM/DD'),3);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (62,to_date('18/08/16','RR/MM/DD'),3);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (63,to_date('18/08/17','RR/MM/DD'),3);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (64,to_date('18/08/17','RR/MM/DD'),3);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (65,to_date('18/08/20','RR/MM/DD'),3);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (66,to_date('18/08/20','RR/MM/DD'),3);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (67,to_date('18/08/21','RR/MM/DD'),3);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (68,to_date('18/08/21','RR/MM/DD'),3);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (69,to_date('18/08/22','RR/MM/DD'),3);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (70,to_date('18/08/22','RR/MM/DD'),3);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (71,to_date('18/08/23','RR/MM/DD'),3);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (72,to_date('18/08/23','RR/MM/DD'),3);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (73,to_date('18/08/24','RR/MM/DD'),3);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (74,to_date('18/08/24','RR/MM/DD'),3);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (75,to_date('18/08/27','RR/MM/DD'),3);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (76,to_date('18/08/27','RR/MM/DD'),3);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (77,to_date('18/08/28','RR/MM/DD'),3);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (78,to_date('18/08/28','RR/MM/DD'),3);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (79,to_date('18/08/29','RR/MM/DD'),3);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (80,to_date('18/08/29','RR/MM/DD'),3);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (81,to_date('18/08/30','RR/MM/DD'),3);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (82,to_date('18/08/30','RR/MM/DD'),3);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (83,to_date('18/08/31','RR/MM/DD'),3);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (84,to_date('18/08/31','RR/MM/DD'),3);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (85,to_date('18/08/13','RR/MM/DD'),4);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (86,to_date('18/08/13','RR/MM/DD'),4);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (87,to_date('18/08/14','RR/MM/DD'),4);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (88,to_date('18/08/14','RR/MM/DD'),4);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (89,to_date('18/08/16','RR/MM/DD'),4);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (90,to_date('18/08/16','RR/MM/DD'),4);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (91,to_date('18/08/17','RR/MM/DD'),4);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (92,to_date('18/08/17','RR/MM/DD'),4);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (93,to_date('18/08/20','RR/MM/DD'),4);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (94,to_date('18/08/20','RR/MM/DD'),4);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (95,to_date('18/08/21','RR/MM/DD'),4);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (96,to_date('18/08/21','RR/MM/DD'),4);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (97,to_date('18/08/22','RR/MM/DD'),4);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (98,to_date('18/08/22','RR/MM/DD'),4);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (99,to_date('18/08/23','RR/MM/DD'),4);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (100,to_date('18/08/23','RR/MM/DD'),4);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (101,to_date('18/08/24','RR/MM/DD'),4);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (102,to_date('18/08/24','RR/MM/DD'),4);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (103,to_date('18/08/27','RR/MM/DD'),4);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (104,to_date('18/08/27','RR/MM/DD'),4);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (105,to_date('18/08/28','RR/MM/DD'),4);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (106,to_date('18/08/28','RR/MM/DD'),4);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (107,to_date('18/08/29','RR/MM/DD'),4);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (108,to_date('18/08/29','RR/MM/DD'),4);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (109,to_date('18/08/30','RR/MM/DD'),4);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (110,to_date('18/08/30','RR/MM/DD'),4);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (111,to_date('18/08/31','RR/MM/DD'),4);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (112,to_date('18/08/31','RR/MM/DD'),4);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (113,to_date('18/08/13','RR/MM/DD'),5);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (114,to_date('18/08/13','RR/MM/DD'),5);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (115,to_date('18/08/14','RR/MM/DD'),5);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (116,to_date('18/08/14','RR/MM/DD'),5);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (117,to_date('18/08/16','RR/MM/DD'),5);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (118,to_date('18/08/16','RR/MM/DD'),5);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (119,to_date('18/08/17','RR/MM/DD'),5);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (120,to_date('18/08/17','RR/MM/DD'),5);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (121,to_date('18/08/20','RR/MM/DD'),5);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (122,to_date('18/08/20','RR/MM/DD'),5);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (123,to_date('18/08/21','RR/MM/DD'),5);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (124,to_date('18/08/21','RR/MM/DD'),5);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (125,to_date('18/08/21','RR/MM/DD'),5);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (126,to_date('18/08/21','RR/MM/DD'),5);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (127,to_date('18/08/22','RR/MM/DD'),5);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (128,to_date('18/08/22','RR/MM/DD'),5);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (129,to_date('18/08/23','RR/MM/DD'),5);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (130,to_date('18/08/23','RR/MM/DD'),5);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (131,to_date('18/08/24','RR/MM/DD'),5);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (132,to_date('18/08/24','RR/MM/DD'),5);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (133,to_date('18/08/27','RR/MM/DD'),5);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (134,to_date('18/08/27','RR/MM/DD'),5);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (135,to_date('18/08/28','RR/MM/DD'),5);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (136,to_date('18/08/28','RR/MM/DD'),5);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (137,to_date('18/08/29','RR/MM/DD'),5);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (138,to_date('18/08/29','RR/MM/DD'),5);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (139,to_date('18/08/30','RR/MM/DD'),5);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (140,to_date('18/08/30','RR/MM/DD'),5);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (141,to_date('18/08/31','RR/MM/DD'),5);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (142,to_date('18/08/31','RR/MM/DD'),5);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (143,to_date('18/08/13','RR/MM/DD'),6);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (144,to_date('18/08/13','RR/MM/DD'),6);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (145,to_date('18/08/14','RR/MM/DD'),6);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (146,to_date('18/08/14','RR/MM/DD'),6);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (147,to_date('18/08/16','RR/MM/DD'),6);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (148,to_date('18/08/16','RR/MM/DD'),6);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (149,to_date('18/08/17','RR/MM/DD'),6);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (150,to_date('18/08/17','RR/MM/DD'),6);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (151,to_date('18/08/20','RR/MM/DD'),6);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (152,to_date('18/08/20','RR/MM/DD'),6);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (153,to_date('18/08/21','RR/MM/DD'),6);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (154,to_date('18/08/21','RR/MM/DD'),6);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (155,to_date('18/08/22','RR/MM/DD'),6);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (156,to_date('18/08/22','RR/MM/DD'),6);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (157,to_date('18/08/23','RR/MM/DD'),6);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (158,to_date('18/08/23','RR/MM/DD'),6);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (159,to_date('18/08/24','RR/MM/DD'),6);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (160,to_date('18/08/24','RR/MM/DD'),6);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (161,to_date('18/08/27','RR/MM/DD'),6);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (162,to_date('18/08/27','RR/MM/DD'),6);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (163,to_date('18/08/28','RR/MM/DD'),6);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (164,to_date('18/08/28','RR/MM/DD'),6);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (165,to_date('18/08/29','RR/MM/DD'),6);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (166,to_date('18/08/29','RR/MM/DD'),6);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (167,to_date('18/08/30','RR/MM/DD'),6);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (168,to_date('18/08/30','RR/MM/DD'),6);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (169,to_date('18/08/31','RR/MM/DD'),6);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (170,to_date('18/08/31','RR/MM/DD'),6);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (171,to_date('18/08/31','RR/MM/DD'),6);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (172,to_date('18/08/31','RR/MM/DD'),6);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (173,to_date('18/08/13','RR/MM/DD'),7);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (174,to_date('18/08/13','RR/MM/DD'),7);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (175,to_date('18/08/14','RR/MM/DD'),7);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (176,to_date('18/08/14','RR/MM/DD'),7);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (177,to_date('18/08/16','RR/MM/DD'),7);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (178,to_date('18/08/16','RR/MM/DD'),7);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (179,to_date('18/08/17','RR/MM/DD'),7);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (180,to_date('18/08/17','RR/MM/DD'),7);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (181,to_date('18/08/20','RR/MM/DD'),7);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (182,to_date('18/08/20','RR/MM/DD'),7);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (183,to_date('18/08/21','RR/MM/DD'),7);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (184,to_date('18/08/21','RR/MM/DD'),7);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (185,to_date('18/08/22','RR/MM/DD'),7);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (186,to_date('18/08/22','RR/MM/DD'),7);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (187,to_date('18/08/23','RR/MM/DD'),7);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (188,to_date('18/08/23','RR/MM/DD'),7);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (189,to_date('18/08/24','RR/MM/DD'),7);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (190,to_date('18/08/24','RR/MM/DD'),7);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (191,to_date('18/08/27','RR/MM/DD'),7);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (192,to_date('18/08/27','RR/MM/DD'),7);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (193,to_date('18/08/28','RR/MM/DD'),7);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (194,to_date('18/08/28','RR/MM/DD'),7);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (195,to_date('18/08/29','RR/MM/DD'),7);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (196,to_date('18/08/29','RR/MM/DD'),7);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (197,to_date('18/08/30','RR/MM/DD'),7);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (198,to_date('18/08/30','RR/MM/DD'),7);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (199,to_date('18/08/31','RR/MM/DD'),7);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (200,to_date('18/08/31','RR/MM/DD'),7);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (201,to_date('18/08/13','RR/MM/DD'),8);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (202,to_date('18/08/13','RR/MM/DD'),8);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (203,to_date('18/08/14','RR/MM/DD'),8);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (204,to_date('18/08/14','RR/MM/DD'),8);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (205,to_date('18/08/16','RR/MM/DD'),8);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (206,to_date('18/08/16','RR/MM/DD'),8);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (207,to_date('18/08/17','RR/MM/DD'),8);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (208,to_date('18/08/17','RR/MM/DD'),8);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (209,to_date('18/08/20','RR/MM/DD'),8);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (210,to_date('18/08/20','RR/MM/DD'),8);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (211,to_date('18/08/21','RR/MM/DD'),8);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (212,to_date('18/08/21','RR/MM/DD'),8);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (213,to_date('18/08/22','RR/MM/DD'),8);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (214,to_date('18/08/22','RR/MM/DD'),8);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (215,to_date('18/08/23','RR/MM/DD'),8);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (216,to_date('18/08/23','RR/MM/DD'),8);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (217,to_date('18/08/24','RR/MM/DD'),8);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (218,to_date('18/08/24','RR/MM/DD'),8);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (219,to_date('18/08/27','RR/MM/DD'),8);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (220,to_date('18/08/27','RR/MM/DD'),8);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (221,to_date('18/08/28','RR/MM/DD'),8);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (222,to_date('18/08/28','RR/MM/DD'),8);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (223,to_date('18/08/29','RR/MM/DD'),8);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (224,to_date('18/08/29','RR/MM/DD'),8);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (225,to_date('18/08/30','RR/MM/DD'),8);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (226,to_date('18/08/30','RR/MM/DD'),8);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (227,to_date('18/08/31','RR/MM/DD'),8);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (228,to_date('18/08/31','RR/MM/DD'),8);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (229,to_date('18/08/13','RR/MM/DD'),9);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (230,to_date('18/08/13','RR/MM/DD'),9);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (231,to_date('18/08/14','RR/MM/DD'),9);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (232,to_date('18/08/14','RR/MM/DD'),9);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (233,to_date('18/08/16','RR/MM/DD'),9);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (234,to_date('18/08/16','RR/MM/DD'),9);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (235,to_date('18/08/17','RR/MM/DD'),9);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (236,to_date('18/08/17','RR/MM/DD'),9);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (237,to_date('18/08/20','RR/MM/DD'),9);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (238,to_date('18/08/20','RR/MM/DD'),9);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (239,to_date('18/08/21','RR/MM/DD'),9);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (240,to_date('18/08/21','RR/MM/DD'),9);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (241,to_date('18/08/22','RR/MM/DD'),9);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (242,to_date('18/08/22','RR/MM/DD'),9);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (243,to_date('18/08/23','RR/MM/DD'),9);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (244,to_date('18/08/23','RR/MM/DD'),9);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (245,to_date('18/08/24','RR/MM/DD'),9);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (246,to_date('18/08/24','RR/MM/DD'),9);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (247,to_date('18/08/27','RR/MM/DD'),9);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (248,to_date('18/08/27','RR/MM/DD'),9);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (249,to_date('18/08/28','RR/MM/DD'),9);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (250,to_date('18/08/28','RR/MM/DD'),9);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (251,to_date('18/08/29','RR/MM/DD'),9);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (252,to_date('18/08/29','RR/MM/DD'),9);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (253,to_date('18/08/30','RR/MM/DD'),9);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (254,to_date('18/08/30','RR/MM/DD'),9);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (255,to_date('18/08/31','RR/MM/DD'),9);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (256,to_date('18/08/31','RR/MM/DD'),9);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (257,to_date('18/08/13','RR/MM/DD'),10);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (258,to_date('18/08/13','RR/MM/DD'),10);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (259,to_date('18/08/14','RR/MM/DD'),10);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (260,to_date('18/08/14','RR/MM/DD'),10);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (261,to_date('18/08/16','RR/MM/DD'),10);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (262,to_date('18/08/16','RR/MM/DD'),10);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (263,to_date('18/08/17','RR/MM/DD'),10);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (264,to_date('18/08/17','RR/MM/DD'),10);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (265,to_date('18/08/20','RR/MM/DD'),10);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (266,to_date('18/08/20','RR/MM/DD'),10);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (267,to_date('18/08/21','RR/MM/DD'),10);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (268,to_date('18/08/21','RR/MM/DD'),10);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (269,to_date('18/08/21','RR/MM/DD'),10);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (270,to_date('18/08/21','RR/MM/DD'),10);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (271,to_date('18/08/22','RR/MM/DD'),10);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (272,to_date('18/08/22','RR/MM/DD'),10);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (273,to_date('18/08/23','RR/MM/DD'),10);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (274,to_date('18/08/23','RR/MM/DD'),10);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (275,to_date('18/08/24','RR/MM/DD'),10);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (276,to_date('18/08/24','RR/MM/DD'),10);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (277,to_date('18/08/27','RR/MM/DD'),10);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (278,to_date('18/08/27','RR/MM/DD'),10);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (279,to_date('18/08/28','RR/MM/DD'),10);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (280,to_date('18/08/28','RR/MM/DD'),10);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (281,to_date('18/08/29','RR/MM/DD'),10);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (282,to_date('18/08/29','RR/MM/DD'),10);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (283,to_date('18/08/30','RR/MM/DD'),10);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (284,to_date('18/08/30','RR/MM/DD'),10);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (285,to_date('18/08/31','RR/MM/DD'),10);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (286,to_date('18/08/31','RR/MM/DD'),10);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (287,to_date('18/08/13','RR/MM/DD'),11);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (288,to_date('18/08/13','RR/MM/DD'),11);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (289,to_date('18/08/14','RR/MM/DD'),11);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (290,to_date('18/08/14','RR/MM/DD'),11);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (291,to_date('18/08/16','RR/MM/DD'),11);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (292,to_date('18/08/16','RR/MM/DD'),11);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (293,to_date('18/08/17','RR/MM/DD'),11);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (294,to_date('18/08/17','RR/MM/DD'),11);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (295,to_date('18/08/20','RR/MM/DD'),11);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (296,to_date('18/08/20','RR/MM/DD'),11);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (297,to_date('18/08/21','RR/MM/DD'),11);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (298,to_date('18/08/21','RR/MM/DD'),11);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (299,to_date('18/08/22','RR/MM/DD'),11);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (300,to_date('18/08/22','RR/MM/DD'),11);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (301,to_date('18/08/23','RR/MM/DD'),11);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (302,to_date('18/08/23','RR/MM/DD'),11);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (303,to_date('18/08/24','RR/MM/DD'),11);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (304,to_date('18/08/24','RR/MM/DD'),11);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (305,to_date('18/08/27','RR/MM/DD'),11);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (306,to_date('18/08/27','RR/MM/DD'),11);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (307,to_date('18/08/28','RR/MM/DD'),11);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (308,to_date('18/08/28','RR/MM/DD'),11);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (309,to_date('18/08/29','RR/MM/DD'),11);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (310,to_date('18/08/29','RR/MM/DD'),11);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (311,to_date('18/08/30','RR/MM/DD'),11);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (312,to_date('18/08/30','RR/MM/DD'),11);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (313,to_date('18/08/31','RR/MM/DD'),11);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (314,to_date('18/08/31','RR/MM/DD'),11);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (315,to_date('18/08/13','RR/MM/DD'),12);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (316,to_date('18/08/13','RR/MM/DD'),12);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (317,to_date('18/08/13','RR/MM/DD'),12);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (318,to_date('18/08/13','RR/MM/DD'),12);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (319,to_date('18/08/13','RR/MM/DD'),12);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (320,to_date('18/08/13','RR/MM/DD'),12);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (321,to_date('18/08/14','RR/MM/DD'),12);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (322,to_date('18/08/14','RR/MM/DD'),12);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (323,to_date('18/08/16','RR/MM/DD'),12);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (324,to_date('18/08/16','RR/MM/DD'),12);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (325,to_date('18/08/17','RR/MM/DD'),12);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (326,to_date('18/08/17','RR/MM/DD'),12);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (327,to_date('18/08/20','RR/MM/DD'),12);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (328,to_date('18/08/20','RR/MM/DD'),12);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (329,to_date('18/08/21','RR/MM/DD'),12);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (330,to_date('18/08/21','RR/MM/DD'),12);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (331,to_date('18/08/22','RR/MM/DD'),12);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (332,to_date('18/08/22','RR/MM/DD'),12);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (333,to_date('18/08/23','RR/MM/DD'),12);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (334,to_date('18/08/23','RR/MM/DD'),12);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (335,to_date('18/08/24','RR/MM/DD'),12);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (336,to_date('18/08/24','RR/MM/DD'),12);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (337,to_date('18/08/27','RR/MM/DD'),12);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (338,to_date('18/08/27','RR/MM/DD'),12);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (339,to_date('18/08/28','RR/MM/DD'),12);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (340,to_date('18/08/28','RR/MM/DD'),12);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (341,to_date('18/08/29','RR/MM/DD'),12);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (342,to_date('18/08/29','RR/MM/DD'),12);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (343,to_date('18/08/30','RR/MM/DD'),12);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (344,to_date('18/08/30','RR/MM/DD'),12);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (345,to_date('18/08/31','RR/MM/DD'),12);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (346,to_date('18/08/31','RR/MM/DD'),12);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (347,to_date('18/08/13','RR/MM/DD'),13);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (348,to_date('18/08/13','RR/MM/DD'),13);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (349,to_date('18/08/14','RR/MM/DD'),13);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (350,to_date('18/08/14','RR/MM/DD'),13);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (351,to_date('18/08/16','RR/MM/DD'),13);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (352,to_date('18/08/16','RR/MM/DD'),13);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (353,to_date('18/08/17','RR/MM/DD'),13);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (354,to_date('18/08/17','RR/MM/DD'),13);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (355,to_date('18/08/20','RR/MM/DD'),13);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (356,to_date('18/08/20','RR/MM/DD'),13);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (357,to_date('18/08/21','RR/MM/DD'),13);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (358,to_date('18/08/21','RR/MM/DD'),13);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (359,to_date('18/08/22','RR/MM/DD'),13);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (360,to_date('18/08/22','RR/MM/DD'),13);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (361,to_date('18/08/23','RR/MM/DD'),13);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (362,to_date('18/08/23','RR/MM/DD'),13);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (363,to_date('18/08/24','RR/MM/DD'),13);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (364,to_date('18/08/24','RR/MM/DD'),13);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (365,to_date('18/08/27','RR/MM/DD'),13);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (366,to_date('18/08/27','RR/MM/DD'),13);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (367,to_date('18/08/28','RR/MM/DD'),13);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (368,to_date('18/08/28','RR/MM/DD'),13);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (369,to_date('18/08/29','RR/MM/DD'),13);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (370,to_date('18/08/29','RR/MM/DD'),13);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (371,to_date('18/08/30','RR/MM/DD'),13);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (372,to_date('18/08/30','RR/MM/DD'),13);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (373,to_date('18/08/31','RR/MM/DD'),13);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (374,to_date('18/08/31','RR/MM/DD'),13);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (375,to_date('18/08/13','RR/MM/DD'),14);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (376,to_date('18/08/13','RR/MM/DD'),14);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (377,to_date('18/08/14','RR/MM/DD'),14);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (378,to_date('18/08/14','RR/MM/DD'),14);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (379,to_date('18/08/16','RR/MM/DD'),14);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (380,to_date('18/08/16','RR/MM/DD'),14);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (381,to_date('18/08/17','RR/MM/DD'),14);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (382,to_date('18/08/17','RR/MM/DD'),14);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (383,to_date('18/08/20','RR/MM/DD'),14);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (384,to_date('18/08/20','RR/MM/DD'),14);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (385,to_date('18/08/21','RR/MM/DD'),14);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (386,to_date('18/08/21','RR/MM/DD'),14);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (387,to_date('18/08/22','RR/MM/DD'),14);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (388,to_date('18/08/22','RR/MM/DD'),14);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (389,to_date('18/08/23','RR/MM/DD'),14);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (390,to_date('18/08/23','RR/MM/DD'),14);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (391,to_date('18/08/24','RR/MM/DD'),14);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (392,to_date('18/08/24','RR/MM/DD'),14);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (393,to_date('18/08/27','RR/MM/DD'),14);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (394,to_date('18/08/27','RR/MM/DD'),14);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (395,to_date('18/08/28','RR/MM/DD'),14);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (396,to_date('18/08/28','RR/MM/DD'),14);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (397,to_date('18/08/29','RR/MM/DD'),14);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (398,to_date('18/08/29','RR/MM/DD'),14);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (399,to_date('18/08/30','RR/MM/DD'),14);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (400,to_date('18/08/30','RR/MM/DD'),14);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (401,to_date('18/08/31','RR/MM/DD'),14);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (402,to_date('18/08/31','RR/MM/DD'),14);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (403,to_date('18/08/13','RR/MM/DD'),15);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (404,to_date('18/08/13','RR/MM/DD'),15);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (405,to_date('18/08/14','RR/MM/DD'),15);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (406,to_date('18/08/14','RR/MM/DD'),15);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (407,to_date('18/08/16','RR/MM/DD'),15);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (408,to_date('18/08/16','RR/MM/DD'),15);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (409,to_date('18/08/17','RR/MM/DD'),15);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (410,to_date('18/08/17','RR/MM/DD'),15);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (411,to_date('18/08/20','RR/MM/DD'),15);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (412,to_date('18/08/20','RR/MM/DD'),15);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (413,to_date('18/08/21','RR/MM/DD'),15);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (414,to_date('18/08/21','RR/MM/DD'),15);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (415,to_date('18/08/22','RR/MM/DD'),15);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (416,to_date('18/08/22','RR/MM/DD'),15);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (417,to_date('18/08/23','RR/MM/DD'),15);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (418,to_date('18/08/23','RR/MM/DD'),15);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (419,to_date('18/08/24','RR/MM/DD'),15);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (420,to_date('18/08/24','RR/MM/DD'),15);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (421,to_date('18/08/27','RR/MM/DD'),15);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (422,to_date('18/08/27','RR/MM/DD'),15);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (423,to_date('18/08/28','RR/MM/DD'),15);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (424,to_date('18/08/28','RR/MM/DD'),15);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (425,to_date('18/08/29','RR/MM/DD'),15);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (426,to_date('18/08/29','RR/MM/DD'),15);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (427,to_date('18/08/30','RR/MM/DD'),15);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (428,to_date('18/08/30','RR/MM/DD'),15);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (429,to_date('18/08/31','RR/MM/DD'),15);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (430,to_date('18/08/31','RR/MM/DD'),15);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (431,to_date('18/08/13','RR/MM/DD'),16);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (432,to_date('18/08/13','RR/MM/DD'),16);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (433,to_date('18/08/14','RR/MM/DD'),16);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (434,to_date('18/08/14','RR/MM/DD'),16);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (435,to_date('18/08/16','RR/MM/DD'),16);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (436,to_date('18/08/16','RR/MM/DD'),16);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (437,to_date('18/08/17','RR/MM/DD'),16);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (438,to_date('18/08/17','RR/MM/DD'),16);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (439,to_date('18/08/20','RR/MM/DD'),16);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (440,to_date('18/08/20','RR/MM/DD'),16);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (441,to_date('18/08/21','RR/MM/DD'),16);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (442,to_date('18/08/21','RR/MM/DD'),16);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (443,to_date('18/08/22','RR/MM/DD'),16);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (444,to_date('18/08/22','RR/MM/DD'),16);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (445,to_date('18/08/23','RR/MM/DD'),16);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (446,to_date('18/08/23','RR/MM/DD'),16);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (447,to_date('18/08/24','RR/MM/DD'),16);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (448,to_date('18/08/24','RR/MM/DD'),16);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (449,to_date('18/08/27','RR/MM/DD'),16);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (450,to_date('18/08/27','RR/MM/DD'),16);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (451,to_date('18/08/28','RR/MM/DD'),16);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (452,to_date('18/08/28','RR/MM/DD'),16);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (453,to_date('18/08/29','RR/MM/DD'),16);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (454,to_date('18/08/29','RR/MM/DD'),16);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (455,to_date('18/08/30','RR/MM/DD'),16);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (456,to_date('18/08/30','RR/MM/DD'),16);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (457,to_date('18/08/31','RR/MM/DD'),16);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (458,to_date('18/08/31','RR/MM/DD'),16);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (459,to_date('18/08/13','RR/MM/DD'),17);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (460,to_date('18/08/13','RR/MM/DD'),17);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (461,to_date('18/08/14','RR/MM/DD'),17);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (462,to_date('18/08/14','RR/MM/DD'),17);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (463,to_date('18/08/16','RR/MM/DD'),17);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (464,to_date('18/08/16','RR/MM/DD'),17);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (465,to_date('18/08/17','RR/MM/DD'),17);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (466,to_date('18/08/17','RR/MM/DD'),17);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (467,to_date('18/08/20','RR/MM/DD'),17);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (468,to_date('18/08/20','RR/MM/DD'),17);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (469,to_date('18/08/21','RR/MM/DD'),17);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (470,to_date('18/08/21','RR/MM/DD'),17);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (471,to_date('18/08/22','RR/MM/DD'),17);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (472,to_date('18/08/22','RR/MM/DD'),17);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (473,to_date('18/08/23','RR/MM/DD'),17);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (474,to_date('18/08/23','RR/MM/DD'),17);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (475,to_date('18/08/24','RR/MM/DD'),17);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (476,to_date('18/08/24','RR/MM/DD'),17);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (477,to_date('18/08/27','RR/MM/DD'),17);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (478,to_date('18/08/27','RR/MM/DD'),17);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (479,to_date('18/08/28','RR/MM/DD'),17);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (480,to_date('18/08/28','RR/MM/DD'),17);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (481,to_date('18/08/29','RR/MM/DD'),17);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (482,to_date('18/08/29','RR/MM/DD'),17);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (483,to_date('18/08/30','RR/MM/DD'),17);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (484,to_date('18/08/30','RR/MM/DD'),17);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (485,to_date('18/08/31','RR/MM/DD'),17);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (486,to_date('18/08/31','RR/MM/DD'),17);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (487,to_date('18/08/13','RR/MM/DD'),18);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (488,to_date('18/08/13','RR/MM/DD'),18);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (489,to_date('18/08/14','RR/MM/DD'),18);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (490,to_date('18/08/14','RR/MM/DD'),18);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (491,to_date('18/08/16','RR/MM/DD'),18);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (492,to_date('18/08/16','RR/MM/DD'),18);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (493,to_date('18/08/17','RR/MM/DD'),18);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (494,to_date('18/08/17','RR/MM/DD'),18);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (495,to_date('18/08/20','RR/MM/DD'),18);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (496,to_date('18/08/20','RR/MM/DD'),18);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (497,to_date('18/08/21','RR/MM/DD'),18);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (498,to_date('18/08/21','RR/MM/DD'),18);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (499,to_date('18/08/22','RR/MM/DD'),18);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (500,to_date('18/08/22','RR/MM/DD'),18);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (501,to_date('18/08/23','RR/MM/DD'),18);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (502,to_date('18/08/23','RR/MM/DD'),18);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (503,to_date('18/08/24','RR/MM/DD'),18);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (504,to_date('18/08/24','RR/MM/DD'),18);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (505,to_date('18/08/27','RR/MM/DD'),18);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (506,to_date('18/08/27','RR/MM/DD'),18);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (507,to_date('18/08/28','RR/MM/DD'),18);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (508,to_date('18/08/28','RR/MM/DD'),18);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (509,to_date('18/08/29','RR/MM/DD'),18);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (510,to_date('18/08/29','RR/MM/DD'),18);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (511,to_date('18/08/30','RR/MM/DD'),18);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (512,to_date('18/08/30','RR/MM/DD'),18);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (513,to_date('18/08/31','RR/MM/DD'),18);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (514,to_date('18/08/31','RR/MM/DD'),18);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (515,to_date('18/08/13','RR/MM/DD'),19);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (516,to_date('18/08/13','RR/MM/DD'),19);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (517,to_date('18/08/14','RR/MM/DD'),19);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (518,to_date('18/08/14','RR/MM/DD'),19);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (519,to_date('18/08/13','RR/MM/DD'),19);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (520,to_date('18/08/13','RR/MM/DD'),19);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (521,to_date('18/08/17','RR/MM/DD'),19);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (522,to_date('18/08/17','RR/MM/DD'),19);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (523,to_date('18/08/20','RR/MM/DD'),19);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (524,to_date('18/08/20','RR/MM/DD'),19);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (525,to_date('18/08/21','RR/MM/DD'),19);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (526,to_date('18/08/21','RR/MM/DD'),19);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (527,to_date('18/08/22','RR/MM/DD'),19);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (528,to_date('18/08/22','RR/MM/DD'),19);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (529,to_date('18/08/23','RR/MM/DD'),19);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (530,to_date('18/08/23','RR/MM/DD'),19);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (531,to_date('18/08/24','RR/MM/DD'),19);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (532,to_date('18/08/24','RR/MM/DD'),19);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (533,to_date('18/08/27','RR/MM/DD'),19);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (534,to_date('18/08/27','RR/MM/DD'),19);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (535,to_date('18/08/28','RR/MM/DD'),19);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (536,to_date('18/08/28','RR/MM/DD'),19);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (537,to_date('18/08/29','RR/MM/DD'),19);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (538,to_date('18/08/29','RR/MM/DD'),19);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (539,to_date('18/08/30','RR/MM/DD'),19);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (540,to_date('18/08/30','RR/MM/DD'),19);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (541,to_date('18/08/31','RR/MM/DD'),19);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (542,to_date('18/08/31','RR/MM/DD'),19);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (543,to_date('18/08/13','RR/MM/DD'),20);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (544,to_date('18/08/13','RR/MM/DD'),20);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (545,to_date('18/08/14','RR/MM/DD'),20);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (546,to_date('18/08/14','RR/MM/DD'),20);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (547,to_date('18/08/13','RR/MM/DD'),20);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (548,to_date('18/08/13','RR/MM/DD'),20);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (549,to_date('18/08/17','RR/MM/DD'),20);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (550,to_date('18/08/17','RR/MM/DD'),20);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (551,to_date('18/08/20','RR/MM/DD'),20);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (552,to_date('18/08/20','RR/MM/DD'),20);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (553,to_date('18/08/21','RR/MM/DD'),20);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (554,to_date('18/08/21','RR/MM/DD'),20);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (555,to_date('18/08/22','RR/MM/DD'),20);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (556,to_date('18/08/22','RR/MM/DD'),20);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (557,to_date('18/08/23','RR/MM/DD'),20);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (558,to_date('18/08/23','RR/MM/DD'),20);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (559,to_date('18/08/24','RR/MM/DD'),20);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (560,to_date('18/08/24','RR/MM/DD'),20);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (561,to_date('18/08/27','RR/MM/DD'),20);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (562,to_date('18/08/27','RR/MM/DD'),20);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (563,to_date('18/08/28','RR/MM/DD'),20);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (564,to_date('18/08/28','RR/MM/DD'),20);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (565,to_date('18/08/29','RR/MM/DD'),20);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (566,to_date('18/08/29','RR/MM/DD'),20);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (567,to_date('18/08/30','RR/MM/DD'),20);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (568,to_date('18/08/30','RR/MM/DD'),20);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (569,to_date('18/08/31','RR/MM/DD'),20);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (570,to_date('18/08/31','RR/MM/DD'),20);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (571,to_date('18/08/14','RR/MM/DD'),21);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (572,to_date('18/08/14','RR/MM/DD'),21);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (573,to_date('18/08/13','RR/MM/DD'),21);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (574,to_date('18/08/13','RR/MM/DD'),21);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (575,to_date('18/08/17','RR/MM/DD'),21);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (576,to_date('18/08/17','RR/MM/DD'),21);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (577,to_date('18/08/21','RR/MM/DD'),21);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (578,to_date('18/08/21','RR/MM/DD'),21);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (579,to_date('18/08/22','RR/MM/DD'),21);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (580,to_date('18/08/22','RR/MM/DD'),21);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (581,to_date('18/08/23','RR/MM/DD'),21);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (582,to_date('18/08/23','RR/MM/DD'),21);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (583,to_date('18/08/24','RR/MM/DD'),21);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (584,to_date('18/08/24','RR/MM/DD'),21);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (585,to_date('18/08/28','RR/MM/DD'),21);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (586,to_date('18/08/28','RR/MM/DD'),21);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (587,to_date('18/08/29','RR/MM/DD'),21);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (588,to_date('18/08/29','RR/MM/DD'),21);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (589,to_date('18/08/30','RR/MM/DD'),21);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (590,to_date('18/08/30','RR/MM/DD'),21);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (591,to_date('18/08/31','RR/MM/DD'),21);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (592,to_date('18/08/31','RR/MM/DD'),21);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (593,to_date('18/08/13','RR/MM/DD'),22);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (594,to_date('18/08/13','RR/MM/DD'),22);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (595,to_date('18/08/14','RR/MM/DD'),22);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (596,to_date('18/08/14','RR/MM/DD'),22);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (597,to_date('18/08/13','RR/MM/DD'),22);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (598,to_date('18/08/13','RR/MM/DD'),22);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (599,to_date('18/08/17','RR/MM/DD'),22);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (600,to_date('18/08/17','RR/MM/DD'),22);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (601,to_date('18/08/20','RR/MM/DD'),22);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (602,to_date('18/08/20','RR/MM/DD'),22);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (603,to_date('18/08/21','RR/MM/DD'),22);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (604,to_date('18/08/21','RR/MM/DD'),22);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (605,to_date('18/08/22','RR/MM/DD'),22);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (606,to_date('18/08/22','RR/MM/DD'),22);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (607,to_date('18/08/23','RR/MM/DD'),22);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (608,to_date('18/08/23','RR/MM/DD'),22);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (609,to_date('18/08/24','RR/MM/DD'),22);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (610,to_date('18/08/24','RR/MM/DD'),22);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (611,to_date('18/08/27','RR/MM/DD'),22);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (612,to_date('18/08/27','RR/MM/DD'),22);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (613,to_date('18/08/28','RR/MM/DD'),22);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (614,to_date('18/08/28','RR/MM/DD'),22);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (615,to_date('18/08/29','RR/MM/DD'),22);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (616,to_date('18/08/29','RR/MM/DD'),22);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (617,to_date('18/08/30','RR/MM/DD'),22);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (618,to_date('18/08/30','RR/MM/DD'),22);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (619,to_date('18/08/31','RR/MM/DD'),22);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (620,to_date('18/08/31','RR/MM/DD'),22);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (621,to_date('18/08/13','RR/MM/DD'),23);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (622,to_date('18/08/13','RR/MM/DD'),23);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (623,to_date('18/08/14','RR/MM/DD'),23);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (624,to_date('18/08/14','RR/MM/DD'),23);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (625,to_date('18/08/13','RR/MM/DD'),23);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (626,to_date('18/08/13','RR/MM/DD'),23);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (627,to_date('18/08/17','RR/MM/DD'),23);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (628,to_date('18/08/17','RR/MM/DD'),23);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (629,to_date('18/08/20','RR/MM/DD'),23);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (630,to_date('18/08/20','RR/MM/DD'),23);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (631,to_date('18/08/21','RR/MM/DD'),23);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (632,to_date('18/08/21','RR/MM/DD'),23);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (633,to_date('18/08/22','RR/MM/DD'),23);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (634,to_date('18/08/22','RR/MM/DD'),23);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (635,to_date('18/08/23','RR/MM/DD'),23);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (636,to_date('18/08/23','RR/MM/DD'),23);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (637,to_date('18/08/24','RR/MM/DD'),23);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (638,to_date('18/08/24','RR/MM/DD'),23);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (639,to_date('18/08/27','RR/MM/DD'),23);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (640,to_date('18/08/27','RR/MM/DD'),23);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (641,to_date('18/08/28','RR/MM/DD'),23);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (642,to_date('18/08/28','RR/MM/DD'),23);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (643,to_date('18/08/29','RR/MM/DD'),23);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (644,to_date('18/08/29','RR/MM/DD'),23);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (645,to_date('18/08/30','RR/MM/DD'),23);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (646,to_date('18/08/30','RR/MM/DD'),23);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (647,to_date('18/08/31','RR/MM/DD'),23);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (648,to_date('18/08/31','RR/MM/DD'),23);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (649,to_date('18/08/13','RR/MM/DD'),24);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (650,to_date('18/08/13','RR/MM/DD'),24);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (651,to_date('18/08/14','RR/MM/DD'),24);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (652,to_date('18/08/14','RR/MM/DD'),24);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (653,to_date('18/08/13','RR/MM/DD'),24);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (654,to_date('18/08/13','RR/MM/DD'),24);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (655,to_date('18/08/17','RR/MM/DD'),24);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (656,to_date('18/08/17','RR/MM/DD'),24);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (657,to_date('18/08/20','RR/MM/DD'),24);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (658,to_date('18/08/20','RR/MM/DD'),24);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (659,to_date('18/08/21','RR/MM/DD'),24);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (660,to_date('18/08/21','RR/MM/DD'),24);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (661,to_date('18/08/22','RR/MM/DD'),24);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (662,to_date('18/08/22','RR/MM/DD'),24);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (663,to_date('18/08/23','RR/MM/DD'),24);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (664,to_date('18/08/23','RR/MM/DD'),24);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (665,to_date('18/08/24','RR/MM/DD'),24);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (666,to_date('18/08/24','RR/MM/DD'),24);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (667,to_date('18/08/27','RR/MM/DD'),24);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (668,to_date('18/08/27','RR/MM/DD'),24);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (669,to_date('18/08/28','RR/MM/DD'),24);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (670,to_date('18/08/28','RR/MM/DD'),24);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (671,to_date('18/08/29','RR/MM/DD'),24);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (672,to_date('18/08/29','RR/MM/DD'),24);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (673,to_date('18/08/30','RR/MM/DD'),24);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (674,to_date('18/08/30','RR/MM/DD'),24);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (675,to_date('18/08/31','RR/MM/DD'),24);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (676,to_date('18/08/31','RR/MM/DD'),24);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (677,to_date('18/08/13','RR/MM/DD'),25);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (678,to_date('18/08/13','RR/MM/DD'),25);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (679,to_date('18/08/14','RR/MM/DD'),25);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (680,to_date('18/08/14','RR/MM/DD'),25);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (681,to_date('18/08/16','RR/MM/DD'),25);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (682,to_date('18/08/16','RR/MM/DD'),25);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (683,to_date('18/08/17','RR/MM/DD'),25);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (684,to_date('18/08/17','RR/MM/DD'),25);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (685,to_date('18/08/20','RR/MM/DD'),25);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (686,to_date('18/08/20','RR/MM/DD'),25);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (687,to_date('18/08/21','RR/MM/DD'),25);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (688,to_date('18/08/21','RR/MM/DD'),25);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (689,to_date('18/08/22','RR/MM/DD'),25);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (690,to_date('18/08/22','RR/MM/DD'),25);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (691,to_date('18/08/23','RR/MM/DD'),25);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (692,to_date('18/08/23','RR/MM/DD'),25);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (693,to_date('18/08/24','RR/MM/DD'),25);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (694,to_date('18/08/24','RR/MM/DD'),25);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (695,to_date('18/08/27','RR/MM/DD'),25);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (696,to_date('18/08/27','RR/MM/DD'),25);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (697,to_date('18/08/28','RR/MM/DD'),25);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (698,to_date('18/08/28','RR/MM/DD'),25);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (699,to_date('18/08/29','RR/MM/DD'),25);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (700,to_date('18/08/29','RR/MM/DD'),25);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (701,to_date('18/08/30','RR/MM/DD'),25);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (702,to_date('18/08/30','RR/MM/DD'),25);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (703,to_date('18/08/31','RR/MM/DD'),25);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (704,to_date('18/08/31','RR/MM/DD'),25);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (705,to_date('18/08/13','RR/MM/DD'),26);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (706,to_date('18/08/13','RR/MM/DD'),26);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (707,to_date('18/08/14','RR/MM/DD'),26);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (708,to_date('18/08/14','RR/MM/DD'),26);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (709,to_date('18/08/16','RR/MM/DD'),26);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (710,to_date('18/08/16','RR/MM/DD'),26);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (711,to_date('18/08/17','RR/MM/DD'),26);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (712,to_date('18/08/17','RR/MM/DD'),26);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (713,to_date('18/08/20','RR/MM/DD'),26);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (714,to_date('18/08/20','RR/MM/DD'),26);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (715,to_date('18/08/21','RR/MM/DD'),26);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (716,to_date('18/08/21','RR/MM/DD'),26);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (717,to_date('18/08/22','RR/MM/DD'),26);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (718,to_date('18/08/22','RR/MM/DD'),26);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (719,to_date('18/08/23','RR/MM/DD'),26);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (720,to_date('18/08/23','RR/MM/DD'),26);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (721,to_date('18/08/24','RR/MM/DD'),26);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (722,to_date('18/08/24','RR/MM/DD'),26);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (723,to_date('18/08/27','RR/MM/DD'),26);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (724,to_date('18/08/27','RR/MM/DD'),26);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (725,to_date('18/08/28','RR/MM/DD'),26);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (726,to_date('18/08/28','RR/MM/DD'),26);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (727,to_date('18/08/29','RR/MM/DD'),26);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (728,to_date('18/08/29','RR/MM/DD'),26);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (729,to_date('18/08/30','RR/MM/DD'),26);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (730,to_date('18/08/30','RR/MM/DD'),26);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (731,to_date('18/08/31','RR/MM/DD'),26);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (732,to_date('18/08/31','RR/MM/DD'),26);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (733,to_date('18/08/13','RR/MM/DD'),27);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (734,to_date('18/08/13','RR/MM/DD'),27);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (735,to_date('18/08/14','RR/MM/DD'),27);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (736,to_date('18/08/14','RR/MM/DD'),27);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (737,to_date('18/08/16','RR/MM/DD'),27);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (738,to_date('18/08/16','RR/MM/DD'),27);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (739,to_date('18/08/17','RR/MM/DD'),27);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (740,to_date('18/08/17','RR/MM/DD'),27);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (741,to_date('18/08/20','RR/MM/DD'),27);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (742,to_date('18/08/20','RR/MM/DD'),27);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (743,to_date('18/08/21','RR/MM/DD'),27);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (744,to_date('18/08/21','RR/MM/DD'),27);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (745,to_date('18/08/22','RR/MM/DD'),27);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (746,to_date('18/08/22','RR/MM/DD'),27);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (747,to_date('18/08/23','RR/MM/DD'),27);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (748,to_date('18/08/23','RR/MM/DD'),27);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (749,to_date('18/08/24','RR/MM/DD'),27);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (750,to_date('18/08/24','RR/MM/DD'),27);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (751,to_date('18/08/27','RR/MM/DD'),27);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (752,to_date('18/08/27','RR/MM/DD'),27);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (753,to_date('18/08/28','RR/MM/DD'),27);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (754,to_date('18/08/28','RR/MM/DD'),27);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (755,to_date('18/08/29','RR/MM/DD'),27);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (756,to_date('18/08/29','RR/MM/DD'),27);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (757,to_date('18/08/30','RR/MM/DD'),27);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (758,to_date('18/08/30','RR/MM/DD'),27);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (759,to_date('18/08/31','RR/MM/DD'),27);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (760,to_date('18/08/31','RR/MM/DD'),27);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (761,to_date('18/08/13','RR/MM/DD'),28);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (762,to_date('18/08/13','RR/MM/DD'),28);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (763,to_date('18/08/14','RR/MM/DD'),28);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (764,to_date('18/08/14','RR/MM/DD'),28);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (765,to_date('18/08/16','RR/MM/DD'),28);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (766,to_date('18/08/16','RR/MM/DD'),28);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (767,to_date('18/08/17','RR/MM/DD'),28);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (768,to_date('18/08/17','RR/MM/DD'),28);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (769,to_date('18/08/20','RR/MM/DD'),28);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (770,to_date('18/08/20','RR/MM/DD'),28);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (771,to_date('18/08/21','RR/MM/DD'),28);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (772,to_date('18/08/21','RR/MM/DD'),28);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (773,to_date('18/08/22','RR/MM/DD'),28);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (774,to_date('18/08/22','RR/MM/DD'),28);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (775,to_date('18/08/23','RR/MM/DD'),28);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (776,to_date('18/08/23','RR/MM/DD'),28);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (777,to_date('18/08/24','RR/MM/DD'),28);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (778,to_date('18/08/24','RR/MM/DD'),28);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (779,to_date('18/08/27','RR/MM/DD'),28);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (780,to_date('18/08/27','RR/MM/DD'),28);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (781,to_date('18/08/28','RR/MM/DD'),28);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (782,to_date('18/08/28','RR/MM/DD'),28);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (783,to_date('18/08/29','RR/MM/DD'),28);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (784,to_date('18/08/29','RR/MM/DD'),28);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (785,to_date('18/08/30','RR/MM/DD'),28);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (786,to_date('18/08/30','RR/MM/DD'),28);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (787,to_date('18/08/31','RR/MM/DD'),28);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (788,to_date('18/08/31','RR/MM/DD'),28);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (789,to_date('18/08/13','RR/MM/DD'),29);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (790,to_date('18/08/13','RR/MM/DD'),29);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (791,to_date('18/08/14','RR/MM/DD'),29);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (792,to_date('18/08/14','RR/MM/DD'),29);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (793,to_date('18/08/16','RR/MM/DD'),29);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (794,to_date('18/08/16','RR/MM/DD'),29);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (795,to_date('18/08/17','RR/MM/DD'),29);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (796,to_date('18/08/17','RR/MM/DD'),29);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (797,to_date('18/08/20','RR/MM/DD'),29);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (798,to_date('18/08/20','RR/MM/DD'),29);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (799,to_date('18/08/21','RR/MM/DD'),29);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (800,to_date('18/08/21','RR/MM/DD'),29);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (801,to_date('18/08/22','RR/MM/DD'),29);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (802,to_date('18/08/22','RR/MM/DD'),29);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (803,to_date('18/08/23','RR/MM/DD'),29);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (804,to_date('18/08/23','RR/MM/DD'),29);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (805,to_date('18/08/24','RR/MM/DD'),29);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (806,to_date('18/08/24','RR/MM/DD'),29);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (807,to_date('18/08/27','RR/MM/DD'),29);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (808,to_date('18/08/27','RR/MM/DD'),29);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (809,to_date('18/08/28','RR/MM/DD'),29);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (810,to_date('18/08/28','RR/MM/DD'),29);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (811,to_date('18/08/29','RR/MM/DD'),29);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (812,to_date('18/08/29','RR/MM/DD'),29);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (813,to_date('18/08/29','RR/MM/DD'),29);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (814,to_date('18/08/29','RR/MM/DD'),29);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (815,to_date('18/08/30','RR/MM/DD'),29);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (816,to_date('18/08/30','RR/MM/DD'),29);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (817,to_date('18/08/30','RR/MM/DD'),29);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (818,to_date('18/08/30','RR/MM/DD'),29);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (819,to_date('18/08/31','RR/MM/DD'),29);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (820,to_date('18/08/31','RR/MM/DD'),29);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (821,to_date('18/08/13','RR/MM/DD'),30);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (822,to_date('18/08/13','RR/MM/DD'),30);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (823,to_date('18/08/14','RR/MM/DD'),30);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (824,to_date('18/08/14','RR/MM/DD'),30);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (825,to_date('18/08/16','RR/MM/DD'),30);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (826,to_date('18/08/16','RR/MM/DD'),30);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (827,to_date('18/08/17','RR/MM/DD'),30);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (828,to_date('18/08/17','RR/MM/DD'),30);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (829,to_date('18/08/20','RR/MM/DD'),30);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (830,to_date('18/08/20','RR/MM/DD'),30);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (831,to_date('18/08/21','RR/MM/DD'),30);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (832,to_date('18/08/21','RR/MM/DD'),30);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (833,to_date('18/08/22','RR/MM/DD'),30);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (834,to_date('18/08/22','RR/MM/DD'),30);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (835,to_date('18/08/23','RR/MM/DD'),30);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (836,to_date('18/08/23','RR/MM/DD'),30);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (837,to_date('18/08/24','RR/MM/DD'),30);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (838,to_date('18/08/24','RR/MM/DD'),30);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (839,to_date('18/08/27','RR/MM/DD'),30);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (840,to_date('18/08/27','RR/MM/DD'),30);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (841,to_date('18/08/28','RR/MM/DD'),30);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (842,to_date('18/08/28','RR/MM/DD'),30);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (843,to_date('18/08/29','RR/MM/DD'),30);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (844,to_date('18/08/29','RR/MM/DD'),30);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (845,to_date('18/08/30','RR/MM/DD'),30);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (846,to_date('18/08/30','RR/MM/DD'),30);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (847,to_date('18/08/31','RR/MM/DD'),30);
Insert into HONG.TBLATTENDANCE (SEQ,ATTENDANCEDATE,STUDENTSEQ) values (848,to_date('18/08/31','RR/MM/DD'),30);
REM INSERTING into HONG.TBLATTENDANCETYPE
SET DEFINE OFF;
Insert into HONG.TBLATTENDANCETYPE (SEQ,NAME,LEGITIMACY,POINT,WEIGHTEDPOINT) values (1,'1h지각','NO',2.22222222222222222222222222222222222222,1.1);
Insert into HONG.TBLATTENDANCETYPE (SEQ,NAME,LEGITIMACY,POINT,WEIGHTEDPOINT) values (2,'2h지각','NO',2.85714285714285714285714285714285714286,1.15);
Insert into HONG.TBLATTENDANCETYPE (SEQ,NAME,LEGITIMACY,POINT,WEIGHTEDPOINT) values (3,'3h지각','NO',4,1.2);
Insert into HONG.TBLATTENDANCETYPE (SEQ,NAME,LEGITIMACY,POINT,WEIGHTEDPOINT) values (4,'4h지각','NO',6.66666666666666666666666666666666666667,0);
Insert into HONG.TBLATTENDANCETYPE (SEQ,NAME,LEGITIMACY,POINT,WEIGHTEDPOINT) values (5,'1h조퇴','NO',3.33333333333333333333333333333333333333,1.1);
Insert into HONG.TBLATTENDANCETYPE (SEQ,NAME,LEGITIMACY,POINT,WEIGHTEDPOINT) values (6,'2h조퇴','NO',4,1.15);
Insert into HONG.TBLATTENDANCETYPE (SEQ,NAME,LEGITIMACY,POINT,WEIGHTEDPOINT) values (7,'3h조퇴','NO',5,1.2);
Insert into HONG.TBLATTENDANCETYPE (SEQ,NAME,LEGITIMACY,POINT,WEIGHTEDPOINT) values (8,'4h조퇴','NO',6.66666666666666666666666666666666666667,0);
Insert into HONG.TBLATTENDANCETYPE (SEQ,NAME,LEGITIMACY,POINT,WEIGHTEDPOINT) values (9,'1h외출','NO',5,1.2);
Insert into HONG.TBLATTENDANCETYPE (SEQ,NAME,LEGITIMACY,POINT,WEIGHTEDPOINT) values (10,'2h외출','NO',5,1.2);
Insert into HONG.TBLATTENDANCETYPE (SEQ,NAME,LEGITIMACY,POINT,WEIGHTEDPOINT) values (11,'3h외출','NO',5,1.2);
Insert into HONG.TBLATTENDANCETYPE (SEQ,NAME,LEGITIMACY,POINT,WEIGHTEDPOINT) values (12,'결석','NO',6.66666666666666666666666666666666666667,1);
Insert into HONG.TBLATTENDANCETYPE (SEQ,NAME,LEGITIMACY,POINT,WEIGHTEDPOINT) values (13,'1h지각','YES',0,0);
Insert into HONG.TBLATTENDANCETYPE (SEQ,NAME,LEGITIMACY,POINT,WEIGHTEDPOINT) values (14,'2h지각','YES',0,0);
Insert into HONG.TBLATTENDANCETYPE (SEQ,NAME,LEGITIMACY,POINT,WEIGHTEDPOINT) values (15,'3h지각','YES',0,0);
Insert into HONG.TBLATTENDANCETYPE (SEQ,NAME,LEGITIMACY,POINT,WEIGHTEDPOINT) values (16,'4h지각','YES',0,0);
Insert into HONG.TBLATTENDANCETYPE (SEQ,NAME,LEGITIMACY,POINT,WEIGHTEDPOINT) values (17,'1h조퇴','YES',0,0);
Insert into HONG.TBLATTENDANCETYPE (SEQ,NAME,LEGITIMACY,POINT,WEIGHTEDPOINT) values (18,'2h조퇴','YES',0,0);
Insert into HONG.TBLATTENDANCETYPE (SEQ,NAME,LEGITIMACY,POINT,WEIGHTEDPOINT) values (19,'3h조퇴','YES',0,0);
Insert into HONG.TBLATTENDANCETYPE (SEQ,NAME,LEGITIMACY,POINT,WEIGHTEDPOINT) values (20,'4h조퇴','YES',0,0);
Insert into HONG.TBLATTENDANCETYPE (SEQ,NAME,LEGITIMACY,POINT,WEIGHTEDPOINT) values (21,'1h외출','YES',0,0);
Insert into HONG.TBLATTENDANCETYPE (SEQ,NAME,LEGITIMACY,POINT,WEIGHTEDPOINT) values (22,'2h외출','YES',0,0);
Insert into HONG.TBLATTENDANCETYPE (SEQ,NAME,LEGITIMACY,POINT,WEIGHTEDPOINT) values (23,'3h외출','YES',0,0);
Insert into HONG.TBLATTENDANCETYPE (SEQ,NAME,LEGITIMACY,POINT,WEIGHTEDPOINT) values (24,'결석','YES',0,0);
REM INSERTING into HONG.TBLAVLB
SET DEFINE OFF;
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (1,1,1);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (2,1,2);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (3,1,3);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (4,1,4);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (5,1,5);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (6,1,6);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (7,1,7);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (8,1,8);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (9,1,9);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (10,1,10);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (11,1,11);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (12,1,12);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (13,1,13);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (14,1,14);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (15,1,15);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (16,1,16);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (17,1,17);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (18,1,18);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (19,1,19);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (20,1,20);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (21,2,1);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (22,2,2);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (23,2,16);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (24,2,7);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (25,2,3);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (26,2,9);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (27,2,6);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (28,2,10);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (29,2,11);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (30,2,17);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (31,2,18);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (32,2,19);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (33,2,20);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (34,2,21);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (35,2,22);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (36,2,23);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (37,2,24);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (38,2,25);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (39,2,26);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (40,2,27);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (41,3,1);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (42,3,2);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (43,3,3);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (44,3,4);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (45,3,5);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (46,3,6);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (47,3,7);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (48,3,8);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (49,3,9);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (50,3,16);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (51,3,17);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (52,3,18);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (53,3,19);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (54,3,20);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (55,3,21);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (56,3,22);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (57,3,23);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (58,3,24);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (59,3,25);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (60,3,26);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (61,4,1);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (62,4,2);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (63,4,7);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (64,4,8);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (65,4,12);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (66,4,3);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (67,4,4);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (68,4,5);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (69,4,6);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (70,4,9);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (71,4,10);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (72,4,11);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (73,4,20);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (74,4,13);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (75,4,14);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (76,4,15);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (77,4,16);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (78,4,17);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (79,4,18);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (80,4,19);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (81,5,1);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (82,5,2);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (83,5,3);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (84,5,4);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (85,5,5);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (86,5,6);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (87,5,7);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (88,5,8);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (89,5,9);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (90,5,10);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (91,5,11);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (92,5,12);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (93,5,20);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (94,5,21);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (95,5,22);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (96,5,23);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (97,5,24);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (98,5,25);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (99,5,26);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (100,5,18);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (101,6,1);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (102,6,2);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (103,6,3);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (104,6,4);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (105,6,6);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (106,6,13);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (107,6,14);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (108,6,15);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (109,6,16);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (110,6,17);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (111,6,18);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (112,6,19);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (113,6,20);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (114,6,21);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (115,6,22);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (116,6,23);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (117,6,24);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (118,6,25);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (119,6,26);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (120,6,27);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (121,7,1);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (122,7,2);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (123,7,4);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (124,7,5);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (125,7,6);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (126,7,7);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (127,7,13);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (128,7,10);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (129,7,12);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (130,7,14);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (131,7,15);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (132,7,16);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (133,7,17);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (134,7,18);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (135,7,19);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (136,7,20);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (137,7,21);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (138,7,22);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (139,7,23);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (140,7,24);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (141,8,1);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (142,8,2);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (143,8,3);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (144,8,4);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (145,8,5);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (146,8,6);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (147,8,7);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (148,8,8);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (149,8,9);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (150,8,10);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (151,8,11);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (152,8,12);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (153,8,13);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (154,8,14);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (155,8,27);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (156,8,26);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (157,8,25);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (158,8,24);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (159,8,23);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (160,8,22);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (161,9,1);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (162,9,2);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (163,9,3);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (164,9,4);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (165,9,5);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (166,9,6);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (167,9,7);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (168,9,8);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (169,9,9);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (170,9,10);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (171,9,11);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (172,9,12);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (173,9,27);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (174,9,26);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (175,9,25);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (176,9,24);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (177,9,23);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (178,9,22);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (179,9,21);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (180,9,20);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (181,10,1);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (182,10,2);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (183,10,3);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (184,10,7);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (185,10,9);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (186,10,12);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (187,10,13);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (188,10,15);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (189,10,17);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (190,10,19);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (191,10,20);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (192,10,21);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (193,10,22);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (194,10,23);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (195,10,24);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (196,10,25);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (197,10,26);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (198,10,27);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (199,10,8);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (200,10,14);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (201,10,16);
Insert into HONG.TBLAVLB (SEQ,LECTURERSEQ,SUBJECTTYPESEQ) values (202,10,4);
REM INSERTING into HONG.TBLCLASSROOM
SET DEFINE OFF;
Insert into HONG.TBLCLASSROOM (SEQ,NAME,NUM,STATE) values (1,'제 1강의실',30,1);
Insert into HONG.TBLCLASSROOM (SEQ,NAME,NUM,STATE) values (2,'제 2강의실',30,1);
Insert into HONG.TBLCLASSROOM (SEQ,NAME,NUM,STATE) values (3,'제 3강의실',30,1);
Insert into HONG.TBLCLASSROOM (SEQ,NAME,NUM,STATE) values (4,'제 4강의실',26,1);
Insert into HONG.TBLCLASSROOM (SEQ,NAME,NUM,STATE) values (5,'제 5강의실',26,1);
Insert into HONG.TBLCLASSROOM (SEQ,NAME,NUM,STATE) values (6,'제 6강의실',26,1);
REM INSERTING into HONG.TBLCOURSE
SET DEFINE OFF;
Insert into HONG.TBLCOURSE (SEQ,STARTDATE,ENDDATE,COURSENAMESEQ,LECTURESEQ,CLASSROOMSEQ) values (1,to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),4,4,1);
Insert into HONG.TBLCOURSE (SEQ,STARTDATE,ENDDATE,COURSENAMESEQ,LECTURESEQ,CLASSROOMSEQ) values (2,to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),3,3,1);
Insert into HONG.TBLCOURSE (SEQ,STARTDATE,ENDDATE,COURSENAMESEQ,LECTURESEQ,CLASSROOMSEQ) values (3,to_date('19/04/29','RR/MM/DD'),to_date('19/10/25','RR/MM/DD'),2,2,4);
REM INSERTING into HONG.TBLCOURSENAME
SET DEFINE OFF;
Insert into HONG.TBLCOURSENAME (SEQ,NAME,STATE) values (1,'자바 기반 융합형 SW 개발자 양성과정',1);
Insert into HONG.TBLCOURSENAME (SEQ,NAME,STATE) values (2,'Java기반의 스마트 웹 앱콘텐츠 양성과정',1);
Insert into HONG.TBLCOURSENAME (SEQ,NAME,STATE) values (3,'Java를 활용한 웹 응용 SW개발자 양성과정',1);
Insert into HONG.TBLCOURSENAME (SEQ,NAME,STATE) values (4,'파이썬과 자바를 연계한 머신러닝 활용개발자 과정',1);
Insert into HONG.TBLCOURSENAME (SEQ,NAME,STATE) values (5,'Python & Java 응용 SW 실무개발자 양성과정',1);
Insert into HONG.TBLCOURSENAME (SEQ,NAME,STATE) values (6,'웹기반 빅데이터 분석 응용 SW개발자',1);
Insert into HONG.TBLCOURSENAME (SEQ,NAME,STATE) values (7,'웹개발 & 머신러닝을 통한 응용 SW엔지니어링',1);
Insert into HONG.TBLCOURSENAME (SEQ,NAME,STATE) values (8,'빅데이터 기반 SW개발자 양성과정',1);
Insert into HONG.TBLCOURSENAME (SEQ,NAME,STATE) values (9,'블록체인 기술을 활용한 응용 SW개발자 양성과정',1);
Insert into HONG.TBLCOURSENAME (SEQ,NAME,STATE) values (10,'정보보안(네트워크, 서버) 엔지니어 양성과정',1);
Insert into HONG.TBLCOURSENAME (SEQ,NAME,STATE) values (11,'파이썬과 R을 활용한 빅데이터분석(머신러닝, 딥러닝)전문가 양성과정',1);
Insert into HONG.TBLCOURSENAME (SEQ,NAME,STATE) values (12,'AI 알고리즘 응용 빅데이터 서비스 개발자 취업과정',1);
REM INSERTING into HONG.TBLDATE
SET DEFINE OFF;
REM INSERTING into HONG.TBLHOLIDAY
SET DEFINE OFF;
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (1,to_date('17/01/01','RR/MM/DD'),'신정');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (2,to_date('17/01/27','RR/MM/DD'),'설날');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (3,to_date('17/01/28','RR/MM/DD'),'설날');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (4,to_date('17/01/29','RR/MM/DD'),'설날');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (5,to_date('17/01/30','RR/MM/DD'),'대체공휴일');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (6,to_date('17/03/01','RR/MM/DD'),'삼일절');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (7,to_date('17/05/03','RR/MM/DD'),'석가탄신일');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (8,to_date('17/05/05','RR/MM/DD'),'어린이날');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (9,to_date('17/05/09','RR/MM/DD'),'대통령선거');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (10,to_date('17/06/06','RR/MM/DD'),'현충일');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (11,to_date('17/08/15','RR/MM/DD'),'광복절');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (12,to_date('17/10/02','RR/MM/DD'),'임시공휴일');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (13,to_date('17/10/03','RR/MM/DD'),'개천절');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (14,to_date('17/10/03','RR/MM/DD'),'추석');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (15,to_date('17/10/04','RR/MM/DD'),'추석');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (16,to_date('17/10/05','RR/MM/DD'),'추석');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (17,to_date('17/10/06','RR/MM/DD'),'추석');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (18,to_date('17/10/09','RR/MM/DD'),'한글날');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (19,to_date('17/12/25','RR/MM/DD'),'크리스마스');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (20,to_date('18/01/01','RR/MM/DD'),'신정');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (21,to_date('18/02/15','RR/MM/DD'),'설날');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (22,to_date('18/02/16','RR/MM/DD'),'설날');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (23,to_date('18/02/17','RR/MM/DD'),'설날');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (24,to_date('18/03/01','RR/MM/DD'),'삼일절');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (25,to_date('18/05/05','RR/MM/DD'),'어린이날');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (26,to_date('18/05/07','RR/MM/DD'),'대체공휴일');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (27,to_date('18/05/22','RR/MM/DD'),'부처님 오신 날');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (28,to_date('18/06/06','RR/MM/DD'),'현충일');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (29,to_date('18/06/13','RR/MM/DD'),'지방선거');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (30,to_date('18/08/15','RR/MM/DD'),'광복절');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (31,to_date('18/09/23','RR/MM/DD'),'추석');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (32,to_date('18/09/24','RR/MM/DD'),'추석');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (33,to_date('18/09/25','RR/MM/DD'),'추석');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (34,to_date('18/09/26','RR/MM/DD'),'대체공휴일');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (35,to_date('18/10/03','RR/MM/DD'),'개천절');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (36,to_date('18/10/09','RR/MM/DD'),'한글날');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (37,to_date('18/12/25','RR/MM/DD'),'크리스마스');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (38,to_date('19/01/01','RR/MM/DD'),'신정');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (39,to_date('19/02/04','RR/MM/DD'),'설날');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (40,to_date('19/02/05','RR/MM/DD'),'설날');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (41,to_date('19/02/06','RR/MM/DD'),'설날');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (42,to_date('19/03/01','RR/MM/DD'),'삼일절');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (43,to_date('19/05/05','RR/MM/DD'),'어린이날');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (44,to_date('19/05/06','RR/MM/DD'),'대체공휴일');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (45,to_date('19/05/12','RR/MM/DD'),'부처님 오신 날');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (46,to_date('19/06/06','RR/MM/DD'),'현충일');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (47,to_date('19/08/15','RR/MM/DD'),'광복절');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (48,to_date('19/09/12','RR/MM/DD'),'추석');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (49,to_date('19/09/13','RR/MM/DD'),'추석');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (50,to_date('19/09/14','RR/MM/DD'),'추석');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (51,to_date('19/10/03','RR/MM/DD'),'개천절');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (52,to_date('19/10/09','RR/MM/DD'),'한글날');
Insert into HONG.TBLHOLIDAY (SEQ,REGDATE,NAME) values (53,to_date('19/12/25','RR/MM/DD'),'크리스마스');
REM INSERTING into HONG.TBLLECTURER
SET DEFINE OFF;
Insert into HONG.TBLLECTURER (SEQ,NAME,REGISTRATIONNUM,PHONENUM,STATE) values (1,'차은우','1254126','010-9958-5487',1);
Insert into HONG.TBLLECTURER (SEQ,NAME,REGISTRATIONNUM,PHONENUM,STATE) values (2,'서강준','1245785','010-1004-2546',1);
Insert into HONG.TBLLECTURER (SEQ,NAME,REGISTRATIONNUM,PHONENUM,STATE) values (3,'이상민','1124568','010-3524-5586',1);
Insert into HONG.TBLLECTURER (SEQ,NAME,REGISTRATIONNUM,PHONENUM,STATE) values (4,'설유경','2257893','010-1248-6523',1);
Insert into HONG.TBLLECTURER (SEQ,NAME,REGISTRATIONNUM,PHONENUM,STATE) values (5,'정우진','2247935','010-3657-4521',1);
Insert into HONG.TBLLECTURER (SEQ,NAME,REGISTRATIONNUM,PHONENUM,STATE) values (6,'엄현철','1415975','010-2546-6857',1);
Insert into HONG.TBLLECTURER (SEQ,NAME,REGISTRATIONNUM,PHONENUM,STATE) values (7,'강부경','2254793','010-9548-5454',1);
Insert into HONG.TBLLECTURER (SEQ,NAME,REGISTRATIONNUM,PHONENUM,STATE) values (8,'김병준','1122563','010-1245-6584',1);
Insert into HONG.TBLLECTURER (SEQ,NAME,REGISTRATIONNUM,PHONENUM,STATE) values (9,'김세인','1245789','010-3215-5545',1);
Insert into HONG.TBLLECTURER (SEQ,NAME,REGISTRATIONNUM,PHONENUM,STATE) values (10,'이제훈','1478935','010-2459-6541',1);
REM INSERTING into HONG.TBLPUBLISHER
SET DEFINE OFF;
Insert into HONG.TBLPUBLISHER (SEQ,NAME,STATE) values (1,'도우출판',1);
Insert into HONG.TBLPUBLISHER (SEQ,NAME,STATE) values (2,'인피니티북스',1);
Insert into HONG.TBLPUBLISHER (SEQ,NAME,STATE) values (3,'가메',1);
Insert into HONG.TBLPUBLISHER (SEQ,NAME,STATE) values (4,'한빛미디어',1);
Insert into HONG.TBLPUBLISHER (SEQ,NAME,STATE) values (5,'위키북스',1);
Insert into HONG.TBLPUBLISHER (SEQ,NAME,STATE) values (6,'길벗',1);
Insert into HONG.TBLPUBLISHER (SEQ,NAME,STATE) values (7,'생능출판사',1);
Insert into HONG.TBLPUBLISHER (SEQ,NAME,STATE) values (8,'한빛리더스',1);
Insert into HONG.TBLPUBLISHER (SEQ,NAME,STATE) values (9,'이지스퍼블리싱',1);
Insert into HONG.TBLPUBLISHER (SEQ,NAME,STATE) values (10,'남가람북스',1);
Insert into HONG.TBLPUBLISHER (SEQ,NAME,STATE) values (11,'광문각',1);
Insert into HONG.TBLPUBLISHER (SEQ,NAME,STATE) values (12,'씨아이알',1);
Insert into HONG.TBLPUBLISHER (SEQ,NAME,STATE) values (13,'정보문화사',1);
Insert into HONG.TBLPUBLISHER (SEQ,NAME,STATE) values (14,'아이콕스',1);
Insert into HONG.TBLPUBLISHER (SEQ,NAME,STATE) values (15,'영진닷컴',1);
Insert into HONG.TBLPUBLISHER (SEQ,NAME,STATE) values (16,'로드북',1);
Insert into HONG.TBLPUBLISHER (SEQ,NAME,STATE) values (17,'비제이퍼블릭',1);
Insert into HONG.TBLPUBLISHER (SEQ,NAME,STATE) values (18,'에이콘 출판',1);
Insert into HONG.TBLPUBLISHER (SEQ,NAME,STATE) values (19,'제이펍',1);
REM INSERTING into HONG.TBLQUIZ
SET DEFINE OFF;
Insert into HONG.TBLQUIZ (SEQ,SUBJECTSEQ,TYPE,NUM,CONTENTS,ANSWER,QUIZDATE,STATE) values (1,3,'필기',1,'가용성, 비용 수준, (  )은 데이터베이스 요구사항에 따라 하드웨어와 운영체제에 적합한 일반적인 DBMS를 선정하는 기준이다.','지속적인 기술 지원',null,1);
Insert into HONG.TBLQUIZ (SEQ,SUBJECTSEQ,TYPE,NUM,CONTENTS,ANSWER,QUIZDATE,STATE) values (2,3,'필기',2,'( )의 크기는 데이터 처리의 성능에 영향을 미칠 수 있고, 자료처리를 위한 메모리 용향을 확보하기 위한 하드디스크의 저장 장치이다.','스왑',null,1);
Insert into HONG.TBLQUIZ (SEQ,SUBJECTSEQ,TYPE,NUM,CONTENTS,ANSWER,QUIZDATE,STATE) values (3,3,'필기',3,'( )는 이메일을 보내기위해 이용되는 프로토콜.사용하는 TCP포트번호는 25번이다. 상대서버를 지시하기 위해 DNS의 MX레코드가 사용됨.','SMTP',null,1);
Insert into HONG.TBLQUIZ (SEQ,SUBJECTSEQ,TYPE,NUM,CONTENTS,ANSWER,QUIZDATE,STATE) values (4,3,'필기',4,'( )는 웹 애플리케이션을 수행하는 미들웨어로서, 웹서버와 JSP/Servlet 애플리케이션 수행을 위한 엔진으로 구성된다.',' WAS(Web Application Server)',null,1);
Insert into HONG.TBLQUIZ (SEQ,SUBJECTSEQ,TYPE,NUM,CONTENTS,ANSWER,QUIZDATE,STATE) values (5,3,'필기',5,'( )는 개발자가 작성한 코드에 대한 빌드 및 배포, 그리고 라이브러리에 대한 의존성 관리에 사용하는 도구로 Ant, Maven 등이 있다.','빌드 도구',null,1);
Insert into HONG.TBLQUIZ (SEQ,SUBJECTSEQ,TYPE,NUM,CONTENTS,ANSWER,QUIZDATE,STATE) values (6,3,'필기',6,'DBMS(Data Base Management System)는 서로 관련되는 데이터들을 일정한 체계와 순서로 모아 놓은 데이터의 집합을 의미한다.','X',null,1);
Insert into HONG.TBLQUIZ (SEQ,SUBJECTSEQ,TYPE,NUM,CONTENTS,ANSWER,QUIZDATE,STATE) values (7,3,'필기',7,'구현도구는 코드의 작성 및 편집, 디버깅 등과 같은 다양한 작업이 가능하며 Eclipse, NetBeans등 소프트웨어들이 사용되고 있다.','X',null,1);
Insert into HONG.TBLQUIZ (SEQ,SUBJECTSEQ,TYPE,NUM,CONTENTS,ANSWER,QUIZDATE,STATE) values (8,3,'필기',8,'네트워크 프로토콜에 NNTP는 인터넷에 연결된 컴퓨터에서 프로그램 간에 안정적으로,순서대로,에러없이 교환할수있게 한다','X',null,1);
Insert into HONG.TBLQUIZ (SEQ,SUBJECTSEQ,TYPE,NUM,CONTENTS,ANSWER,QUIZDATE,STATE) values (9,3,'필기',9,'네트워크 소켓은 네트워크 통신을 위한 프로그램들은 소켓을 생성하고, 이 소켓을 통해서 서로 데이터를 교환한다.','O',null,1);
Insert into HONG.TBLQUIZ (SEQ,SUBJECTSEQ,TYPE,NUM,CONTENTS,ANSWER,QUIZDATE,STATE) values (10,3,'필기',10,'개발환경구축을 위해서는 해당 프로젝트의 목적 및 구축 설계에 대한 명확한 이해가 필요하다','O',null,1);
Insert into HONG.TBLQUIZ (SEQ,SUBJECTSEQ,TYPE,NUM,CONTENTS,ANSWER,QUIZDATE,STATE) values (11,8,'필기',1,'( )은 데이터를 정의하는 언어로서, DBML에서는 오브젝트라고 한다.','DDL(Data Definition Language)',null,1);
Insert into HONG.TBLQUIZ (SEQ,SUBJECTSEQ,TYPE,NUM,CONTENTS,ANSWER,QUIZDATE,STATE) values (12,8,'필기',2,'데이터를 조작하는 명령어인 DML의 명령어는 INSERT, ( ), UPDATE, DELETE가 있다. ','SELECT',null,1);
Insert into HONG.TBLQUIZ (SEQ,SUBJECTSEQ,TYPE,NUM,CONTENTS,ANSWER,QUIZDATE,STATE) values (13,8,'필기',3,'( )은 일 처리 단위를 의미하며, 논리적 연산 단위이다. 하나 이상의 SQL문장이 포함되며, 분할할 수 없는 최소 단위이다.','트랜잭션',null,1);
Insert into HONG.TBLQUIZ (SEQ,SUBJECTSEQ,TYPE,NUM,CONTENTS,ANSWER,QUIZDATE,STATE) values (14,8,'필기',4,'( )에는 데이터베이스의 데이터를 제외한 모든 정보가 있다. 메타데이터로 구성되어 있다고 할 수 있다.','데이터 사전',null,1);
Insert into HONG.TBLQUIZ (SEQ,SUBJECTSEQ,TYPE,NUM,CONTENTS,ANSWER,QUIZDATE,STATE) values (15,8,'필기',5,'( )은 결합을 의미하며 관계형 데이터 베이스에서의 조인은 교집합 결과를 가지는 결합방법을 의미한다.','조인(JOIN)',null,1);
Insert into HONG.TBLQUIZ (SEQ,SUBJECTSEQ,TYPE,NUM,CONTENTS,ANSWER,QUIZDATE,STATE) values (16,8,'필기',6,'UNION으로 연결된 SELECT문에 나타나는 컬럼의 숫자는 달라야 한다.','X',null,1);
Insert into HONG.TBLQUIZ (SEQ,SUBJECTSEQ,TYPE,NUM,CONTENTS,ANSWER,QUIZDATE,STATE) values (17,8,'필기',7,'인덱스 설계과정에 접근 경로 수집 > 접근 경로 결정 > 분포도 조사를 통한 후보 컬럼 설정 > 컬럼 조합 및 순서 결정 > 적용시험','X',null,1);
Insert into HONG.TBLQUIZ (SEQ,SUBJECTSEQ,TYPE,NUM,CONTENTS,ANSWER,QUIZDATE,STATE) values (18,8,'필기',8,'임의 접근 통제는 시스템 객체에 대한 접근을 사용자 개인 또는 그룹의 식별자를 기반으로 제한하는 방법이다.','O',null,1);
Insert into HONG.TBLQUIZ (SEQ,SUBJECTSEQ,TYPE,NUM,CONTENTS,ANSWER,QUIZDATE,STATE) values (19,8,'필기',9,'테이블 생성을 위한 CREATE 문에 제약 조건을 명시하는 형태로 사용하며, ALTER를 통해 테이블의 제약 조건을 변경할 수 있다','O',null,1);
Insert into HONG.TBLQUIZ (SEQ,SUBJECTSEQ,TYPE,NUM,CONTENTS,ANSWER,QUIZDATE,STATE) values (20,8,'필기',10,'테이블은 속성의 데이터 타입과 크기, 제약 조건 등을 지정한 정보이며, 속성이 가질 수 있는 값의 범위로 이해 가능하다','X',null,1);
Insert into HONG.TBLQUIZ (SEQ,SUBJECTSEQ,TYPE,NUM,CONTENTS,ANSWER,QUIZDATE,STATE) values (21,16,'필기',1,'( )는 네트워크를 통하여 다른 서버 시스템 상의 컴퓨터에 원격 서비스에 접속할 수 있는 응용 프로그램이나 서비스이다.','클라이언트',null,1);
Insert into HONG.TBLQUIZ (SEQ,SUBJECTSEQ,TYPE,NUM,CONTENTS,ANSWER,QUIZDATE,STATE) values (22,16,'필기',2,'( )는 웹 페이지 전체의 일관성을 유지할 수 있도록 스타일을 미리 지정해 둔 시트를 의미한다.','CSS ',null,1);
Insert into HONG.TBLQUIZ (SEQ,SUBJECTSEQ,TYPE,NUM,CONTENTS,ANSWER,QUIZDATE,STATE) values (23,16,'필기',3,'( )는 객체지향 프로그래밍 언어로서 웹 브라우저에서 주로 사용된다.','자바스크립트',null,1);
Insert into HONG.TBLQUIZ (SEQ,SUBJECTSEQ,TYPE,NUM,CONTENTS,ANSWER,QUIZDATE,STATE) values (24,16,'필기',4,'( )은 UI테스트에 대한 보편적인 방법으로 사용성 테스트에 대한 계획수립, 사용성 테스트 설계, 사용성 테스트 수행과 결과 검토로 구분하여 진행된다.','사용성 테스트',null,1);
Insert into HONG.TBLQUIZ (SEQ,SUBJECTSEQ,TYPE,NUM,CONTENTS,ANSWER,QUIZDATE,STATE) values (25,16,'필기',5,'( )은 어떠한 사용자, 어떠한 기술 환경에서도 사용자가 전문적인 능력없이 웹 사이트에서 제공하는 모든 정보에 접근할수있도록 보장하는 것을 뜻함. ','웹 접근성',null,1);
Insert into HONG.TBLQUIZ (SEQ,SUBJECTSEQ,TYPE,NUM,CONTENTS,ANSWER,QUIZDATE,STATE) values (26,16,'필기',6,'HTML의 Aside는 본문 내용 이외에 표현하고자 하는 기타 내용이 있을 경우에 영역을 지정할 때 사용하거나 서브 메뉴를 표시 할 때 사용하기도 한다.','O',null,1);
Insert into HONG.TBLQUIZ (SEQ,SUBJECTSEQ,TYPE,NUM,CONTENTS,ANSWER,QUIZDATE,STATE) values (27,16,'필기',7,'사용성 테스트 과정은 계획수립 > 테스트 설계 > 결과 보고서 작성이다.','X',null,1);
Insert into HONG.TBLQUIZ (SEQ,SUBJECTSEQ,TYPE,NUM,CONTENTS,ANSWER,QUIZDATE,STATE) values (28,16,'필기',8,'HTML에서 onload는 onclick 핸들러와 유사하게 동작하지만, 마우스를 누를 때와 놓았을 때를 구분하여 동작할 수 있다는 점이 다르다','X',null,1);
Insert into HONG.TBLQUIZ (SEQ,SUBJECTSEQ,TYPE,NUM,CONTENTS,ANSWER,QUIZDATE,STATE) values (29,16,'필기',9,'웹 표준은 서비스 이용자 단말기의 하드웨어 및 소프트웨어 환경이 다른 경우에도 동등한 서비스를 제공하는 것을 의미한다.','X',null,1);
Insert into HONG.TBLQUIZ (SEQ,SUBJECTSEQ,TYPE,NUM,CONTENTS,ANSWER,QUIZDATE,STATE) values (30,16,'필기',10,'화면구현단계에서 요구사항 명세서와 제약사항에 포한된 항목(기능, 성능, 인터페이스 등) 등이 포함되었는지 확인한다.','O',null,1);
REM INSERTING into HONG.TBLRECOMMENDATION
SET DEFINE OFF;
REM INSERTING into HONG.TBLSTUDENT
SET DEFINE OFF;
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (1,1,1,to_date('18/06/25','RR/MM/DD'),'3',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (2,2,1,to_date('18/06/25','RR/MM/DD'),'3',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (3,3,1,to_date('18/06/25','RR/MM/DD'),'3',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (4,4,1,to_date('18/06/25','RR/MM/DD'),'3',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (5,5,1,to_date('18/06/26','RR/MM/DD'),'3',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (6,6,1,to_date('18/06/26','RR/MM/DD'),'3',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (7,7,1,to_date('18/06/26','RR/MM/DD'),'3',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (8,8,1,to_date('18/06/26','RR/MM/DD'),'3',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (9,9,1,to_date('18/06/26','RR/MM/DD'),'3',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (10,10,1,to_date('18/06/26','RR/MM/DD'),'3',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (11,11,1,to_date('18/06/27','RR/MM/DD'),'3',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (12,12,1,to_date('18/06/27','RR/MM/DD'),'3',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (13,13,1,to_date('18/06/27','RR/MM/DD'),'3',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (14,14,1,to_date('18/06/27','RR/MM/DD'),'3',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (15,15,1,to_date('18/06/27','RR/MM/DD'),'3',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (16,16,1,to_date('18/06/27','RR/MM/DD'),'3',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (17,17,1,to_date('18/06/27','RR/MM/DD'),'3',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (18,18,1,to_date('18/06/28','RR/MM/DD'),'3',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (19,19,1,to_date('18/06/28','RR/MM/DD'),'3',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (20,20,1,to_date('18/06/28','RR/MM/DD'),'3',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (21,21,1,to_date('18/06/29','RR/MM/DD'),'3',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (22,22,1,to_date('18/06/29','RR/MM/DD'),'3',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (23,23,1,to_date('18/06/29','RR/MM/DD'),'3',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (24,24,1,to_date('18/06/29','RR/MM/DD'),'3',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (25,25,1,to_date('18/06/29','RR/MM/DD'),'3',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (26,26,1,to_date('18/06/29','RR/MM/DD'),'3',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (27,27,1,to_date('18/06/29','RR/MM/DD'),'3',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (28,28,1,to_date('18/06/29','RR/MM/DD'),'3',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (29,29,1,to_date('18/06/29','RR/MM/DD'),'3',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (30,30,1,to_date('18/06/29','RR/MM/DD'),'3',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (31,31,2,to_date('19/01/21','RR/MM/DD'),'2',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (32,32,2,to_date('19/01/21','RR/MM/DD'),'2',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (33,33,2,to_date('19/01/21','RR/MM/DD'),'2',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (34,34,2,to_date('19/01/21','RR/MM/DD'),'2',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (35,35,2,to_date('19/01/21','RR/MM/DD'),'2',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (36,36,2,to_date('19/01/21','RR/MM/DD'),'2',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (37,37,2,to_date('19/01/21','RR/MM/DD'),'2',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (38,38,2,to_date('19/01/21','RR/MM/DD'),'2',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (39,39,2,to_date('19/01/22','RR/MM/DD'),'2',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (40,40,2,to_date('19/01/22','RR/MM/DD'),'2',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (41,41,2,to_date('19/01/22','RR/MM/DD'),'2',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (42,42,2,to_date('19/01/22','RR/MM/DD'),'2',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (43,43,2,to_date('19/01/22','RR/MM/DD'),'2',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (44,44,2,to_date('19/01/22','RR/MM/DD'),'2',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (45,45,2,to_date('19/01/23','RR/MM/DD'),'2',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (46,46,2,to_date('19/01/23','RR/MM/DD'),'2',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (47,47,2,to_date('19/01/23','RR/MM/DD'),'2',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (48,48,2,to_date('19/01/23','RR/MM/DD'),'2',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (49,49,2,to_date('19/01/23','RR/MM/DD'),'2',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (50,50,2,to_date('19/01/23','RR/MM/DD'),'수료/중도탈락',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (51,51,2,to_date('19/01/24','RR/MM/DD'),'2',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (52,52,2,to_date('19/01/24','RR/MM/DD'),'2',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (53,53,2,to_date('19/01/24','RR/MM/DD'),'2',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (54,54,2,to_date('19/01/24','RR/MM/DD'),'2',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (55,55,2,to_date('19/01/24','RR/MM/DD'),'2',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (56,56,2,to_date('19/01/25','RR/MM/DD'),'2',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (57,57,2,to_date('19/01/25','RR/MM/DD'),'2',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (58,58,2,to_date('19/01/25','RR/MM/DD'),'2',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (59,59,2,to_date('19/01/25','RR/MM/DD'),'2',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (60,60,2,to_date('19/01/25','RR/MM/DD'),'2',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (61,61,3,to_date('19/04/06','RR/MM/DD'),'1',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (62,62,3,to_date('19/04/07','RR/MM/DD'),'1',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (63,63,3,to_date('19/04/07','RR/MM/DD'),'1',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (64,64,3,to_date('19/04/11','RR/MM/DD'),'1',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (65,65,3,to_date('19/04/12','RR/MM/DD'),'1',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (66,66,3,to_date('19/04/14','RR/MM/DD'),'1',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (67,67,3,to_date('19/04/16','RR/MM/DD'),'1',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (68,68,3,to_date('19/04/18','RR/MM/DD'),'1',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (69,69,3,to_date('19/04/20','RR/MM/DD'),'1',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (70,70,3,to_date('19/04/21','RR/MM/DD'),'1',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (71,71,3,to_date('19/04/01','RR/MM/DD'),'1',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (72,72,3,to_date('19/04/02','RR/MM/DD'),'1',null);
Insert into HONG.TBLSTUDENT (SEQ,STUDENTINFOSEQ,COURSESEQ,REGISTRATIONTIME,STATUS,STATUSDATE) values (73,73,3,to_date('90/03/02','RR/MM/DD'),'1',null);
REM INSERTING into HONG.TBLSTUDENTINFO
SET DEFINE OFF;
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (1,'신재경','1315562','010-1907-7667',to_date('19/01/10','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (2,'차성양','1130961','010-0469-2980',to_date('19/01/10','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (3,'건소경','2687072','010-1385-1157',to_date('19/01/10','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (4,'신희용','1989703','010-1013-2298',to_date('19/01/10','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (5,'이진소','2514815','010-1357-3301',to_date('19/01/10','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (6,'문행창','1373437','010-4539-3378',to_date('19/01/11','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (7,'차윤연','2051129','010-6750-3754',to_date('19/01/11','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (8,'문장소','1949782','010-5241-5306',to_date('19/01/11','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (9,'신성규','1953731','010-9002-9482',to_date('19/01/11','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (10,'오소경','1655157','010-8024-1703',to_date('19/01/11','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (11,'홍성준','1490013','010-5907-2231',to_date('19/01/11','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (12,'건원양','2586718','010-1122-1021',to_date('19/01/12','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (13,'하재준','2585695','010-6224-7786',to_date('19/01/12','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (14,'문소규','2154116','010-5042-9822',to_date('19/01/12','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (15,'신장준','2807647','010-1148-5172',to_date('19/01/12','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (16,'우장존','1165873','010-1865-3083',to_date('19/01/12','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (17,'이병준','1570718','010-9426-9467',to_date('19/01/12','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (18,'왕소경','2200292','010-6554-4554',to_date('19/01/13','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (19,'오병규','2013774','010-9968-6566',to_date('19/01/13','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (20,'우윤준','1763093','010-2229-6305',to_date('19/01/13','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (21,'왕성중','1262257','010-8862-6361',to_date('19/01/13','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (22,'유종중','2626472','010-2526-5900',to_date('19/01/13','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (23,'하종연','2191565','010-4109-0127',to_date('19/01/14','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (24,'문윤하','2304478','010-5393-2595',to_date('19/01/14','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (25,'문행존','1120493','010-9032-5183',to_date('19/01/14','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (26,'이장중','1664696','010-9854-0147',to_date('19/01/14','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (27,'유장창','2752844','010-0784-9618',to_date('19/01/14','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (28,'차장무','1301254','010-6059-7318',to_date('19/01/14','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (29,'하형무','1987137','010-4427-2687',to_date('19/01/15','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (30,'왕행하','2692636','010-4992-8438',to_date('19/01/15','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (31,'오종용','2876431','010-3840-2308',to_date('19/04/15','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (32,'오유존','2438854','010-8875-8883',to_date('19/04/15','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (33,'유종연','1554485','010-3055-4680',to_date('19/04/15','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (34,'문유중','2652982','010-6073-6045',to_date('19/04/15','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (35,'신성중','2431422','010-0269-3045',to_date('19/04/15','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (36,'홍병창','2695505','010-0815-5035',to_date('19/04/15','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (37,'홍형규','1648924','010-8323-6056',to_date('19/04/15','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (38,'최장무','1315143','010-4835-9986',to_date('19/04/15','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (39,'문희용','2167645','010-4374-4711',to_date('19/04/15','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (40,'신형준','2021914','010-4122-1165',to_date('19/04/15','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (41,'우성용','2144126','010-7178-1664',to_date('19/04/15','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (42,'문윤히','2079005','010-0981-4660',to_date('18/06/11','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (43,'문유수','1176754','010-1699-7042',to_date('18/06/11','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (44,'건윤수','1147553','010-6021-9581',to_date('18/06/11','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (45,'최병창','1098972','010-6045-8375',to_date('18/06/11','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (46,'왕희무','2860366','010-5674-6006',to_date('18/06/11','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (47,'류원연','2019746','010-2194-3593',to_date('18/06/12','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (48,'홍원용','1355157','010-0205-1819',to_date('18/06/12','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (49,'차원경','2358583','010-8939-7762',to_date('18/06/12','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (50,'야호호','1111111','0100100101',to_date('19/04/04','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (51,'왕재하','1711677','010-9038-9859',to_date('18/06/12','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (52,'김행중','2788849','010-7491-5764',to_date('18/06/12','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (53,'차윤준','1098793','010-2901-5968',to_date('18/06/12','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (54,'박진양','2729678','010-1485-8640',to_date('18/06/12','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (55,'신희존','2454787','010-7522-6789',to_date('18/06/13','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (56,'차신연','1266038','010-8553-9296',to_date('18/06/13','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (57,'유병존','2949697','010-7061-5586',to_date('18/06/13','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (58,'박성창','2594694','010-7177-7662',to_date('18/06/13','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (59,'유성수','2793713','010-1493-8827',to_date('18/06/13','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (60,'문병규','2578785','010-3198-4319',to_date('18/06/13','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (61,'류소준','1200543','010-4462-4455',to_date('18/06/13','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (62,'이원소','1432795','010-8700-1176',to_date('18/06/13','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (63,'홍유규','1946165','010-7113-5375',to_date('18/06/13','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (64,'박행소','1190889','010-3501-8354',to_date('18/06/13','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (65,'하행수','2206525','010-9722-3396',to_date('18/06/14','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (66,'박종준','2323013','010-7723-6292',to_date('18/06/14','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (67,'우소양','1031194','010-6119-5878',to_date('18/06/14','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (68,'최종무','2419224','010-0293-3056',to_date('18/06/14','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (69,'우희준','2673857','010-2278-4817',to_date('18/06/14','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (70,'차희존','1481464','010-1660-4345',to_date('18/06/14','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (71,'하희소','1374898','010-6005-1695',to_date('18/06/14','RR/MM/DD'),1);
Insert into HONG.TBLSTUDENTINFO (SEQ,NAME,REGISTRATIONNUM,PHONENUM,REGISTRATIONDATE,STATE) values (73,'히히','0000000','000-0000-0001',to_date('19/03/02','RR/MM/DD'),0);
REM INSERTING into HONG.TBLSUBJECT
SET DEFINE OFF;
Insert into HONG.TBLSUBJECT (SEQ,STARTDATE,ENDDATE,ATTENDANCEPERCENT,WRITTENPERCENT,PRACTICALPERCENT,SUBJECTNAMESEQ,COURSESEQ,TEXTBOOKSEQ,STATE) values (1,to_date('18/07/02','RR/MM/DD'),to_date('18/08/10','RR/MM/DD'),20,40,40,1,1,1,1);
Insert into HONG.TBLSUBJECT (SEQ,STARTDATE,ENDDATE,ATTENDANCEPERCENT,WRITTENPERCENT,PRACTICALPERCENT,SUBJECTNAMESEQ,COURSESEQ,TEXTBOOKSEQ,STATE) values (2,to_date('18/08/13','RR/MM/DD'),to_date('18/08/31','RR/MM/DD'),20,40,40,2,1,6,1);
Insert into HONG.TBLSUBJECT (SEQ,STARTDATE,ENDDATE,ATTENDANCEPERCENT,WRITTENPERCENT,PRACTICALPERCENT,SUBJECTNAMESEQ,COURSESEQ,TEXTBOOKSEQ,STATE) values (3,to_date('18/09/03','RR/MM/DD'),to_date('18/09/21','RR/MM/DD'),20,40,40,11,1,4,1);
Insert into HONG.TBLSUBJECT (SEQ,STARTDATE,ENDDATE,ATTENDANCEPERCENT,WRITTENPERCENT,PRACTICALPERCENT,SUBJECTNAMESEQ,COURSESEQ,TEXTBOOKSEQ,STATE) values (4,to_date('18/09/24','RR/MM/DD'),to_date('18/10/12','RR/MM/DD'),20,40,40,20,1,23,1);
Insert into HONG.TBLSUBJECT (SEQ,STARTDATE,ENDDATE,ATTENDANCEPERCENT,WRITTENPERCENT,PRACTICALPERCENT,SUBJECTNAMESEQ,COURSESEQ,TEXTBOOKSEQ,STATE) values (5,to_date('18/10/15','RR/MM/DD'),to_date('18/11/02','RR/MM/DD'),20,40,40,21,1,21,1);
Insert into HONG.TBLSUBJECT (SEQ,STARTDATE,ENDDATE,ATTENDANCEPERCENT,WRITTENPERCENT,PRACTICALPERCENT,SUBJECTNAMESEQ,COURSESEQ,TEXTBOOKSEQ,STATE) values (6,to_date('18/11/05','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),20,40,40,22,1,14,1);
Insert into HONG.TBLSUBJECT (SEQ,STARTDATE,ENDDATE,ATTENDANCEPERCENT,WRITTENPERCENT,PRACTICALPERCENT,SUBJECTNAMESEQ,COURSESEQ,TEXTBOOKSEQ,STATE) values (7,to_date('19/01/28','RR/MM/DD'),to_date('19/03/22','RR/MM/DD'),20,40,40,1,2,1,1);
Insert into HONG.TBLSUBJECT (SEQ,STARTDATE,ENDDATE,ATTENDANCEPERCENT,WRITTENPERCENT,PRACTICALPERCENT,SUBJECTNAMESEQ,COURSESEQ,TEXTBOOKSEQ,STATE) values (8,to_date('19/03/25','RR/MM/DD'),to_date('19/04/19','RR/MM/DD'),null,null,null,2,2,6,1);
Insert into HONG.TBLSUBJECT (SEQ,STARTDATE,ENDDATE,ATTENDANCEPERCENT,WRITTENPERCENT,PRACTICALPERCENT,SUBJECTNAMESEQ,COURSESEQ,TEXTBOOKSEQ,STATE) values (9,to_date('19/04/22','RR/MM/DD'),to_date('19/05/10','RR/MM/DD'),null,null,null,3,2,9,1);
Insert into HONG.TBLSUBJECT (SEQ,STARTDATE,ENDDATE,ATTENDANCEPERCENT,WRITTENPERCENT,PRACTICALPERCENT,SUBJECTNAMESEQ,COURSESEQ,TEXTBOOKSEQ,STATE) values (10,to_date('19/05/13','RR/MM/DD'),to_date('19/05/24','RR/MM/DD'),null,null,null,10,2,1,1);
Insert into HONG.TBLSUBJECT (SEQ,STARTDATE,ENDDATE,ATTENDANCEPERCENT,WRITTENPERCENT,PRACTICALPERCENT,SUBJECTNAMESEQ,COURSESEQ,TEXTBOOKSEQ,STATE) values (11,to_date('19/05/27','RR/MM/DD'),to_date('19/06/07','RR/MM/DD'),null,null,null,4,2,11,1);
Insert into HONG.TBLSUBJECT (SEQ,STARTDATE,ENDDATE,ATTENDANCEPERCENT,WRITTENPERCENT,PRACTICALPERCENT,SUBJECTNAMESEQ,COURSESEQ,TEXTBOOKSEQ,STATE) values (12,to_date('19/06/10','RR/MM/DD'),to_date('19/07/21','RR/MM/DD'),null,null,null,5,2,26,1);
Insert into HONG.TBLSUBJECT (SEQ,STARTDATE,ENDDATE,ATTENDANCEPERCENT,WRITTENPERCENT,PRACTICALPERCENT,SUBJECTNAMESEQ,COURSESEQ,TEXTBOOKSEQ,STATE) values (13,to_date('19/06/24','RR/MM/DD'),to_date('19/07/05','RR/MM/DD'),null,null,null,6,2,13,1);
Insert into HONG.TBLSUBJECT (SEQ,STARTDATE,ENDDATE,ATTENDANCEPERCENT,WRITTENPERCENT,PRACTICALPERCENT,SUBJECTNAMESEQ,COURSESEQ,TEXTBOOKSEQ,STATE) values (14,to_date('19/07/08','RR/MM/DD'),to_date('19/07/19','RR/MM/DD'),null,null,null,7,2,11,1);
Insert into HONG.TBLSUBJECT (SEQ,STARTDATE,ENDDATE,ATTENDANCEPERCENT,WRITTENPERCENT,PRACTICALPERCENT,SUBJECTNAMESEQ,COURSESEQ,TEXTBOOKSEQ,STATE) values (15,to_date('19/07/22','RR/MM/DD'),to_date('19/08/02','RR/MM/DD'),null,null,null,8,2,24,1);
Insert into HONG.TBLSUBJECT (SEQ,STARTDATE,ENDDATE,ATTENDANCEPERCENT,WRITTENPERCENT,PRACTICALPERCENT,SUBJECTNAMESEQ,COURSESEQ,TEXTBOOKSEQ,STATE) values (16,to_date('19/08/05','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),null,null,null,8,2,26,1);
Insert into HONG.TBLSUBJECT (SEQ,STARTDATE,ENDDATE,ATTENDANCEPERCENT,WRITTENPERCENT,PRACTICALPERCENT,SUBJECTNAMESEQ,COURSESEQ,TEXTBOOKSEQ,STATE) values (17,to_date('19/04/29','RR/MM/DD'),to_date('19/05/24','RR/MM/DD'),null,null,null,2,3,6,1);
Insert into HONG.TBLSUBJECT (SEQ,STARTDATE,ENDDATE,ATTENDANCEPERCENT,WRITTENPERCENT,PRACTICALPERCENT,SUBJECTNAMESEQ,COURSESEQ,TEXTBOOKSEQ,STATE) values (18,to_date('19/05/27','RR/MM/DD'),to_date('19/06/07','RR/MM/DD'),null,null,null,1,3,9,1);
Insert into HONG.TBLSUBJECT (SEQ,STARTDATE,ENDDATE,ATTENDANCEPERCENT,WRITTENPERCENT,PRACTICALPERCENT,SUBJECTNAMESEQ,COURSESEQ,TEXTBOOKSEQ,STATE) values (19,to_date('19/06/10','RR/MM/DD'),to_date('19/06/21','RR/MM/DD'),null,null,null,10,3,1,1);
Insert into HONG.TBLSUBJECT (SEQ,STARTDATE,ENDDATE,ATTENDANCEPERCENT,WRITTENPERCENT,PRACTICALPERCENT,SUBJECTNAMESEQ,COURSESEQ,TEXTBOOKSEQ,STATE) values (20,to_date('19/06/24','RR/MM/DD'),to_date('19/07/05','RR/MM/DD'),null,null,null,11,3,13,1);
Insert into HONG.TBLSUBJECT (SEQ,STARTDATE,ENDDATE,ATTENDANCEPERCENT,WRITTENPERCENT,PRACTICALPERCENT,SUBJECTNAMESEQ,COURSESEQ,TEXTBOOKSEQ,STATE) values (21,to_date('19/07/08','RR/MM/DD'),to_date('19/07/19','RR/MM/DD'),null,null,null,4,3,27,1);
Insert into HONG.TBLSUBJECT (SEQ,STARTDATE,ENDDATE,ATTENDANCEPERCENT,WRITTENPERCENT,PRACTICALPERCENT,SUBJECTNAMESEQ,COURSESEQ,TEXTBOOKSEQ,STATE) values (22,to_date('19/07/22','RR/MM/DD'),to_date('19/08/02','RR/MM/DD'),null,null,null,12,3,36,1);
Insert into HONG.TBLSUBJECT (SEQ,STARTDATE,ENDDATE,ATTENDANCEPERCENT,WRITTENPERCENT,PRACTICALPERCENT,SUBJECTNAMESEQ,COURSESEQ,TEXTBOOKSEQ,STATE) values (23,to_date('19/08/05','RR/MM/DD'),to_date('19/08/16','RR/MM/DD'),null,null,null,13,3,27,1);
Insert into HONG.TBLSUBJECT (SEQ,STARTDATE,ENDDATE,ATTENDANCEPERCENT,WRITTENPERCENT,PRACTICALPERCENT,SUBJECTNAMESEQ,COURSESEQ,TEXTBOOKSEQ,STATE) values (24,to_date('19/08/19','RR/MM/DD'),to_date('19/08/30','RR/MM/DD'),null,null,null,14,3,29,1);
Insert into HONG.TBLSUBJECT (SEQ,STARTDATE,ENDDATE,ATTENDANCEPERCENT,WRITTENPERCENT,PRACTICALPERCENT,SUBJECTNAMESEQ,COURSESEQ,TEXTBOOKSEQ,STATE) values (25,to_date('19/09/02','RR/MM/DD'),to_date('19/09/17','RR/MM/DD'),null,null,null,15,3,39,1);
Insert into HONG.TBLSUBJECT (SEQ,STARTDATE,ENDDATE,ATTENDANCEPERCENT,WRITTENPERCENT,PRACTICALPERCENT,SUBJECTNAMESEQ,COURSESEQ,TEXTBOOKSEQ,STATE) values (26,to_date('19/09/18','RR/MM/DD'),to_date('19/09/27','RR/MM/DD'),null,null,null,16,3,38,1);
Insert into HONG.TBLSUBJECT (SEQ,STARTDATE,ENDDATE,ATTENDANCEPERCENT,WRITTENPERCENT,PRACTICALPERCENT,SUBJECTNAMESEQ,COURSESEQ,TEXTBOOKSEQ,STATE) values (27,to_date('19/09/30','RR/MM/DD'),to_date('19/10/11','RR/MM/DD'),null,null,null,58,3,38,1);
Insert into HONG.TBLSUBJECT (SEQ,STARTDATE,ENDDATE,ATTENDANCEPERCENT,WRITTENPERCENT,PRACTICALPERCENT,SUBJECTNAMESEQ,COURSESEQ,TEXTBOOKSEQ,STATE) values (28,to_date('19/10/14','RR/MM/DD'),to_date('19/10/25','RR/MM/DD'),null,null,null,17,3,27,1);
REM INSERTING into HONG.TBLSUBJECTGRADE
SET DEFINE OFF;
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (1,1,1,36,36,14);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (2,1,2,10,10,18);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (3,1,3,28,36,15);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (4,1,4,32,32,18);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (5,1,5,36,32,16);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (6,1,6,32,32,17);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (7,1,7,28,28,16);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (8,2,1,32,28,18);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (9,2,2,36,32,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (10,2,3,28,36,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (11,2,4,32,36,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (12,2,5,28,32,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (13,2,6,32,32,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (14,2,7,40,40,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (15,3,1,40,40,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (16,3,2,36,32,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (17,3,3,40,36,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (18,3,4,32,32,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (19,3,5,40,36,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (20,3,6,36,36,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (21,3,7,40,36,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (22,4,1,20,24,18);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (23,4,2,24,28,19);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (24,4,3,28,28,17);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (25,4,4,32,32,18);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (26,4,5,32,32,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (27,4,6,36,28,17);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (28,4,7,32,32,18);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (29,5,1,40,40,19);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (30,5,2,36,32,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (31,5,3,32,36,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (32,5,4,32,32,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (33,5,5,40,36,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (34,5,6,36,36,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (35,5,7,40,36,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (36,6,1,24,20,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (37,6,2,24,24,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (38,6,3,24,28,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (39,6,4,32,28,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (40,6,5,32,36,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (41,6,6,36,36,18);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (42,6,7,40,40,17);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (43,7,1,20,20,18);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (44,7,2,24,28,16);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (45,7,3,20,24,15);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (46,7,4,24,20,16);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (47,7,5,20,28,14);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (48,7,6,32,36,17);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (49,7,7,32,32,18);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (50,8,1,40,40,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (51,8,2,36,32,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (52,8,3,40,36,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (53,8,4,40,40,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (54,8,5,40,36,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (55,8,6,36,36,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (56,8,7,40,36,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (57,9,1,24,28,19);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (58,9,2,32,28,18);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (59,9,3,28,32,19);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (60,9,4,32,32,19);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (61,9,5,32,28,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (62,9,6,28,32,18);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (63,9,7,32,28,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (64,10,1,16,12,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (65,10,2,20,24,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (66,10,3,24,28,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (67,10,4,32,28,19);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (68,10,5,28,24,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (69,10,6,36,36,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (70,10,7,40,36,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (71,11,1,16,12,16);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (72,11,2,20,24,18);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (73,11,3,20,20,15);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (74,11,4,24,28,19);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (75,11,5,28,24,17);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (76,11,6,24,20,14);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (77,11,7,28,28,18);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (78,12,1,28,24,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (79,12,2,28,24,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (80,12,3,28,28,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (81,12,4,32,32,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (82,12,5,32,32,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (83,12,6,36,36,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (84,12,7,40,36,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (85,13,1,24,28,18);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (86,13,2,28,24,18);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (87,13,3,24,28,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (88,13,4,32,28,19);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (89,13,5,28,24,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (90,13,6,28,32,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (91,13,7,32,36,18);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (92,14,1,28,28,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (93,14,2,24,24,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (94,14,3,24,28,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (95,14,4,32,28,19);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (96,14,5,28,28,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (97,14,6,32,36,18);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (98,14,7,36,36,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (99,15,1,32,28,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (100,15,2,28,32,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (101,15,3,24,28,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (102,15,4,32,28,19);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (103,15,5,28,24,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (104,15,6,36,36,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (105,15,7,40,36,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (106,16,1,32,28,14);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (107,16,2,20,24,16);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (108,16,3,24,20,12);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (109,16,4,32,28,18);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (110,16,5,28,24,17);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (111,16,6,32,32,19);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (112,16,7,32,32,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (113,17,1,12,12,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (114,17,2,20,24,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (115,17,3,24,28,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (116,17,4,24,28,19);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (117,17,5,28,24,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (118,17,6,36,32,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (119,17,7,32,32,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (120,18,1,16,12,14);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (121,18,2,20,24,15);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (122,18,3,24,28,18);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (123,18,4,20,24,14);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (124,18,5,28,24,15);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (125,18,6,24,20,16);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (126,18,7,20,28,17);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (127,19,1,24,28,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (128,19,2,20,24,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (129,19,3,24,28,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (130,19,4,32,28,19);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (131,19,5,28,24,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (132,19,6,36,28,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (133,19,7,24,20,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (134,20,1,16,12,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (135,20,2,20,16,16);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (136,20,3,24,20,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (137,20,4,28,28,16);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (138,20,5,28,24,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (139,20,6,36,36,16);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (140,20,7,32,36,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (141,21,1,24,24,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (142,21,2,28,24,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (143,21,3,24,28,18);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (144,21,4,32,28,19);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (145,21,5,32,32,18);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (146,21,6,32,36,18);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (147,21,7,40,36,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (148,22,1,24,20,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (149,22,2,20,24,14);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (150,22,3,24,24,18);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (151,22,4,20,28,14);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (152,22,5,28,24,16);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (153,22,6,36,36,18);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (154,22,7,32,36,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (155,23,1,24,24,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (156,23,2,24,24,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (157,23,3,24,28,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (158,23,4,32,28,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (159,23,5,28,24,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (160,23,6,36,36,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (161,23,7,40,36,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (162,24,1,28,28,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (163,24,2,28,24,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (164,24,3,32,28,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (165,24,4,32,32,19);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (166,24,5,36,32,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (167,24,6,36,36,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (168,24,7,40,36,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (169,25,1,30,20,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (170,25,2,28,24,18);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (171,25,3,32,28,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (172,25,4,32,32,19);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (173,25,5,28,28,18);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (174,25,6,36,32,16);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (175,25,7,28,24,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (176,26,1,36,36,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (177,26,2,32,36,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (178,26,3,36,40,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (179,26,4,32,36,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (180,26,5,36,40,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (181,26,6,40,36,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (182,26,7,40,36,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (183,27,1,20,16,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (184,27,2,20,24,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (185,27,3,24,28,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (186,27,4,28,28,19);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (187,27,5,28,24,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (188,27,6,36,28,18);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (189,27,7,32,36,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (190,28,1,32,40,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (191,28,2,32,36,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (192,28,3,40,36,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (193,28,4,36,40,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (194,28,5,40,40,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (195,28,6,40,40,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (196,28,7,40,40,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (197,29,1,24,28,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (198,29,2,20,24,18);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (199,29,3,24,28,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (200,29,4,32,28,18);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (201,29,5,28,24,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (202,29,6,28,24,17);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (203,29,7,28,24,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (204,30,1,24,28,15);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (205,30,2,20,24,18);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (206,30,3,24,28,18);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (207,30,4,32,28,18);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (208,30,5,28,24,15);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (209,30,6,28,24,16);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (210,30,7,28,24,20);
Insert into HONG.TBLSUBJECTGRADE (SEQ,STUDENTSEQ,SUBJECTSEQ,WRITTEN,PRACTICAL,ATTENDANCE) values (211,31,1,100,50,10);
REM INSERTING into HONG.TBLSUBJECTNAME
SET DEFINE OFF;
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (1,'JAVA 프로그래밍','1',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (2,'데이터베이스','2',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (3,'JAVA 애플리케이션 구현','1',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (4,'애플리케이션 배포','3',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (5,'Front-end 웹 애플리케이션 구현','4',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (6,'Back-end 웹 애플리케이션 구현','5',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (7,'Full-stack Framework 구현','6',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (8,'반응형 웹 개발기법','7',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (9,'융합기반 웹표준 프로젝트','8',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (10,'애플리케이션 테스트 수행','3',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (11,'웹 프로그래밍','7',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (12,'Spring 개발','9',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (13,'Spring framework 통합구현','6',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (14,'제이쿼리 모바일','10',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (15,'코틀린 프로그래밍','11',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (16,'코틀린 안드로이드 프로그램 구현','11',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (17,'코틀린 활용 안드로이드 모바일 프로젝트 제작 ','11',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (18,'Spring 서버 기반의 지능형 웹과 앱 통합개발 및 구현','9',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (19,'웹개발 및 클라이언트 프로그래밍','7',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (20,'Full-stack 응용 프로젝트 제작','8',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (21,'웹 서버 구축 실무','7',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (22,'파이썬을 활용한 머신러닝 분석기술','12',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (23,'Server/client side 프로젝트','8',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (24,'Back-end 개발','5',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (25,'Framework','6',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (26,'Testing & Development','3',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (27,'Front-end 개발','4',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (28,'UI 설계 및 구현','13',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (29,'R Fundamentals Application','15',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (30,'화면 설계','13',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (31,'웹 어플리케이션','7',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (32,'웹 퍼블리싱','7',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (33,'구현 애플리케이션 테스트','16',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (34,'자바 프레임워크','1',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (35,'인공지능','17',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (36,'Javascript','18',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (37,'Python 프로그래밍','12',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (38,'네트워크 프로그래밍','19',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (39,'블록체인의 이해와 활용','20',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (40,'HTML, CSS, jQuery, Ajax','7',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (41,'Java JSP programming','21',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (42,'Big data 수집 및 저장, 기획과 응용','14',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (43,'실무 프로젝트','8',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (44,'응용SW 엔지니어링','22',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (45,'DB 엔지니어링','2',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (46,'시스템SW 엔지니어링','23',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (47,'NW 엔지니어링','19',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (48,'보안엔지니어링과 실무프로젝트','24',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (49,'파이썬을 활용한 딥러닝','25',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (50,'문제해결 알고리즘','26',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (51,'DBMS, SQL 활용 및 응용','2',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (52,'선형대수학, 통계학','27',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (53,'NoSQL(MongoDB)','2',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (54,'빅데이터 시각화(R, 파이썬)','14',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (55,'데이터 마이닝','2',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (56,'AI 알고리즘','26',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (57,'Tensorflow 기반 머신러닝, 딥러닝','25',1);
Insert into HONG.TBLSUBJECTNAME (SEQ,NAME,SUBJECTTYPESEQ,STATE) values (58,'지능형 빅데이터 서비스 실무프로젝트','8',1);
REM INSERTING into HONG.TBLSUBJECTTYPE
SET DEFINE OFF;
Insert into HONG.TBLSUBJECTTYPE (SEQ,NAME,STATE) values (1,'Java',1);
Insert into HONG.TBLSUBJECTTYPE (SEQ,NAME,STATE) values (2,'DB',1);
Insert into HONG.TBLSUBJECTTYPE (SEQ,NAME,STATE) values (3,'Test',1);
Insert into HONG.TBLSUBJECTTYPE (SEQ,NAME,STATE) values (4,'Front-end',1);
Insert into HONG.TBLSUBJECTTYPE (SEQ,NAME,STATE) values (5,'Back-end',1);
Insert into HONG.TBLSUBJECTTYPE (SEQ,NAME,STATE) values (6,'Framework',1);
Insert into HONG.TBLSUBJECTTYPE (SEQ,NAME,STATE) values (7,'Web',1);
Insert into HONG.TBLSUBJECTTYPE (SEQ,NAME,STATE) values (8,'Project',1);
Insert into HONG.TBLSUBJECTTYPE (SEQ,NAME,STATE) values (9,'Spring',1);
Insert into HONG.TBLSUBJECTTYPE (SEQ,NAME,STATE) values (10,'jQuery',1);
Insert into HONG.TBLSUBJECTTYPE (SEQ,NAME,STATE) values (11,'Kotlin',1);
Insert into HONG.TBLSUBJECTTYPE (SEQ,NAME,STATE) values (12,'Python',1);
Insert into HONG.TBLSUBJECTTYPE (SEQ,NAME,STATE) values (13,'UI',1);
Insert into HONG.TBLSUBJECTTYPE (SEQ,NAME,STATE) values (14,'Bigdata',1);
Insert into HONG.TBLSUBJECTTYPE (SEQ,NAME,STATE) values (15,'R',1);
Insert into HONG.TBLSUBJECTTYPE (SEQ,NAME,STATE) values (16,'App',1);
Insert into HONG.TBLSUBJECTTYPE (SEQ,NAME,STATE) values (17,'AI',1);
Insert into HONG.TBLSUBJECTTYPE (SEQ,NAME,STATE) values (18,'Javascript',1);
Insert into HONG.TBLSUBJECTTYPE (SEQ,NAME,STATE) values (19,'Network',1);
Insert into HONG.TBLSUBJECTTYPE (SEQ,NAME,STATE) values (20,'Blockchain',1);
Insert into HONG.TBLSUBJECTTYPE (SEQ,NAME,STATE) values (21,'Java JSP',1);
Insert into HONG.TBLSUBJECTTYPE (SEQ,NAME,STATE) values (22,'응용 SW',1);
Insert into HONG.TBLSUBJECTTYPE (SEQ,NAME,STATE) values (23,'시스템 SW',1);
Insert into HONG.TBLSUBJECTTYPE (SEQ,NAME,STATE) values (24,'보안',1);
Insert into HONG.TBLSUBJECTTYPE (SEQ,NAME,STATE) values (25,'Deep learning',1);
Insert into HONG.TBLSUBJECTTYPE (SEQ,NAME,STATE) values (26,'Algorithm',1);
Insert into HONG.TBLSUBJECTTYPE (SEQ,NAME,STATE) values (27,'Data science',1);
REM INSERTING into HONG.TBLTEXTBOOK
SET DEFINE OFF;
Insert into HONG.TBLTEXTBOOK (SEQ,PUBLISHERSEQ,NAME,STATE) values (1,1,'Java의 정석',1);
Insert into HONG.TBLTEXTBOOK (SEQ,PUBLISHERSEQ,NAME,STATE) values (2,3,'최범균의 JSP 2.3 웹 프로그래밍',1);
Insert into HONG.TBLTEXTBOOK (SEQ,PUBLISHERSEQ,NAME,STATE) values (3,4,'모던 웹을 위한 JavaScript_Jquery 입문',1);
Insert into HONG.TBLTEXTBOOK (SEQ,PUBLISHERSEQ,NAME,STATE) values (4,3,'웹 개발자를 위한 Spring 4.0 프로그래밍',1);
Insert into HONG.TBLTEXTBOOK (SEQ,PUBLISHERSEQ,NAME,STATE) values (5,5,'시작하세요! 하둡 프로그래밍',1);
Insert into HONG.TBLTEXTBOOK (SEQ,PUBLISHERSEQ,NAME,STATE) values (6,7,'다양한 예제로 쉽게 배우는 오라클 SQL과 PL/SQL + 데이터 모델링 입문',1);
Insert into HONG.TBLTEXTBOOK (SEQ,PUBLISHERSEQ,NAME,STATE) values (7,4,'인터랙티브 웹디자인북',1);
Insert into HONG.TBLTEXTBOOK (SEQ,PUBLISHERSEQ,NAME,STATE) values (8,8,'뇌를 자극하는 파이썬 3',1);
Insert into HONG.TBLTEXTBOOK (SEQ,PUBLISHERSEQ,NAME,STATE) values (9,4,'이것이 자바다',1);
Insert into HONG.TBLTEXTBOOK (SEQ,PUBLISHERSEQ,NAME,STATE) values (10,4,'SQL 레벨업 : DB 성능 최적화를 위한 SQL 실전 가이드',1);
Insert into HONG.TBLTEXTBOOK (SEQ,PUBLISHERSEQ,NAME,STATE) values (11,9,'Do it ! 프런트엔드 웹 디자인 입문',1);
Insert into HONG.TBLTEXTBOOK (SEQ,PUBLISHERSEQ,NAME,STATE) values (12,9,'Do it! 점프 투 파이썬',1);
Insert into HONG.TBLTEXTBOOK (SEQ,PUBLISHERSEQ,NAME,STATE) values (13,10,'코드로 배우는 스프링 웹 프로젝트(개정판)',1);
Insert into HONG.TBLTEXTBOOK (SEQ,PUBLISHERSEQ,NAME,STATE) values (14,4,'블록체인 프로그래밍',1);
Insert into HONG.TBLTEXTBOOK (SEQ,PUBLISHERSEQ,NAME,STATE) values (15,11,'빅데이터 개론',1);
Insert into HONG.TBLTEXTBOOK (SEQ,PUBLISHERSEQ,NAME,STATE) values (16,6,'오라클 SQL과 PL/SQL을 다루는 기술',1);
Insert into HONG.TBLTEXTBOOK (SEQ,PUBLISHERSEQ,NAME,STATE) values (17,6,'모두의 딥러닝',1);
Insert into HONG.TBLTEXTBOOK (SEQ,PUBLISHERSEQ,NAME,STATE) values (18,9,'Do it! 쉽게 배우는 R 데이터 분석',1);
Insert into HONG.TBLTEXTBOOK (SEQ,PUBLISHERSEQ,NAME,STATE) values (19,4,'파이썬 웹 프로그래밍',1);
Insert into HONG.TBLTEXTBOOK (SEQ,PUBLISHERSEQ,NAME,STATE) values (20,4,'하둡 완벽 가이드',1);
Insert into HONG.TBLTEXTBOOK (SEQ,PUBLISHERSEQ,NAME,STATE) values (21,4,'텐서플로를 활용한 머신러닝',1);
Insert into HONG.TBLTEXTBOOK (SEQ,PUBLISHERSEQ,NAME,STATE) values (22,12,'R을 활용한 기초 환경자료 분석 및 시각화',1);
Insert into HONG.TBLTEXTBOOK (SEQ,PUBLISHERSEQ,NAME,STATE) values (23,9,'Do it! HTML5- CSS3 웹 표준의 정석(2017)',1);
Insert into HONG.TBLTEXTBOOK (SEQ,PUBLISHERSEQ,NAME,STATE) values (24,4,'네트워크 보안 시스템 구축과 보안 관제',1);
Insert into HONG.TBLTEXTBOOK (SEQ,PUBLISHERSEQ,NAME,STATE) values (25,13,'알고리즘과 자료구조(자바 + 파이썬)',1);
Insert into HONG.TBLTEXTBOOK (SEQ,PUBLISHERSEQ,NAME,STATE) values (26,14,'자바스크립트 프론트엔드 프로젝트 가이드',1);
Insert into HONG.TBLTEXTBOOK (SEQ,PUBLISHERSEQ,NAME,STATE) values (27,4,'스프링5 레시피',1);
Insert into HONG.TBLTEXTBOOK (SEQ,PUBLISHERSEQ,NAME,STATE) values (28,5,'파이썬으로 배우는 알고리즘 트레이딩',1);
Insert into HONG.TBLTEXTBOOK (SEQ,PUBLISHERSEQ,NAME,STATE) values (29,15,'자바스크립트+jQuery',1);
Insert into HONG.TBLTEXTBOOK (SEQ,PUBLISHERSEQ,NAME,STATE) values (30,4,'딥러닝의 정석',1);
Insert into HONG.TBLTEXTBOOK (SEQ,PUBLISHERSEQ,NAME,STATE) values (31,2,'한번에 이해되는 Oracle & PL/SQL',1);
Insert into HONG.TBLTEXTBOOK (SEQ,PUBLISHERSEQ,NAME,STATE) values (32,6,'R을 이용한 데이터 처리 & 분석실무',1);
Insert into HONG.TBLTEXTBOOK (SEQ,PUBLISHERSEQ,NAME,STATE) values (33,16,'핵심문법과 예제로 배우는 코틀린',1);
Insert into HONG.TBLTEXTBOOK (SEQ,PUBLISHERSEQ,NAME,STATE) values (34,4,'풀스택 개발자를 위한 MEAN 스택 입문',1);
Insert into HONG.TBLTEXTBOOK (SEQ,PUBLISHERSEQ,NAME,STATE) values (35,6,'자바 웹을 다루는 기술',1);
Insert into HONG.TBLTEXTBOOK (SEQ,PUBLISHERSEQ,NAME,STATE) values (36,10,'코드로 배우는 스프링 웹 프로젝트',1);
Insert into HONG.TBLTEXTBOOK (SEQ,PUBLISHERSEQ,NAME,STATE) values (38,18,'코틀린을 이용한 안드로이드 개발',1);
Insert into HONG.TBLTEXTBOOK (SEQ,PUBLISHERSEQ,NAME,STATE) values (39,19,'코틀린 프로그래밍',1);
Insert into HONG.TBLTEXTBOOK (SEQ,PUBLISHERSEQ,NAME,STATE) values (40,4,'자바로 배우는 핵심 자료구조와 알고리즘',1);
Insert into HONG.TBLTEXTBOOK (SEQ,PUBLISHERSEQ,NAME,STATE) values (37,5,'파이썬 머신러닝 완벽 가이드',1);
REM INSERTING into HONG.TBLTUTORING
SET DEFINE OFF;
REM INSERTING into HONG.TBLWARNING
SET DEFINE OFF;
REM INSERTING into HONG.TBLVWQUIZLIST
SET DEFINE OFF;
Insert into HONG.TBLVWQUIZLIST (VSUBJECTNAME,VQUIZNUM,VQUIZCONTENTS,VQUIZANSWER) values ('웹 프로그래밍',1,'가용성, 비용 수준, (  )은 데이터베이스 요구사항에 따라 하드웨어와 운영체제에 적합한 일반적인 DBMS를 선정하는 기준이다.','지속적인 기술 지원');
Insert into HONG.TBLVWQUIZLIST (VSUBJECTNAME,VQUIZNUM,VQUIZCONTENTS,VQUIZANSWER) values ('웹 프로그래밍',2,'( )의 크기는 데이터 처리의 성능에 영향을 미칠 수 있고, 자료처리를 위한 메모리 용향을 확보하기 위한 하드디스크의 저장 장치이다.','스왑');
Insert into HONG.TBLVWQUIZLIST (VSUBJECTNAME,VQUIZNUM,VQUIZCONTENTS,VQUIZANSWER) values ('웹 프로그래밍',3,'( )는 이메일을 보내기위해 이용되는 프로토콜.사용하는 TCP포트번호는 25번이다. 상대서버를 지시하기 위해 DNS의 MX레코드가 사용됨.','SMTP');
Insert into HONG.TBLVWQUIZLIST (VSUBJECTNAME,VQUIZNUM,VQUIZCONTENTS,VQUIZANSWER) values ('웹 프로그래밍',4,'( )는 웹 애플리케이션을 수행하는 미들웨어로서, 웹서버와 JSP/Servlet 애플리케이션 수행을 위한 엔진으로 구성된다.',' WAS(Web Application Server)');
Insert into HONG.TBLVWQUIZLIST (VSUBJECTNAME,VQUIZNUM,VQUIZCONTENTS,VQUIZANSWER) values ('웹 프로그래밍',5,'( )는 개발자가 작성한 코드에 대한 빌드 및 배포, 그리고 라이브러리에 대한 의존성 관리에 사용하는 도구로 Ant, Maven 등이 있다.','빌드 도구');
Insert into HONG.TBLVWQUIZLIST (VSUBJECTNAME,VQUIZNUM,VQUIZCONTENTS,VQUIZANSWER) values ('웹 프로그래밍',6,'DBMS(Data Base Management System)는 서로 관련되는 데이터들을 일정한 체계와 순서로 모아 놓은 데이터의 집합을 의미한다.','X');
Insert into HONG.TBLVWQUIZLIST (VSUBJECTNAME,VQUIZNUM,VQUIZCONTENTS,VQUIZANSWER) values ('웹 프로그래밍',7,'구현도구는 코드의 작성 및 편집, 디버깅 등과 같은 다양한 작업이 가능하며 Eclipse, NetBeans등 소프트웨어들이 사용되고 있다.','X');
Insert into HONG.TBLVWQUIZLIST (VSUBJECTNAME,VQUIZNUM,VQUIZCONTENTS,VQUIZANSWER) values ('웹 프로그래밍',8,'네트워크 프로토콜에 NNTP는 인터넷에 연결된 컴퓨터에서 프로그램 간에 안정적으로,순서대로,에러없이 교환할수있게 한다','X');
Insert into HONG.TBLVWQUIZLIST (VSUBJECTNAME,VQUIZNUM,VQUIZCONTENTS,VQUIZANSWER) values ('웹 프로그래밍',9,'네트워크 소켓은 네트워크 통신을 위한 프로그램들은 소켓을 생성하고, 이 소켓을 통해서 서로 데이터를 교환한다.','O');
Insert into HONG.TBLVWQUIZLIST (VSUBJECTNAME,VQUIZNUM,VQUIZCONTENTS,VQUIZANSWER) values ('웹 프로그래밍',10,'개발환경구축을 위해서는 해당 프로젝트의 목적 및 구축 설계에 대한 명확한 이해가 필요하다','O');
REM INSERTING into HONG.TBLVWSTUDENTINFO
SET DEFINE OFF;
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('신재경','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('차성양','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('건소경','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('신희용','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('이진소','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('문행창','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('차윤연','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('문장소','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('신성규','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('오소경','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('홍성준','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('건원양','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('하재준','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('문소규','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('신장준','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('우장존','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('이병준','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('왕소경','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('오병규','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('우윤준','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('왕성중','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('유종중','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('하종연','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('문윤하','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('문행존','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('이장중','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('유장창','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('차장무','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('하형무','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('왕행하','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('오종용','Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('오유존','Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('유종연','Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('문유중','Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('신성중','Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('홍병창','Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('홍형규','Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('최장무','Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('문희용','Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('신형준','Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('우성용','Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('문윤히','Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('문유수','Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('건윤수','Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('최병창','Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('왕희무','Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('류원연','Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('홍원용','Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('차원경','Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('야호호','Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('왕재하','Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('김행중','Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('차윤준','Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('박진양','Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('신희존','Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('차신연','Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('유병존','Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('박성창','Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('유성수','Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('문병규','Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),1);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('류소준','Java기반의 스마트 웹 앱콘텐츠 양성과정',to_date('19/04/29','RR/MM/DD'),to_date('19/10/25','RR/MM/DD'),4);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('이원소','Java기반의 스마트 웹 앱콘텐츠 양성과정',to_date('19/04/29','RR/MM/DD'),to_date('19/10/25','RR/MM/DD'),4);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('홍유규','Java기반의 스마트 웹 앱콘텐츠 양성과정',to_date('19/04/29','RR/MM/DD'),to_date('19/10/25','RR/MM/DD'),4);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('박행소','Java기반의 스마트 웹 앱콘텐츠 양성과정',to_date('19/04/29','RR/MM/DD'),to_date('19/10/25','RR/MM/DD'),4);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('하행수','Java기반의 스마트 웹 앱콘텐츠 양성과정',to_date('19/04/29','RR/MM/DD'),to_date('19/10/25','RR/MM/DD'),4);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('박종준','Java기반의 스마트 웹 앱콘텐츠 양성과정',to_date('19/04/29','RR/MM/DD'),to_date('19/10/25','RR/MM/DD'),4);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('우소양','Java기반의 스마트 웹 앱콘텐츠 양성과정',to_date('19/04/29','RR/MM/DD'),to_date('19/10/25','RR/MM/DD'),4);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('최종무','Java기반의 스마트 웹 앱콘텐츠 양성과정',to_date('19/04/29','RR/MM/DD'),to_date('19/10/25','RR/MM/DD'),4);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('우희준','Java기반의 스마트 웹 앱콘텐츠 양성과정',to_date('19/04/29','RR/MM/DD'),to_date('19/10/25','RR/MM/DD'),4);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('차희존','Java기반의 스마트 웹 앱콘텐츠 양성과정',to_date('19/04/29','RR/MM/DD'),to_date('19/10/25','RR/MM/DD'),4);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('하희소','Java기반의 스마트 웹 앱콘텐츠 양성과정',to_date('19/04/29','RR/MM/DD'),to_date('19/10/25','RR/MM/DD'),4);
Insert into HONG.TBLVWSTUDENTINFO (VSTUDENTNAME,VCOURSENAME,VCOURSESTARTDATE,VCOURSEENDDATE,VCLASSROOM) values ('히히','Java기반의 스마트 웹 앱콘텐츠 양성과정',to_date('19/04/29','RR/MM/DD'),to_date('19/10/25','RR/MM/DD'),4);
REM INSERTING into HONG.VWATTENDANCE
SET DEFINE OFF;
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (1,'2018-08-13','2018-08-13 08:58:28','2018-08-13 18:11:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (1,'2018-08-14','2018-08-14 08:47:32','2018-08-14 18:05:31',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (1,'2018-08-16','2018-08-16 08:54:20','2018-08-16 18:12:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (1,'2018-08-17','2018-08-17 08:56:10','2018-08-17 18:07:12',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (1,'2018-08-20','2018-08-20 08:51:15','2018-08-20 18:00:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (1,'2018-08-21','2018-08-21 08:41:37','2018-08-21 18:05:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (1,'2018-08-22','2018-08-22 08:54:07','2018-08-22 18:07:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (1,'2018-08-23','2018-08-23 08:50:00','2018-08-23 18:05:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (1,'2018-08-24','2018-08-24 08:59:10','2018-08-24 18:23:00',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (1,'2018-08-27','2018-08-27 08:51:12','2018-08-27 18:23:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (1,'2018-08-28','2018-08-28 09:57:40','2018-08-28 16:23:11',0,0,0,1,0,0,0,0,1,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (1,'2018-08-29','2018-08-29 08:45:40','2018-08-29 18:32:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (1,'2018-08-30','2018-08-30 08:34:40','2018-08-30 18:33:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (2,'2018-08-13','2018-08-13 08:58:28','2018-08-13 18:11:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (2,'2018-08-14','2018-08-14 08:47:32','2018-08-14 18:05:31',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (2,'2018-08-16','2018-08-16 08:54:20','2018-08-16 18:12:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (2,'2018-08-17','2018-08-17 08:56:10','2018-08-17 18:07:12',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (2,'2018-08-20','2018-08-20 08:51:15','2018-08-20 18:00:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (2,'2018-08-21','2018-08-21 08:41:37','2018-08-21 18:05:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (2,'2018-08-22','2018-08-22 08:54:07','2018-08-22 18:07:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (2,'2018-08-23','2018-08-23 08:50:00','2018-08-23 18:05:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (2,'2018-08-24','2018-08-24 08:59:10','2018-08-24 18:23:00',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (2,'2018-08-27','2018-08-27 08:51:12','2018-08-27 18:23:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (2,'2018-08-28','2018-08-28 09:57:40','2018-08-28 16:23:11',0,0,0,1,0,0,0,0,1,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (2,'2018-08-29','2018-08-29 08:45:40','2018-08-29 18:32:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (2,'2018-08-30','2018-08-30 08:34:40','2018-08-30 18:33:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (3,'2018-08-13','2018-08-13 08:58:28','2018-08-13 18:11:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (3,'2018-08-14','2018-08-14 08:47:32','2018-08-14 18:05:31',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (3,'2018-08-16','2018-08-16 08:54:20','2018-08-16 18:12:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (3,'2018-08-17','2018-08-17 08:56:10','2018-08-17 18:07:12',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (3,'2018-08-20','2018-08-20 08:51:15','2018-08-20 18:00:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (3,'2018-08-21','2018-08-21 08:41:37','2018-08-21 18:05:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (3,'2018-08-22','2018-08-22 08:54:07','2018-08-22 18:07:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (3,'2018-08-23','2018-08-23 08:50:00','2018-08-23 18:05:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (3,'2018-08-24','2018-08-24 08:59:10','2018-08-24 18:23:00',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (3,'2018-08-27','2018-08-27 08:51:12','2018-08-27 18:23:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (3,'2018-08-28','2018-08-28 09:57:40','2018-08-28 16:23:11',0,0,0,1,0,0,0,0,1,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (3,'2018-08-29','2018-08-29 08:45:40','2018-08-29 18:32:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (3,'2018-08-30','2018-08-30 08:34:40','2018-08-30 18:33:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (4,'2018-08-13','2018-08-13 08:58:28','2018-08-13 18:11:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (4,'2018-08-14','2018-08-14 08:47:32','2018-08-14 18:05:31',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (4,'2018-08-16','2018-08-16 08:54:20','2018-08-16 18:12:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (4,'2018-08-17','2018-08-17 08:56:10','2018-08-17 18:07:12',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (4,'2018-08-20','2018-08-20 08:51:15','2018-08-20 18:00:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (4,'2018-08-21','2018-08-21 08:41:37','2018-08-21 18:05:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (4,'2018-08-22','2018-08-22 08:54:07','2018-08-22 18:07:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (4,'2018-08-23','2018-08-23 08:50:00','2018-08-23 18:05:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (4,'2018-08-24','2018-08-24 08:59:10','2018-08-24 18:23:00',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (4,'2018-08-27','2018-08-27 08:51:12','2018-08-27 18:23:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (4,'2018-08-28','2018-08-28 09:57:40','2018-08-28 16:23:11',0,0,0,1,0,0,0,0,1,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (4,'2018-08-29','2018-08-29 08:45:40','2018-08-29 18:32:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (4,'2018-08-30','2018-08-30 08:34:40','2018-08-30 18:33:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (5,'2018-08-13','2018-08-13 08:58:28','2018-08-13 18:11:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (5,'2018-08-14','2018-08-14 08:47:32','2018-08-14 18:05:31',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (5,'2018-08-16','2018-08-16 08:54:20','2018-08-16 18:12:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (5,'2018-08-17','2018-08-17 08:56:10','2018-08-17 18:07:12',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (5,'2018-08-20','2018-08-20 08:51:15','2018-08-20 18:00:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (5,'2018-08-21','2018-08-21 08:41:37','2018-08-21 18:05:11',1,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (5,'2018-08-22','2018-08-22 08:54:07','2018-08-22 18:07:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (5,'2018-08-23','2018-08-23 08:50:00','2018-08-23 18:05:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (5,'2018-08-24','2018-08-24 08:59:10','2018-08-24 18:23:00',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (5,'2018-08-27','2018-08-27 08:51:12','2018-08-27 18:23:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (5,'2018-08-28','2018-08-28 09:57:40','2018-08-28 16:23:11',0,0,0,1,0,0,0,0,1,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (5,'2018-08-29','2018-08-29 08:45:40','2018-08-29 18:32:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (5,'2018-08-30','2018-08-30 08:34:40','2018-08-30 18:33:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (6,'2018-08-13','2018-08-13 08:58:28','2018-08-13 18:11:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (6,'2018-08-14','2018-08-14 08:47:32','2018-08-14 18:05:31',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (6,'2018-08-16','2018-08-16 08:54:20','2018-08-16 18:12:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (6,'2018-08-17','2018-08-17 08:56:10','2018-08-17 18:07:12',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (6,'2018-08-20','2018-08-20 08:51:15','2018-08-20 18:00:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (6,'2018-08-21','2018-08-21 08:41:37','2018-08-21 18:05:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (6,'2018-08-22','2018-08-22 08:54:07','2018-08-22 18:07:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (6,'2018-08-23','2018-08-23 08:50:00','2018-08-23 18:05:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (6,'2018-08-24','2018-08-24 08:59:10','2018-08-24 18:23:00',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (6,'2018-08-27','2018-08-27 08:51:12','2018-08-27 18:23:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (6,'2018-08-28','2018-08-28 09:57:40','2018-08-28 16:23:11',0,0,0,1,0,0,0,0,1,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (6,'2018-08-29','2018-08-29 08:45:40','2018-08-29 18:32:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (6,'2018-08-30','2018-08-30 08:34:40','2018-08-30 18:33:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (7,'2018-08-13','2018-08-13 08:58:28','2018-08-13 18:11:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (7,'2018-08-14','2018-08-14 08:47:32','2018-08-14 18:05:31',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (7,'2018-08-16','2018-08-16 08:54:20','2018-08-16 18:12:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (7,'2018-08-17','2018-08-17 08:56:10','2018-08-17 18:07:12',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (7,'2018-08-20','2018-08-20 08:51:15','2018-08-20 18:00:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (7,'2018-08-21','2018-08-21 08:41:37','2018-08-21 18:05:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (7,'2018-08-22','2018-08-22 08:54:07','2018-08-22 18:07:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (7,'2018-08-23','2018-08-23 08:50:00','2018-08-23 18:05:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (7,'2018-08-24','2018-08-24 08:59:10','2018-08-24 18:23:00',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (7,'2018-08-27','2018-08-27 08:51:12','2018-08-27 18:23:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (7,'2018-08-28','2018-08-28 09:57:40','2018-08-28 16:23:11',0,0,0,1,0,0,0,0,1,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (7,'2018-08-29','2018-08-29 08:45:40','2018-08-29 18:32:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (7,'2018-08-30','2018-08-30 08:34:40','2018-08-30 18:33:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (8,'2018-08-13','2018-08-13 08:58:28','2018-08-13 18:11:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (8,'2018-08-14','2018-08-14 08:47:32','2018-08-14 18:05:31',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (8,'2018-08-16','2018-08-16 08:54:20','2018-08-16 18:12:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (8,'2018-08-17','2018-08-17 08:56:10','2018-08-17 18:07:12',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (8,'2018-08-20','2018-08-20 08:51:15','2018-08-20 18:00:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (8,'2018-08-21','2018-08-21 08:41:37','2018-08-21 18:05:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (8,'2018-08-22','2018-08-22 08:54:07','2018-08-22 18:07:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (8,'2018-08-23','2018-08-23 08:50:00','2018-08-23 18:05:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (8,'2018-08-24','2018-08-24 08:59:10','2018-08-24 18:23:00',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (8,'2018-08-27','2018-08-27 08:51:12','2018-08-27 18:23:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (8,'2018-08-28','2018-08-28 09:57:40','2018-08-28 16:23:11',0,0,0,1,0,0,0,0,1,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (8,'2018-08-29','2018-08-29 08:45:40','2018-08-29 18:32:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (8,'2018-08-30','2018-08-30 08:34:40','2018-08-30 18:33:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (9,'2018-08-13','2018-08-13 08:58:28','2018-08-13 18:11:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (9,'2018-08-14','2018-08-14 08:47:32','2018-08-14 18:05:31',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (9,'2018-08-16','2018-08-16 08:54:20','2018-08-16 18:12:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (9,'2018-08-17','2018-08-17 08:56:10','2018-08-17 18:07:12',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (9,'2018-08-20','2018-08-20 08:51:15','2018-08-20 18:00:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (9,'2018-08-21','2018-08-21 08:41:37','2018-08-21 18:05:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (9,'2018-08-22','2018-08-22 08:54:07','2018-08-22 18:07:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (9,'2018-08-23','2018-08-23 08:50:00','2018-08-23 18:05:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (9,'2018-08-24','2018-08-24 08:59:10','2018-08-24 18:23:00',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (9,'2018-08-27','2018-08-27 08:51:12','2018-08-27 18:23:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (9,'2018-08-28','2018-08-28 09:57:40','2018-08-28 16:23:11',0,0,0,1,0,0,0,0,1,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (9,'2018-08-29','2018-08-29 08:45:40','2018-08-29 18:32:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (9,'2018-08-30','2018-08-30 08:34:40','2018-08-30 18:33:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (10,'2018-08-13','2018-08-13 08:58:28','2018-08-13 18:11:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (10,'2018-08-14','2018-08-14 08:47:32','2018-08-14 18:05:31',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (10,'2018-08-16','2018-08-16 08:54:20','2018-08-16 18:12:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (10,'2018-08-17','2018-08-17 08:56:10','2018-08-17 18:07:12',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (10,'2018-08-20','2018-08-20 08:51:15','2018-08-20 18:00:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (10,'2018-08-21','2018-08-21 08:41:37','2018-08-21 18:05:11',1,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (10,'2018-08-22','2018-08-22 08:54:07','2018-08-22 18:07:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (10,'2018-08-23','2018-08-23 08:50:00','2018-08-23 18:05:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (10,'2018-08-24','2018-08-24 08:59:10','2018-08-24 18:23:00',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (10,'2018-08-27','2018-08-27 08:51:12','2018-08-27 18:23:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (10,'2018-08-28','2018-08-28 09:57:40','2018-08-28 16:23:11',0,0,0,1,0,0,0,0,1,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (10,'2018-08-29','2018-08-29 08:45:40','2018-08-29 18:32:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (10,'2018-08-30','2018-08-30 08:34:40','2018-08-30 18:33:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (11,'2018-08-13','2018-08-13 08:58:28','2018-08-13 18:11:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (11,'2018-08-14','2018-08-14 08:47:32','2018-08-14 18:05:31',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (11,'2018-08-16','2018-08-16 08:54:20','2018-08-16 18:12:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (11,'2018-08-17','2018-08-17 08:56:10','2018-08-17 18:07:12',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (11,'2018-08-20','2018-08-20 08:51:15','2018-08-20 18:00:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (11,'2018-08-21','2018-08-21 08:41:37','2018-08-21 18:05:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (11,'2018-08-22','2018-08-22 08:54:07','2018-08-22 18:07:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (11,'2018-08-23','2018-08-23 08:50:00','2018-08-23 18:05:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (11,'2018-08-24','2018-08-24 08:59:10','2018-08-24 18:23:00',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (11,'2018-08-27','2018-08-27 08:51:12','2018-08-27 18:23:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (11,'2018-08-28','2018-08-28 09:57:40','2018-08-28 16:23:11',0,0,0,1,0,0,0,0,1,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (11,'2018-08-29','2018-08-29 08:45:40','2018-08-29 18:32:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (11,'2018-08-30','2018-08-30 08:34:40','2018-08-30 18:33:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (12,'2018-08-13','2018-08-13 08:58:28','2018-08-13 18:11:30',0,1,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (12,'2018-08-14','2018-08-14 08:47:32','2018-08-14 18:05:31',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (12,'2018-08-16','2018-08-16 08:54:20','2018-08-16 18:12:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (12,'2018-08-17','2018-08-17 08:56:10','2018-08-17 18:07:12',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (12,'2018-08-20','2018-08-20 08:51:15','2018-08-20 18:00:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (12,'2018-08-21','2018-08-21 08:41:37','2018-08-21 18:05:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (12,'2018-08-22','2018-08-22 08:54:07','2018-08-22 18:07:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (12,'2018-08-23','2018-08-23 08:50:00','2018-08-23 18:05:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (12,'2018-08-24','2018-08-24 08:59:10','2018-08-24 18:23:00',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (12,'2018-08-27','2018-08-27 08:51:12','2018-08-27 18:23:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (12,'2018-08-28','2018-08-28 09:57:40','2018-08-28 16:23:11',0,0,0,1,0,0,0,0,1,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (12,'2018-08-29','2018-08-29 08:45:40','2018-08-29 18:32:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (12,'2018-08-30','2018-08-30 08:34:40','2018-08-30 18:33:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (13,'2018-08-13','2018-08-13 08:58:28','2018-08-13 18:11:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (13,'2018-08-14','2018-08-14 08:47:32','2018-08-14 18:05:31',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (13,'2018-08-16','2018-08-16 08:54:20','2018-08-16 18:12:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (13,'2018-08-17','2018-08-17 08:56:10','2018-08-17 18:07:12',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (13,'2018-08-20','2018-08-20 08:51:15','2018-08-20 18:00:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (13,'2018-08-21','2018-08-21 08:41:37','2018-08-21 18:05:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (13,'2018-08-22','2018-08-22 08:54:07','2018-08-22 18:07:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (13,'2018-08-23','2018-08-23 08:50:00','2018-08-23 18:05:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (13,'2018-08-24','2018-08-24 08:59:10','2018-08-24 18:23:00',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (13,'2018-08-27','2018-08-27 08:51:12','2018-08-27 18:23:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (13,'2018-08-28','2018-08-28 09:57:40','2018-08-28 16:23:11',0,0,0,1,0,0,0,0,1,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (13,'2018-08-29','2018-08-29 08:45:40','2018-08-29 18:32:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (13,'2018-08-30','2018-08-30 08:34:40','2018-08-30 18:33:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (14,'2018-08-13','2018-08-13 08:58:28','2018-08-13 18:11:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (14,'2018-08-14','2018-08-14 08:47:32','2018-08-14 18:05:31',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (14,'2018-08-16','2018-08-16 08:54:20','2018-08-16 18:12:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (14,'2018-08-17','2018-08-17 08:56:10','2018-08-17 18:07:12',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (14,'2018-08-20','2018-08-20 08:51:15','2018-08-20 18:00:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (14,'2018-08-21','2018-08-21 08:41:37','2018-08-21 18:05:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (14,'2018-08-22','2018-08-22 08:54:07','2018-08-22 18:07:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (14,'2018-08-23','2018-08-23 08:50:00','2018-08-23 18:05:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (14,'2018-08-24','2018-08-24 08:59:10','2018-08-24 18:23:00',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (14,'2018-08-27','2018-08-27 08:51:12','2018-08-27 18:23:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (14,'2018-08-28','2018-08-28 09:57:40','2018-08-28 16:23:11',0,0,0,1,0,0,0,0,1,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (14,'2018-08-29','2018-08-29 08:45:40','2018-08-29 18:32:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (14,'2018-08-30','2018-08-30 08:34:40','2018-08-30 18:33:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (15,'2018-08-13','2018-08-13 08:58:28','2018-08-13 18:11:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (15,'2018-08-14','2018-08-14 08:47:32','2018-08-14 18:05:31',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (15,'2018-08-16','2018-08-16 08:54:20','2018-08-16 18:12:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (15,'2018-08-17','2018-08-17 08:56:10','2018-08-17 18:07:12',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (15,'2018-08-20','2018-08-20 08:51:15','2018-08-20 18:00:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (15,'2018-08-21','2018-08-21 08:41:37','2018-08-21 18:05:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (15,'2018-08-22','2018-08-22 08:54:07','2018-08-22 18:07:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (15,'2018-08-23','2018-08-23 08:50:00','2018-08-23 18:05:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (15,'2018-08-24','2018-08-24 08:59:10','2018-08-24 18:23:00',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (15,'2018-08-27','2018-08-27 08:51:12','2018-08-27 18:23:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (15,'2018-08-28','2018-08-28 09:57:40','2018-08-28 16:23:11',0,0,0,1,0,0,0,0,1,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (15,'2018-08-29','2018-08-29 08:45:40','2018-08-29 18:32:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (15,'2018-08-30','2018-08-30 08:34:40','2018-08-30 18:33:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (16,'2018-08-13','2018-08-13 08:58:28','2018-08-13 18:11:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (16,'2018-08-14','2018-08-14 08:47:32','2018-08-14 18:05:31',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (16,'2018-08-16','2018-08-16 08:54:20','2018-08-16 18:12:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (16,'2018-08-17','2018-08-17 08:56:10','2018-08-17 18:07:12',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (16,'2018-08-20','2018-08-20 08:51:15','2018-08-20 18:00:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (16,'2018-08-21','2018-08-21 08:41:37','2018-08-21 18:05:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (16,'2018-08-22','2018-08-22 08:54:07','2018-08-22 18:07:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (16,'2018-08-23','2018-08-23 08:50:00','2018-08-23 18:05:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (16,'2018-08-24','2018-08-24 08:59:10','2018-08-24 18:23:00',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (16,'2018-08-27','2018-08-27 08:51:12','2018-08-27 18:23:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (16,'2018-08-28','2018-08-28 09:57:40','2018-08-28 16:23:11',0,0,0,1,0,0,0,0,1,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (16,'2018-08-29','2018-08-29 08:45:40','2018-08-29 18:32:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (16,'2018-08-30','2018-08-30 08:34:40','2018-08-30 18:33:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (17,'2018-08-13','2018-08-13 08:58:28','2018-08-13 18:11:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (17,'2018-08-14','2018-08-14 08:47:32','2018-08-14 18:05:31',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (17,'2018-08-16','2018-08-16 08:54:20','2018-08-16 18:12:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (17,'2018-08-17','2018-08-17 08:56:10','2018-08-17 18:07:12',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (17,'2018-08-20','2018-08-20 08:51:15','2018-08-20 18:00:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (17,'2018-08-21','2018-08-21 08:41:37','2018-08-21 18:05:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (17,'2018-08-22','2018-08-22 08:54:07','2018-08-22 18:07:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (17,'2018-08-23','2018-08-23 08:50:00','2018-08-23 18:05:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (17,'2018-08-24','2018-08-24 08:59:10','2018-08-24 18:23:00',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (17,'2018-08-27','2018-08-27 08:51:12','2018-08-27 18:23:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (17,'2018-08-28','2018-08-28 09:57:40','2018-08-28 16:23:11',0,0,0,1,0,0,0,0,1,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (17,'2018-08-29','2018-08-29 08:45:40','2018-08-29 18:32:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (17,'2018-08-30','2018-08-30 08:34:40','2018-08-30 18:33:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (18,'2018-08-13','2018-08-13 08:58:28','2018-08-13 18:11:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (18,'2018-08-14','2018-08-14 08:47:32','2018-08-14 18:05:31',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (18,'2018-08-16','2018-08-16 08:54:20','2018-08-16 18:12:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (18,'2018-08-17','2018-08-17 08:56:10','2018-08-17 18:07:12',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (18,'2018-08-20','2018-08-20 08:51:15','2018-08-20 18:00:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (18,'2018-08-21','2018-08-21 08:41:37','2018-08-21 18:05:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (18,'2018-08-22','2018-08-22 08:54:07','2018-08-22 18:07:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (18,'2018-08-23','2018-08-23 08:50:00','2018-08-23 18:05:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (18,'2018-08-24','2018-08-24 08:59:10','2018-08-24 18:23:00',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (18,'2018-08-27','2018-08-27 08:51:12','2018-08-27 18:23:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (18,'2018-08-28','2018-08-28 09:57:40','2018-08-28 16:23:11',0,0,0,1,0,0,0,0,1,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (18,'2018-08-29','2018-08-29 08:45:40','2018-08-29 18:32:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (18,'2018-08-30','2018-08-30 08:34:40','2018-08-30 18:33:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (19,'2018-08-13','2018-08-13 08:58:28','2018-08-13 18:11:30',1,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (19,'2018-08-14','2018-08-14 08:47:32','2018-08-14 18:05:31',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (19,'2018-08-17','2018-08-17 08:56:10','2018-08-17 18:07:12',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (19,'2018-08-20','2018-08-20 08:51:15','2018-08-20 18:00:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (19,'2018-08-21','2018-08-21 08:41:37','2018-08-21 18:05:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (19,'2018-08-22','2018-08-22 08:54:07','2018-08-22 18:07:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (19,'2018-08-23','2018-08-23 08:50:00','2018-08-23 18:05:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (19,'2018-08-24','2018-08-24 08:59:10','2018-08-24 18:23:00',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (19,'2018-08-27','2018-08-27 08:51:12','2018-08-27 18:23:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (19,'2018-08-28','2018-08-28 09:57:40','2018-08-28 16:23:11',0,0,0,1,0,0,0,0,1,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (19,'2018-08-29','2018-08-29 08:45:40','2018-08-29 18:32:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (19,'2018-08-30','2018-08-30 08:34:40','2018-08-30 18:33:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (20,'2018-08-13','2018-08-13 08:58:28','2018-08-13 18:11:30',1,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (20,'2018-08-14','2018-08-14 08:47:32','2018-08-14 18:05:31',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (20,'2018-08-17','2018-08-17 08:56:10','2018-08-17 18:07:12',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (20,'2018-08-20','2018-08-20 08:51:15','2018-08-20 18:00:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (20,'2018-08-21','2018-08-21 08:41:37','2018-08-21 18:05:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (20,'2018-08-22','2018-08-22 08:54:07','2018-08-22 18:07:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (20,'2018-08-23','2018-08-23 08:50:00','2018-08-23 18:05:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (20,'2018-08-24','2018-08-24 08:59:10','2018-08-24 18:23:00',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (20,'2018-08-27','2018-08-27 08:51:12','2018-08-27 18:23:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (20,'2018-08-28','2018-08-28 09:57:40','2018-08-28 16:23:11',0,0,0,1,0,0,0,0,1,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (20,'2018-08-29','2018-08-29 08:45:40','2018-08-29 18:32:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (20,'2018-08-30','2018-08-30 08:34:40','2018-08-30 18:33:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (21,'2018-08-13','2018-08-13 08:58:28','2018-08-13 18:11:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (21,'2018-08-14','2018-08-14 08:47:32','2018-08-14 18:05:31',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (21,'2018-08-17','2018-08-17 08:56:10','2018-08-17 18:07:12',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (21,'2018-08-21','2018-08-21 08:41:37','2018-08-21 18:05:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (21,'2018-08-22','2018-08-22 08:54:07','2018-08-22 18:07:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (21,'2018-08-23','2018-08-23 08:50:00','2018-08-23 18:05:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (21,'2018-08-24','2018-08-24 08:59:10','2018-08-24 18:23:00',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (21,'2018-08-28','2018-08-28 09:57:40','2018-08-28 16:23:11',0,0,0,1,0,0,0,0,1,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (21,'2018-08-29','2018-08-29 08:45:40','2018-08-29 18:32:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (21,'2018-08-30','2018-08-30 08:34:40','2018-08-30 18:33:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (22,'2018-08-13','2018-08-13 08:58:28','2018-08-13 18:11:30',1,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (22,'2018-08-14','2018-08-14 08:47:32','2018-08-14 18:05:31',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (22,'2018-08-17','2018-08-17 08:56:10','2018-08-17 18:07:12',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (22,'2018-08-20','2018-08-20 08:51:15','2018-08-20 18:00:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (22,'2018-08-21','2018-08-21 08:41:37','2018-08-21 18:05:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (22,'2018-08-22','2018-08-22 08:54:07','2018-08-22 18:07:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (22,'2018-08-23','2018-08-23 08:50:00','2018-08-23 18:05:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (22,'2018-08-24','2018-08-24 08:59:10','2018-08-24 18:23:00',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (22,'2018-08-27','2018-08-27 08:51:12','2018-08-27 18:23:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (22,'2018-08-28','2018-08-28 09:57:40','2018-08-28 16:23:11',0,0,0,1,0,0,0,0,1,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (22,'2018-08-29','2018-08-29 08:45:40','2018-08-29 18:32:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (22,'2018-08-30','2018-08-30 08:34:40','2018-08-30 18:33:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (23,'2018-08-13','2018-08-13 08:58:28','2018-08-13 18:11:30',1,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (23,'2018-08-14','2018-08-14 08:47:32','2018-08-14 18:05:31',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (23,'2018-08-17','2018-08-17 08:56:10','2018-08-17 18:07:12',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (23,'2018-08-20','2018-08-20 08:51:15','2018-08-20 18:00:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (23,'2018-08-21','2018-08-21 08:41:37','2018-08-21 18:05:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (23,'2018-08-22','2018-08-22 08:54:07','2018-08-22 18:07:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (23,'2018-08-23','2018-08-23 08:50:00','2018-08-23 18:05:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (23,'2018-08-24','2018-08-24 08:59:10','2018-08-24 18:23:00',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (23,'2018-08-27','2018-08-27 08:51:12','2018-08-27 18:23:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (23,'2018-08-28','2018-08-28 09:57:40','2018-08-28 16:23:11',0,0,0,1,0,0,0,0,1,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (23,'2018-08-29','2018-08-29 08:45:40','2018-08-29 18:32:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (23,'2018-08-30','2018-08-30 08:34:40','2018-08-30 18:33:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (24,'2018-08-13','2018-08-13 08:58:28','2018-08-13 18:11:30',1,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (24,'2018-08-14','2018-08-14 08:47:32','2018-08-14 18:05:31',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (24,'2018-08-17','2018-08-17 08:56:10','2018-08-17 18:07:12',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (24,'2018-08-20','2018-08-20 08:51:15','2018-08-20 18:00:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (24,'2018-08-21','2018-08-21 08:41:37','2018-08-21 18:05:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (24,'2018-08-22','2018-08-22 08:54:07','2018-08-22 18:07:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (24,'2018-08-23','2018-08-23 08:50:00','2018-08-23 18:05:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (24,'2018-08-24','2018-08-24 08:59:10','2018-08-24 18:23:00',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (24,'2018-08-27','2018-08-27 08:51:12','2018-08-27 18:23:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (24,'2018-08-28','2018-08-28 09:57:40','2018-08-28 16:23:11',0,0,0,1,0,0,0,0,1,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (24,'2018-08-29','2018-08-29 08:45:40','2018-08-29 18:32:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (24,'2018-08-30','2018-08-30 08:34:40','2018-08-30 18:33:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (25,'2018-08-13','2018-08-13 08:58:28','2018-08-13 18:11:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (25,'2018-08-14','2018-08-14 08:47:32','2018-08-14 18:05:31',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (25,'2018-08-16','2018-08-16 08:54:20','2018-08-16 18:12:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (25,'2018-08-17','2018-08-17 08:56:10','2018-08-17 18:07:12',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (25,'2018-08-20','2018-08-20 08:51:15','2018-08-20 18:00:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (25,'2018-08-21','2018-08-21 08:41:37','2018-08-21 18:05:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (25,'2018-08-22','2018-08-22 08:54:07','2018-08-22 18:07:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (25,'2018-08-23','2018-08-23 08:50:00','2018-08-23 18:05:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (25,'2018-08-24','2018-08-24 08:59:10','2018-08-24 18:23:00',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (25,'2018-08-27','2018-08-27 08:51:12','2018-08-27 18:23:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (25,'2018-08-28','2018-08-28 09:57:40','2018-08-28 16:23:11',0,0,0,1,0,0,0,0,1,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (25,'2018-08-29','2018-08-29 08:45:40','2018-08-29 18:32:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (25,'2018-08-30','2018-08-30 08:34:40','2018-08-30 18:33:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (26,'2018-08-13','2018-08-13 08:58:28','2018-08-13 18:11:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (26,'2018-08-14','2018-08-14 08:47:32','2018-08-14 18:05:31',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (26,'2018-08-16','2018-08-16 08:54:20','2018-08-16 18:12:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (26,'2018-08-17','2018-08-17 08:56:10','2018-08-17 18:07:12',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (26,'2018-08-20','2018-08-20 08:51:15','2018-08-20 18:00:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (26,'2018-08-21','2018-08-21 08:41:37','2018-08-21 18:05:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (26,'2018-08-22','2018-08-22 08:54:07','2018-08-22 18:07:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (26,'2018-08-23','2018-08-23 08:50:00','2018-08-23 18:05:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (26,'2018-08-24','2018-08-24 08:59:10','2018-08-24 18:23:00',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (26,'2018-08-27','2018-08-27 08:51:12','2018-08-27 18:23:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (26,'2018-08-28','2018-08-28 09:57:40','2018-08-28 16:23:11',0,0,0,1,0,0,0,0,1,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (26,'2018-08-29','2018-08-29 08:45:40','2018-08-29 18:32:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (26,'2018-08-30','2018-08-30 08:34:40','2018-08-30 18:33:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (27,'2018-08-13','2018-08-13 08:58:28','2018-08-13 18:11:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (27,'2018-08-14','2018-08-14 08:47:32','2018-08-14 18:05:31',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (27,'2018-08-16','2018-08-16 08:54:20','2018-08-16 18:12:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (27,'2018-08-17','2018-08-17 08:56:10','2018-08-17 18:07:12',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (27,'2018-08-20','2018-08-20 08:51:15','2018-08-20 18:00:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (27,'2018-08-21','2018-08-21 08:41:37','2018-08-21 18:05:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (27,'2018-08-22','2018-08-22 08:54:07','2018-08-22 18:07:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (27,'2018-08-23','2018-08-23 08:50:00','2018-08-23 18:05:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (27,'2018-08-24','2018-08-24 08:59:10','2018-08-24 18:23:00',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (27,'2018-08-27','2018-08-27 08:51:12','2018-08-27 18:23:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (27,'2018-08-28','2018-08-28 09:57:40','2018-08-28 16:23:11',0,0,0,1,0,0,0,0,1,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (27,'2018-08-29','2018-08-29 08:45:40','2018-08-29 18:32:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (27,'2018-08-30','2018-08-30 08:34:40','2018-08-30 18:33:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (28,'2018-08-13','2018-08-13 08:58:28','2018-08-13 18:11:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (28,'2018-08-14','2018-08-14 08:47:32','2018-08-14 18:05:31',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (28,'2018-08-16','2018-08-16 08:54:20','2018-08-16 18:12:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (28,'2018-08-17','2018-08-17 08:56:10','2018-08-17 18:07:12',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (28,'2018-08-20','2018-08-20 08:51:15','2018-08-20 18:00:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (28,'2018-08-21','2018-08-21 08:41:37','2018-08-21 18:05:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (28,'2018-08-22','2018-08-22 08:54:07','2018-08-22 18:07:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (28,'2018-08-23','2018-08-23 08:50:00','2018-08-23 18:05:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (28,'2018-08-24','2018-08-24 08:59:10','2018-08-24 18:23:00',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (28,'2018-08-27','2018-08-27 08:51:12','2018-08-27 18:23:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (28,'2018-08-28','2018-08-28 09:57:40','2018-08-28 16:23:11',0,0,0,1,0,0,0,0,1,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (28,'2018-08-29','2018-08-29 08:45:40','2018-08-29 18:32:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (28,'2018-08-30','2018-08-30 08:34:40','2018-08-30 18:33:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (29,'2018-08-13','2018-08-13 08:58:28','2018-08-13 18:11:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (29,'2018-08-14','2018-08-14 08:47:32','2018-08-14 18:05:31',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (29,'2018-08-16','2018-08-16 08:54:20','2018-08-16 18:12:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (29,'2018-08-17','2018-08-17 08:56:10','2018-08-17 18:07:12',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (29,'2018-08-20','2018-08-20 08:51:15','2018-08-20 18:00:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (29,'2018-08-21','2018-08-21 08:41:37','2018-08-21 18:05:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (29,'2018-08-22','2018-08-22 08:54:07','2018-08-22 18:07:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (29,'2018-08-23','2018-08-23 08:50:00','2018-08-23 18:05:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (29,'2018-08-24','2018-08-24 08:59:10','2018-08-24 18:23:00',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (29,'2018-08-27','2018-08-27 08:51:12','2018-08-27 18:23:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (29,'2018-08-28','2018-08-28 09:57:40','2018-08-28 16:23:11',0,0,0,1,0,0,0,0,1,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (29,'2018-08-29','2018-08-29 08:45:40','2018-08-29 18:32:11',1,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (29,'2018-08-30','2018-08-30 08:34:40','2018-08-30 18:33:10',1,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (30,'2018-08-13','2018-08-13 08:58:28','2018-08-13 18:11:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (30,'2018-08-14','2018-08-14 08:47:32','2018-08-14 18:05:31',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (30,'2018-08-16','2018-08-16 08:54:20','2018-08-16 18:12:10',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (30,'2018-08-17','2018-08-17 08:56:10','2018-08-17 18:07:12',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (30,'2018-08-20','2018-08-20 08:51:15','2018-08-20 18:00:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (30,'2018-08-21','2018-08-21 08:41:37','2018-08-21 18:05:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (30,'2018-08-22','2018-08-22 08:54:07','2018-08-22 18:07:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (30,'2018-08-23','2018-08-23 08:50:00','2018-08-23 18:05:30',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (30,'2018-08-24','2018-08-24 08:59:10','2018-08-24 18:23:00',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (30,'2018-08-27','2018-08-27 08:51:12','2018-08-27 18:23:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (30,'2018-08-28','2018-08-28 09:57:40','2018-08-28 16:23:11',0,0,0,1,0,0,0,0,1,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (30,'2018-08-29','2018-08-29 08:45:40','2018-08-29 18:32:11',0,0,0,0,0,0,0,0,0,0,0);
Insert into HONG.VWATTENDANCE (VSTUDENTSEQ,VATTENDANCEDATE,CHECKIN,CHECKOUT,GOOUT1,GOOUT2,GOOUT3,LATE1,LATE2,LATE3,LATE4,EARLY1,EARLY2,EARLY3,EARLY4) values (30,'2018-08-30','2018-08-30 08:34:40','2018-08-30 18:33:10',0,0,0,0,0,0,0,0,0,0,0);
REM INSERTING into HONG.VWCOUDATE
SET DEFINE OFF;
Insert into HONG.VWCOUDATE (VCOUNAME,VCOUSEQ,VCOUSTART,VCOUEND) values ('Java기반의 스마트 웹 앱콘텐츠 양성과정',3,to_date('19/04/29','RR/MM/DD'),to_date('19/10/25','RR/MM/DD'));
REM INSERTING into HONG.VWCOUINGDATE
SET DEFINE OFF;
Insert into HONG.VWCOUINGDATE (VCOUNAME,VCOUSEQ) values ('Java를 활용한 웹 응용 SW개발자 양성과정',2);
REM INSERTING into HONG.VWCOUROOMLEC
SET DEFINE OFF;
Insert into HONG.VWCOUROOMLEC (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VLECNAME,VCOUSEQ) values ('Java기반의 스마트 웹 앱콘텐츠 양성과정',to_date('19/04/29','RR/MM/DD'),to_date('19/10/25','RR/MM/DD'),'제 4강의실','서강준',3);
Insert into HONG.VWCOUROOMLEC (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VLECNAME,VCOUSEQ) values ('Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),'제 1강의실','이상민',2);
Insert into HONG.VWCOUROOMLEC (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VLECNAME,VCOUSEQ) values ('파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','설유경',1);
REM INSERTING into HONG.VWCOURSEINFO
SET DEFINE OFF;
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('신재경','1315562','010-1907-7667',to_date('19/01/10','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('차성양','1130961','010-0469-2980',to_date('19/01/10','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('건소경','2687072','010-1385-1157',to_date('19/01/10','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('신희용','1989703','010-1013-2298',to_date('19/01/10','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('이진소','2514815','010-1357-3301',to_date('19/01/10','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('문행창','1373437','010-4539-3378',to_date('19/01/11','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('차윤연','2051129','010-6750-3754',to_date('19/01/11','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('문장소','1949782','010-5241-5306',to_date('19/01/11','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('신성규','1953731','010-9002-9482',to_date('19/01/11','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('오소경','1655157','010-8024-1703',to_date('19/01/11','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('홍성준','1490013','010-5907-2231',to_date('19/01/11','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('건원양','2586718','010-1122-1021',to_date('19/01/12','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('하재준','2585695','010-6224-7786',to_date('19/01/12','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('문소규','2154116','010-5042-9822',to_date('19/01/12','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('신장준','2807647','010-1148-5172',to_date('19/01/12','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('우장존','1165873','010-1865-3083',to_date('19/01/12','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('이병준','1570718','010-9426-9467',to_date('19/01/12','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('왕소경','2200292','010-6554-4554',to_date('19/01/13','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('오병규','2013774','010-9968-6566',to_date('19/01/13','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('우윤준','1763093','010-2229-6305',to_date('19/01/13','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('왕성중','1262257','010-8862-6361',to_date('19/01/13','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('유종중','2626472','010-2526-5900',to_date('19/01/13','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('하종연','2191565','010-4109-0127',to_date('19/01/14','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('문윤하','2304478','010-5393-2595',to_date('19/01/14','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('문행존','1120493','010-9032-5183',to_date('19/01/14','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('이장중','1664696','010-9854-0147',to_date('19/01/14','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('유장창','2752844','010-0784-9618',to_date('19/01/14','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('차장무','1301254','010-6059-7318',to_date('19/01/14','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('하형무','1987137','010-4427-2687',to_date('19/01/15','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('왕행하','2692636','010-4992-8438',to_date('19/01/15','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('오종용','2876431','010-3840-2308',to_date('19/04/15','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('오유존','2438854','010-8875-8883',to_date('19/04/15','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('유종연','1554485','010-3055-4680',to_date('19/04/15','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('문유중','2652982','010-6073-6045',to_date('19/04/15','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('신성중','2431422','010-0269-3045',to_date('19/04/15','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('홍병창','2695505','010-0815-5035',to_date('19/04/15','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('홍형규','1648924','010-8323-6056',to_date('19/04/15','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('최장무','1315143','010-4835-9986',to_date('19/04/15','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('문희용','2167645','010-4374-4711',to_date('19/04/15','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('신형준','2021914','010-4122-1165',to_date('19/04/15','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('우성용','2144126','010-7178-1664',to_date('19/04/15','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('문윤히','2079005','010-0981-4660',to_date('18/06/11','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('문유수','1176754','010-1699-7042',to_date('18/06/11','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('건윤수','1147553','010-6021-9581',to_date('18/06/11','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('최병창','1098972','010-6045-8375',to_date('18/06/11','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('왕희무','2860366','010-5674-6006',to_date('18/06/11','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('류원연','2019746','010-2194-3593',to_date('18/06/12','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('홍원용','1355157','010-0205-1819',to_date('18/06/12','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('차원경','2358583','010-8939-7762',to_date('18/06/12','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('야호호','1111111','0100100101',to_date('19/04/04','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('왕재하','1711677','010-9038-9859',to_date('18/06/12','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('김행중','2788849','010-7491-5764',to_date('18/06/12','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('차윤준','1098793','010-2901-5968',to_date('18/06/12','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('박진양','2729678','010-1485-8640',to_date('18/06/12','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('신희존','2454787','010-7522-6789',to_date('18/06/13','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('차신연','1266038','010-8553-9296',to_date('18/06/13','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('유병존','2949697','010-7061-5586',to_date('18/06/13','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('박성창','2594694','010-7177-7662',to_date('18/06/13','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('유성수','2793713','010-1493-8827',to_date('18/06/13','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('문병규','2578785','010-3198-4319',to_date('18/06/13','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('류소준','1200543','010-4462-4455',to_date('18/06/13','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('이원소','1432795','010-8700-1176',to_date('18/06/13','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('홍유규','1946165','010-7113-5375',to_date('18/06/13','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('박행소','1190889','010-3501-8354',to_date('18/06/13','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('하행수','2206525','010-9722-3396',to_date('18/06/14','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('박종준','2323013','010-7723-6292',to_date('18/06/14','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('우소양','1031194','010-6119-5878',to_date('18/06/14','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('최종무','2419224','010-0293-3056',to_date('18/06/14','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('우희준','2673857','010-2278-4817',to_date('18/06/14','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('차희존','1481464','010-1660-4345',to_date('18/06/14','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('하희소','1374898','010-6005-1695',to_date('18/06/14','RR/MM/DD'),1);
Insert into HONG.VWCOURSEINFO ("vName","vRegistrationNum","vPhoneNum","vRegistrationDate","vState") values ('히히','0000000','000-0000-0001',to_date('19/03/02','RR/MM/DD'),0);
REM INSERTING into HONG.VWCOURSELIST
SET DEFINE OFF;
Insert into HONG.VWCOURSELIST (VCOURSENUM,VCOURSENAME,VCOURSESTART,VCOURSEEND) values (3,'Java기반의 스마트 웹 앱콘텐츠 양성과정',to_date('19/04/29','RR/MM/DD'),to_date('19/10/25','RR/MM/DD'));
Insert into HONG.VWCOURSELIST (VCOURSENUM,VCOURSENAME,VCOURSESTART,VCOURSEEND) values (2,'Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'));
Insert into HONG.VWCOURSELIST (VCOURSENUM,VCOURSENAME,VCOURSESTART,VCOURSEEND) values (1,'파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'));
REM INSERTING into HONG.VWCOUSTU
SET DEFINE OFF;
Insert into HONG.VWCOUSTU (VNAME,VSEQ) values ('Java기반의 스마트 웹 앱콘텐츠 양성과정',3);
Insert into HONG.VWCOUSTU (VNAME,VSEQ) values ('파이썬과 자바를 연계한 머신러닝 활용개발자 과정',1);
Insert into HONG.VWCOUSTU (VNAME,VSEQ) values ('Java를 활용한 웹 응용 SW개발자 양성과정',2);
REM INSERTING into HONG.VWCOUSUB
SET DEFINE OFF;
Insert into HONG.VWCOUSUB (VSUBSEQ,VSUBNAME,VCOUSEQ) values (18,'JAVA 프로그래밍',3);
Insert into HONG.VWCOUSUB (VSUBSEQ,VSUBNAME,VCOUSEQ) values (7,'JAVA 프로그래밍',2);
Insert into HONG.VWCOUSUB (VSUBSEQ,VSUBNAME,VCOUSEQ) values (1,'JAVA 프로그래밍',1);
Insert into HONG.VWCOUSUB (VSUBSEQ,VSUBNAME,VCOUSEQ) values (17,'데이터베이스',3);
Insert into HONG.VWCOUSUB (VSUBSEQ,VSUBNAME,VCOUSEQ) values (8,'데이터베이스',2);
Insert into HONG.VWCOUSUB (VSUBSEQ,VSUBNAME,VCOUSEQ) values (2,'데이터베이스',1);
Insert into HONG.VWCOUSUB (VSUBSEQ,VSUBNAME,VCOUSEQ) values (9,'JAVA 애플리케이션 구현',2);
Insert into HONG.VWCOUSUB (VSUBSEQ,VSUBNAME,VCOUSEQ) values (21,'애플리케이션 배포',3);
Insert into HONG.VWCOUSUB (VSUBSEQ,VSUBNAME,VCOUSEQ) values (11,'애플리케이션 배포',2);
Insert into HONG.VWCOUSUB (VSUBSEQ,VSUBNAME,VCOUSEQ) values (12,'Front-end 웹 애플리케이션 구현',2);
Insert into HONG.VWCOUSUB (VSUBSEQ,VSUBNAME,VCOUSEQ) values (13,'Back-end 웹 애플리케이션 구현',2);
Insert into HONG.VWCOUSUB (VSUBSEQ,VSUBNAME,VCOUSEQ) values (14,'Full-stack Framework 구현',2);
Insert into HONG.VWCOUSUB (VSUBSEQ,VSUBNAME,VCOUSEQ) values (16,'반응형 웹 개발기법',2);
Insert into HONG.VWCOUSUB (VSUBSEQ,VSUBNAME,VCOUSEQ) values (15,'반응형 웹 개발기법',2);
Insert into HONG.VWCOUSUB (VSUBSEQ,VSUBNAME,VCOUSEQ) values (19,'애플리케이션 테스트 수행',3);
Insert into HONG.VWCOUSUB (VSUBSEQ,VSUBNAME,VCOUSEQ) values (10,'애플리케이션 테스트 수행',2);
Insert into HONG.VWCOUSUB (VSUBSEQ,VSUBNAME,VCOUSEQ) values (20,'웹 프로그래밍',3);
Insert into HONG.VWCOUSUB (VSUBSEQ,VSUBNAME,VCOUSEQ) values (3,'웹 프로그래밍',1);
Insert into HONG.VWCOUSUB (VSUBSEQ,VSUBNAME,VCOUSEQ) values (22,'Spring 개발',3);
Insert into HONG.VWCOUSUB (VSUBSEQ,VSUBNAME,VCOUSEQ) values (23,'Spring framework 통합구현',3);
Insert into HONG.VWCOUSUB (VSUBSEQ,VSUBNAME,VCOUSEQ) values (24,'제이쿼리 모바일',3);
Insert into HONG.VWCOUSUB (VSUBSEQ,VSUBNAME,VCOUSEQ) values (25,'코틀린 프로그래밍',3);
Insert into HONG.VWCOUSUB (VSUBSEQ,VSUBNAME,VCOUSEQ) values (26,'코틀린 안드로이드 프로그램 구현',3);
Insert into HONG.VWCOUSUB (VSUBSEQ,VSUBNAME,VCOUSEQ) values (28,'코틀린 활용 안드로이드 모바일 프로젝트 제작 ',3);
Insert into HONG.VWCOUSUB (VSUBSEQ,VSUBNAME,VCOUSEQ) values (4,'Full-stack 응용 프로젝트 제작',1);
Insert into HONG.VWCOUSUB (VSUBSEQ,VSUBNAME,VCOUSEQ) values (5,'웹 서버 구축 실무',1);
Insert into HONG.VWCOUSUB (VSUBSEQ,VSUBNAME,VCOUSEQ) values (6,'파이썬을 활용한 머신러닝 분석기술',1);
Insert into HONG.VWCOUSUB (VSUBSEQ,VSUBNAME,VCOUSEQ) values (27,'지능형 빅데이터 서비스 실무프로젝트',3);
REM INSERTING into HONG.VWCOUSUBSTUBOOK
SET DEFINE OFF;
Insert into HONG.VWCOUSUBSTUBOOK (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRIT,VSUBPRAC,VCOUSEQ,VSUBSEQ) values ('파이썬과 자바를 연계한 머신러닝 활용개발자 과정','18-07-02','18-11-30','제 1강의실','JAVA 프로그래밍','18-07-02','18-08-10','Java의 정석',20,40,40,1,1);
Insert into HONG.VWCOUSUBSTUBOOK (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRIT,VSUBPRAC,VCOUSEQ,VSUBSEQ) values ('파이썬과 자바를 연계한 머신러닝 활용개발자 과정','18-07-02','18-11-30','제 1강의실','데이터베이스','18-08-13','18-08-31','다양한 예제로 쉽게 배우는 오라클 SQL과 PL/SQL + 데이터 모델링 입문',20,40,40,1,2);
Insert into HONG.VWCOUSUBSTUBOOK (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRIT,VSUBPRAC,VCOUSEQ,VSUBSEQ) values ('파이썬과 자바를 연계한 머신러닝 활용개발자 과정','18-07-02','18-11-30','제 1강의실','웹 프로그래밍','18-09-03','18-09-21','웹 개발자를 위한 Spring 4.0 프로그래밍',20,40,40,1,3);
Insert into HONG.VWCOUSUBSTUBOOK (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRIT,VSUBPRAC,VCOUSEQ,VSUBSEQ) values ('파이썬과 자바를 연계한 머신러닝 활용개발자 과정','18-07-02','18-11-30','제 1강의실','Full-stack 응용 프로젝트 제작','18-09-24','18-10-12','Do it! HTML5- CSS3 웹 표준의 정석(2017)',20,40,40,1,4);
Insert into HONG.VWCOUSUBSTUBOOK (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRIT,VSUBPRAC,VCOUSEQ,VSUBSEQ) values ('파이썬과 자바를 연계한 머신러닝 활용개발자 과정','18-07-02','18-11-30','제 1강의실','웹 서버 구축 실무','18-10-15','18-11-02','텐서플로를 활용한 머신러닝',20,40,40,1,5);
Insert into HONG.VWCOUSUBSTUBOOK (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRIT,VSUBPRAC,VCOUSEQ,VSUBSEQ) values ('파이썬과 자바를 연계한 머신러닝 활용개발자 과정','18-07-02','18-11-30','제 1강의실','파이썬을 활용한 머신러닝 분석기술','18-11-05','18-11-30','블록체인 프로그래밍',20,40,40,1,6);
Insert into HONG.VWCOUSUBSTUBOOK (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRIT,VSUBPRAC,VCOUSEQ,VSUBSEQ) values ('Java를 활용한 웹 응용 SW개발자 양성과정','19-01-28','19-08-23','제 1강의실','JAVA 프로그래밍','19-01-28','19-03-22','Java의 정석',20,40,40,2,7);
Insert into HONG.VWCOUSUBSTUBOOK (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRIT,VSUBPRAC,VCOUSEQ,VSUBSEQ) values ('Java를 활용한 웹 응용 SW개발자 양성과정','19-01-28','19-08-23','제 1강의실','데이터베이스','19-03-25','19-04-19','다양한 예제로 쉽게 배우는 오라클 SQL과 PL/SQL + 데이터 모델링 입문',null,null,null,2,8);
Insert into HONG.VWCOUSUBSTUBOOK (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRIT,VSUBPRAC,VCOUSEQ,VSUBSEQ) values ('Java를 활용한 웹 응용 SW개발자 양성과정','19-01-28','19-08-23','제 1강의실','JAVA 애플리케이션 구현','19-04-22','19-05-10','이것이 자바다',null,null,null,2,9);
Insert into HONG.VWCOUSUBSTUBOOK (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRIT,VSUBPRAC,VCOUSEQ,VSUBSEQ) values ('Java를 활용한 웹 응용 SW개발자 양성과정','19-01-28','19-08-23','제 1강의실','애플리케이션 테스트 수행','19-05-13','19-05-24','Java의 정석',null,null,null,2,10);
Insert into HONG.VWCOUSUBSTUBOOK (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRIT,VSUBPRAC,VCOUSEQ,VSUBSEQ) values ('Java를 활용한 웹 응용 SW개발자 양성과정','19-01-28','19-08-23','제 1강의실','애플리케이션 배포','19-05-27','19-06-07','Do it ! 프런트엔드 웹 디자인 입문',null,null,null,2,11);
Insert into HONG.VWCOUSUBSTUBOOK (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRIT,VSUBPRAC,VCOUSEQ,VSUBSEQ) values ('Java를 활용한 웹 응용 SW개발자 양성과정','19-01-28','19-08-23','제 1강의실','Front-end 웹 애플리케이션 구현','19-06-10','19-07-21','자바스크립트 프론트엔드 프로젝트 가이드',null,null,null,2,12);
Insert into HONG.VWCOUSUBSTUBOOK (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRIT,VSUBPRAC,VCOUSEQ,VSUBSEQ) values ('Java를 활용한 웹 응용 SW개발자 양성과정','19-01-28','19-08-23','제 1강의실','Back-end 웹 애플리케이션 구현','19-06-24','19-07-05','코드로 배우는 스프링 웹 프로젝트(개정판)',null,null,null,2,13);
Insert into HONG.VWCOUSUBSTUBOOK (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRIT,VSUBPRAC,VCOUSEQ,VSUBSEQ) values ('Java를 활용한 웹 응용 SW개발자 양성과정','19-01-28','19-08-23','제 1강의실','Full-stack Framework 구현','19-07-08','19-07-19','Do it ! 프런트엔드 웹 디자인 입문',null,null,null,2,14);
Insert into HONG.VWCOUSUBSTUBOOK (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRIT,VSUBPRAC,VCOUSEQ,VSUBSEQ) values ('Java를 활용한 웹 응용 SW개발자 양성과정','19-01-28','19-08-23','제 1강의실','반응형 웹 개발기법','19-07-22','19-08-02','네트워크 보안 시스템 구축과 보안 관제',null,null,null,2,15);
Insert into HONG.VWCOUSUBSTUBOOK (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRIT,VSUBPRAC,VCOUSEQ,VSUBSEQ) values ('Java를 활용한 웹 응용 SW개발자 양성과정','19-01-28','19-08-23','제 1강의실','반응형 웹 개발기법','19-08-05','19-08-23','자바스크립트 프론트엔드 프로젝트 가이드',null,null,null,2,16);
Insert into HONG.VWCOUSUBSTUBOOK (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRIT,VSUBPRAC,VCOUSEQ,VSUBSEQ) values ('Java기반의 스마트 웹 앱콘텐츠 양성과정','19-04-29','19-10-25','제 4강의실','데이터베이스','19-04-29','19-05-24','다양한 예제로 쉽게 배우는 오라클 SQL과 PL/SQL + 데이터 모델링 입문',null,null,null,3,17);
Insert into HONG.VWCOUSUBSTUBOOK (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRIT,VSUBPRAC,VCOUSEQ,VSUBSEQ) values ('Java기반의 스마트 웹 앱콘텐츠 양성과정','19-04-29','19-10-25','제 4강의실','JAVA 프로그래밍','19-05-27','19-06-07','이것이 자바다',null,null,null,3,18);
Insert into HONG.VWCOUSUBSTUBOOK (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRIT,VSUBPRAC,VCOUSEQ,VSUBSEQ) values ('Java기반의 스마트 웹 앱콘텐츠 양성과정','19-04-29','19-10-25','제 4강의실','애플리케이션 테스트 수행','19-06-10','19-06-21','Java의 정석',null,null,null,3,19);
Insert into HONG.VWCOUSUBSTUBOOK (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRIT,VSUBPRAC,VCOUSEQ,VSUBSEQ) values ('Java기반의 스마트 웹 앱콘텐츠 양성과정','19-04-29','19-10-25','제 4강의실','웹 프로그래밍','19-06-24','19-07-05','코드로 배우는 스프링 웹 프로젝트(개정판)',null,null,null,3,20);
Insert into HONG.VWCOUSUBSTUBOOK (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRIT,VSUBPRAC,VCOUSEQ,VSUBSEQ) values ('Java기반의 스마트 웹 앱콘텐츠 양성과정','19-04-29','19-10-25','제 4강의실','애플리케이션 배포','19-07-08','19-07-19','스프링5 레시피',null,null,null,3,21);
Insert into HONG.VWCOUSUBSTUBOOK (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRIT,VSUBPRAC,VCOUSEQ,VSUBSEQ) values ('Java기반의 스마트 웹 앱콘텐츠 양성과정','19-04-29','19-10-25','제 4강의실','Spring 개발','19-07-22','19-08-02','코드로 배우는 스프링 웹 프로젝트',null,null,null,3,22);
Insert into HONG.VWCOUSUBSTUBOOK (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRIT,VSUBPRAC,VCOUSEQ,VSUBSEQ) values ('Java기반의 스마트 웹 앱콘텐츠 양성과정','19-04-29','19-10-25','제 4강의실','Spring framework 통합구현','19-08-05','19-08-16','스프링5 레시피',null,null,null,3,23);
Insert into HONG.VWCOUSUBSTUBOOK (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRIT,VSUBPRAC,VCOUSEQ,VSUBSEQ) values ('Java기반의 스마트 웹 앱콘텐츠 양성과정','19-04-29','19-10-25','제 4강의실','제이쿼리 모바일','19-08-19','19-08-30','자바스크립트+jQuery',null,null,null,3,24);
Insert into HONG.VWCOUSUBSTUBOOK (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRIT,VSUBPRAC,VCOUSEQ,VSUBSEQ) values ('Java기반의 스마트 웹 앱콘텐츠 양성과정','19-04-29','19-10-25','제 4강의실','코틀린 프로그래밍','19-09-02','19-09-17','코틀린 프로그래밍',null,null,null,3,25);
Insert into HONG.VWCOUSUBSTUBOOK (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRIT,VSUBPRAC,VCOUSEQ,VSUBSEQ) values ('Java기반의 스마트 웹 앱콘텐츠 양성과정','19-04-29','19-10-25','제 4강의실','코틀린 안드로이드 프로그램 구현','19-09-18','19-09-27','코틀린을 이용한 안드로이드 개발',null,null,null,3,26);
Insert into HONG.VWCOUSUBSTUBOOK (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRIT,VSUBPRAC,VCOUSEQ,VSUBSEQ) values ('Java기반의 스마트 웹 앱콘텐츠 양성과정','19-04-29','19-10-25','제 4강의실','지능형 빅데이터 서비스 실무프로젝트','19-09-30','19-10-11','코틀린을 이용한 안드로이드 개발',null,null,null,3,27);
Insert into HONG.VWCOUSUBSTUBOOK (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRIT,VSUBPRAC,VCOUSEQ,VSUBSEQ) values ('Java기반의 스마트 웹 앱콘텐츠 양성과정','19-04-29','19-10-25','제 4강의실','코틀린 활용 안드로이드 모바일 프로젝트 제작 ','19-10-14','19-10-25','스프링5 레시피',null,null,null,3,28);
REM INSERTING into HONG.VWCOUSUBSTUINFO
SET DEFINE OFF;
Insert into HONG.VWCOUSUBSTUINFO (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRI,VSUBPRAC,VSUBSEQ,VCOUSEQ) values ('파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','JAVA 프로그래밍',to_date('18/07/02','RR/MM/DD'),to_date('18/08/10','RR/MM/DD'),'Java의 정석',20,40,40,1,1);
Insert into HONG.VWCOUSUBSTUINFO (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRI,VSUBPRAC,VSUBSEQ,VCOUSEQ) values ('파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','파이썬을 활용한 머신러닝 분석기술',to_date('18/11/05','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'블록체인 프로그래밍',20,40,40,6,1);
Insert into HONG.VWCOUSUBSTUINFO (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRI,VSUBPRAC,VSUBSEQ,VCOUSEQ) values ('파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 서버 구축 실무',to_date('18/10/15','RR/MM/DD'),to_date('18/11/02','RR/MM/DD'),'텐서플로를 활용한 머신러닝',20,40,40,5,1);
Insert into HONG.VWCOUSUBSTUINFO (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRI,VSUBPRAC,VSUBSEQ,VCOUSEQ) values ('파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','Full-stack 응용 프로젝트 제작',to_date('18/09/24','RR/MM/DD'),to_date('18/10/12','RR/MM/DD'),'Do it! HTML5- CSS3 웹 표준의 정석(2017)',20,40,40,4,1);
Insert into HONG.VWCOUSUBSTUINFO (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRI,VSUBPRAC,VSUBSEQ,VCOUSEQ) values ('파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 프로그래밍',to_date('18/09/03','RR/MM/DD'),to_date('18/09/21','RR/MM/DD'),'웹 개발자를 위한 Spring 4.0 프로그래밍',20,40,40,3,1);
Insert into HONG.VWCOUSUBSTUINFO (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRI,VSUBPRAC,VSUBSEQ,VCOUSEQ) values ('파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','데이터베이스',to_date('18/08/13','RR/MM/DD'),to_date('18/08/31','RR/MM/DD'),'다양한 예제로 쉽게 배우는 오라클 SQL과 PL/SQL + 데이터 모델링 입문',20,40,40,2,1);
Insert into HONG.VWCOUSUBSTUINFO (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRI,VSUBPRAC,VSUBSEQ,VCOUSEQ) values ('Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),'제 1강의실','Back-end 웹 애플리케이션 구현',to_date('19/06/24','RR/MM/DD'),to_date('19/07/05','RR/MM/DD'),'코드로 배우는 스프링 웹 프로젝트(개정판)',null,null,null,13,2);
Insert into HONG.VWCOUSUBSTUINFO (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRI,VSUBPRAC,VSUBSEQ,VCOUSEQ) values ('Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),'제 1강의실','Front-end 웹 애플리케이션 구현',to_date('19/06/10','RR/MM/DD'),to_date('19/07/21','RR/MM/DD'),'자바스크립트 프론트엔드 프로젝트 가이드',null,null,null,12,2);
Insert into HONG.VWCOUSUBSTUINFO (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRI,VSUBPRAC,VSUBSEQ,VCOUSEQ) values ('Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),'제 1강의실','애플리케이션 배포',to_date('19/05/27','RR/MM/DD'),to_date('19/06/07','RR/MM/DD'),'Do it ! 프런트엔드 웹 디자인 입문',null,null,null,11,2);
Insert into HONG.VWCOUSUBSTUINFO (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRI,VSUBPRAC,VSUBSEQ,VCOUSEQ) values ('Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),'제 1강의실','애플리케이션 테스트 수행',to_date('19/05/13','RR/MM/DD'),to_date('19/05/24','RR/MM/DD'),'Java의 정석',null,null,null,10,2);
Insert into HONG.VWCOUSUBSTUINFO (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRI,VSUBPRAC,VSUBSEQ,VCOUSEQ) values ('Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),'제 1강의실','JAVA 애플리케이션 구현',to_date('19/04/22','RR/MM/DD'),to_date('19/05/10','RR/MM/DD'),'이것이 자바다',null,null,null,9,2);
Insert into HONG.VWCOUSUBSTUINFO (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRI,VSUBPRAC,VSUBSEQ,VCOUSEQ) values ('Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),'제 1강의실','데이터베이스',to_date('19/03/25','RR/MM/DD'),to_date('19/04/19','RR/MM/DD'),'다양한 예제로 쉽게 배우는 오라클 SQL과 PL/SQL + 데이터 모델링 입문',null,null,null,8,2);
Insert into HONG.VWCOUSUBSTUINFO (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRI,VSUBPRAC,VSUBSEQ,VCOUSEQ) values ('Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),'제 1강의실','JAVA 프로그래밍',to_date('19/01/28','RR/MM/DD'),to_date('19/03/22','RR/MM/DD'),'Java의 정석',20,40,40,7,2);
Insert into HONG.VWCOUSUBSTUINFO (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRI,VSUBPRAC,VSUBSEQ,VCOUSEQ) values ('Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),'제 1강의실','Full-stack Framework 구현',to_date('19/07/08','RR/MM/DD'),to_date('19/07/19','RR/MM/DD'),'Do it ! 프런트엔드 웹 디자인 입문',null,null,null,14,2);
Insert into HONG.VWCOUSUBSTUINFO (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRI,VSUBPRAC,VSUBSEQ,VCOUSEQ) values ('Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),'제 1강의실','반응형 웹 개발기법',to_date('19/08/05','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),'자바스크립트 프론트엔드 프로젝트 가이드',null,null,null,16,2);
Insert into HONG.VWCOUSUBSTUINFO (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRI,VSUBPRAC,VSUBSEQ,VCOUSEQ) values ('Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),'제 1강의실','반응형 웹 개발기법',to_date('19/07/22','RR/MM/DD'),to_date('19/08/02','RR/MM/DD'),'네트워크 보안 시스템 구축과 보안 관제',null,null,null,15,2);
Insert into HONG.VWCOUSUBSTUINFO (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRI,VSUBPRAC,VSUBSEQ,VCOUSEQ) values ('Java기반의 스마트 웹 앱콘텐츠 양성과정',to_date('19/04/29','RR/MM/DD'),to_date('19/10/25','RR/MM/DD'),'제 4강의실','데이터베이스',to_date('19/04/29','RR/MM/DD'),to_date('19/05/24','RR/MM/DD'),'다양한 예제로 쉽게 배우는 오라클 SQL과 PL/SQL + 데이터 모델링 입문',null,null,null,17,3);
Insert into HONG.VWCOUSUBSTUINFO (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRI,VSUBPRAC,VSUBSEQ,VCOUSEQ) values ('Java기반의 스마트 웹 앱콘텐츠 양성과정',to_date('19/04/29','RR/MM/DD'),to_date('19/10/25','RR/MM/DD'),'제 4강의실','JAVA 프로그래밍',to_date('19/05/27','RR/MM/DD'),to_date('19/06/07','RR/MM/DD'),'이것이 자바다',null,null,null,18,3);
Insert into HONG.VWCOUSUBSTUINFO (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRI,VSUBPRAC,VSUBSEQ,VCOUSEQ) values ('Java기반의 스마트 웹 앱콘텐츠 양성과정',to_date('19/04/29','RR/MM/DD'),to_date('19/10/25','RR/MM/DD'),'제 4강의실','애플리케이션 테스트 수행',to_date('19/06/10','RR/MM/DD'),to_date('19/06/21','RR/MM/DD'),'Java의 정석',null,null,null,19,3);
Insert into HONG.VWCOUSUBSTUINFO (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRI,VSUBPRAC,VSUBSEQ,VCOUSEQ) values ('Java기반의 스마트 웹 앱콘텐츠 양성과정',to_date('19/04/29','RR/MM/DD'),to_date('19/10/25','RR/MM/DD'),'제 4강의실','웹 프로그래밍',to_date('19/06/24','RR/MM/DD'),to_date('19/07/05','RR/MM/DD'),'코드로 배우는 스프링 웹 프로젝트(개정판)',null,null,null,20,3);
Insert into HONG.VWCOUSUBSTUINFO (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRI,VSUBPRAC,VSUBSEQ,VCOUSEQ) values ('Java기반의 스마트 웹 앱콘텐츠 양성과정',to_date('19/04/29','RR/MM/DD'),to_date('19/10/25','RR/MM/DD'),'제 4강의실','애플리케이션 배포',to_date('19/07/08','RR/MM/DD'),to_date('19/07/19','RR/MM/DD'),'스프링5 레시피',null,null,null,21,3);
Insert into HONG.VWCOUSUBSTUINFO (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRI,VSUBPRAC,VSUBSEQ,VCOUSEQ) values ('Java기반의 스마트 웹 앱콘텐츠 양성과정',to_date('19/04/29','RR/MM/DD'),to_date('19/10/25','RR/MM/DD'),'제 4강의실','코틀린 활용 안드로이드 모바일 프로젝트 제작 ',to_date('19/10/14','RR/MM/DD'),to_date('19/10/25','RR/MM/DD'),'스프링5 레시피',null,null,null,28,3);
Insert into HONG.VWCOUSUBSTUINFO (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRI,VSUBPRAC,VSUBSEQ,VCOUSEQ) values ('Java기반의 스마트 웹 앱콘텐츠 양성과정',to_date('19/04/29','RR/MM/DD'),to_date('19/10/25','RR/MM/DD'),'제 4강의실','Spring framework 통합구현',to_date('19/08/05','RR/MM/DD'),to_date('19/08/16','RR/MM/DD'),'스프링5 레시피',null,null,null,23,3);
Insert into HONG.VWCOUSUBSTUINFO (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRI,VSUBPRAC,VSUBSEQ,VCOUSEQ) values ('Java기반의 스마트 웹 앱콘텐츠 양성과정',to_date('19/04/29','RR/MM/DD'),to_date('19/10/25','RR/MM/DD'),'제 4강의실','제이쿼리 모바일',to_date('19/08/19','RR/MM/DD'),to_date('19/08/30','RR/MM/DD'),'자바스크립트+jQuery',null,null,null,24,3);
Insert into HONG.VWCOUSUBSTUINFO (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRI,VSUBPRAC,VSUBSEQ,VCOUSEQ) values ('Java기반의 스마트 웹 앱콘텐츠 양성과정',to_date('19/04/29','RR/MM/DD'),to_date('19/10/25','RR/MM/DD'),'제 4강의실','코틀린 프로그래밍',to_date('19/09/02','RR/MM/DD'),to_date('19/09/17','RR/MM/DD'),'코틀린 프로그래밍',null,null,null,25,3);
Insert into HONG.VWCOUSUBSTUINFO (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRI,VSUBPRAC,VSUBSEQ,VCOUSEQ) values ('Java기반의 스마트 웹 앱콘텐츠 양성과정',to_date('19/04/29','RR/MM/DD'),to_date('19/10/25','RR/MM/DD'),'제 4강의실','지능형 빅데이터 서비스 실무프로젝트',to_date('19/09/30','RR/MM/DD'),to_date('19/10/11','RR/MM/DD'),'코틀린을 이용한 안드로이드 개발',null,null,null,27,3);
Insert into HONG.VWCOUSUBSTUINFO (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRI,VSUBPRAC,VSUBSEQ,VCOUSEQ) values ('Java기반의 스마트 웹 앱콘텐츠 양성과정',to_date('19/04/29','RR/MM/DD'),to_date('19/10/25','RR/MM/DD'),'제 4강의실','코틀린 안드로이드 프로그램 구현',to_date('19/09/18','RR/MM/DD'),to_date('19/09/27','RR/MM/DD'),'코틀린을 이용한 안드로이드 개발',null,null,null,26,3);
Insert into HONG.VWCOUSUBSTUINFO (VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VBOOKNAME,VSUBATT,VSUBWRI,VSUBPRAC,VSUBSEQ,VCOUSEQ) values ('Java기반의 스마트 웹 앱콘텐츠 양성과정',to_date('19/04/29','RR/MM/DD'),to_date('19/10/25','RR/MM/DD'),'제 4강의실','Spring 개발',to_date('19/07/22','RR/MM/DD'),to_date('19/08/02','RR/MM/DD'),'코드로 배우는 스프링 웹 프로젝트',null,null,null,22,3);
REM INSERTING into HONG.VWCOUSUBSTUTEXLEC
SET DEFINE OFF;
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('하형무','1987137','010-4427-2687','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','JAVA 프로그래밍',to_date('18/07/02','RR/MM/DD'),to_date('18/08/10','RR/MM/DD'),'Java의 정석','설유경',29,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('이병준','1570718','010-9426-9467','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','JAVA 프로그래밍',to_date('18/07/02','RR/MM/DD'),to_date('18/08/10','RR/MM/DD'),'Java의 정석','설유경',17,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('우장존','1165873','010-1865-3083','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','JAVA 프로그래밍',to_date('18/07/02','RR/MM/DD'),to_date('18/08/10','RR/MM/DD'),'Java의 정석','설유경',16,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('하재준','2585695','010-6224-7786','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','JAVA 프로그래밍',to_date('18/07/02','RR/MM/DD'),to_date('18/08/10','RR/MM/DD'),'Java의 정석','설유경',13,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('건원양','2586718','010-1122-1021','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','JAVA 프로그래밍',to_date('18/07/02','RR/MM/DD'),to_date('18/08/10','RR/MM/DD'),'Java의 정석','설유경',12,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('오소경','1655157','010-8024-1703','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','JAVA 프로그래밍',to_date('18/07/02','RR/MM/DD'),to_date('18/08/10','RR/MM/DD'),'Java의 정석','설유경',10,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('차성양','1130961','010-0469-2980','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','JAVA 프로그래밍',to_date('18/07/02','RR/MM/DD'),to_date('18/08/10','RR/MM/DD'),'Java의 정석','설유경',2,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('차장무','1301254','010-6059-7318','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','데이터베이스',to_date('18/08/13','RR/MM/DD'),to_date('18/08/31','RR/MM/DD'),'다양한 예제로 쉽게 배우는 오라클 SQL과 PL/SQL + 데이터 모델링 입문','설유경',28,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('유종중','2626472','010-2526-5900','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','데이터베이스',to_date('18/08/13','RR/MM/DD'),to_date('18/08/31','RR/MM/DD'),'다양한 예제로 쉽게 배우는 오라클 SQL과 PL/SQL + 데이터 모델링 입문','설유경',22,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('이병준','1570718','010-9426-9467','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','데이터베이스',to_date('18/08/13','RR/MM/DD'),to_date('18/08/31','RR/MM/DD'),'다양한 예제로 쉽게 배우는 오라클 SQL과 PL/SQL + 데이터 모델링 입문','설유경',17,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('문소규','2154116','010-5042-9822','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','데이터베이스',to_date('18/08/13','RR/MM/DD'),to_date('18/08/31','RR/MM/DD'),'다양한 예제로 쉽게 배우는 오라클 SQL과 PL/SQL + 데이터 모델링 입문','설유경',14,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('문장소','1949782','010-5241-5306','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','데이터베이스',to_date('18/08/13','RR/MM/DD'),to_date('18/08/31','RR/MM/DD'),'다양한 예제로 쉽게 배우는 오라클 SQL과 PL/SQL + 데이터 모델링 입문','설유경',8,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('왕행하','2692636','010-4992-8438','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 프로그래밍',to_date('18/09/03','RR/MM/DD'),to_date('18/09/21','RR/MM/DD'),'웹 개발자를 위한 Spring 4.0 프로그래밍','설유경',30,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('차장무','1301254','010-6059-7318','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 프로그래밍',to_date('18/09/03','RR/MM/DD'),to_date('18/09/21','RR/MM/DD'),'웹 개발자를 위한 Spring 4.0 프로그래밍','설유경',28,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('신희용','1989703','010-1013-2298','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 프로그래밍',to_date('18/09/03','RR/MM/DD'),to_date('18/09/21','RR/MM/DD'),'웹 개발자를 위한 Spring 4.0 프로그래밍','설유경',4,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('하형무','1987137','010-4427-2687','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','Full-stack 응용 프로젝트 제작',to_date('18/09/24','RR/MM/DD'),to_date('18/10/12','RR/MM/DD'),'Do it! HTML5- CSS3 웹 표준의 정석(2017)','설유경',29,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('오병규','2013774','010-9968-6566','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','Full-stack 응용 프로젝트 제작',to_date('18/09/24','RR/MM/DD'),to_date('18/10/12','RR/MM/DD'),'Do it! HTML5- CSS3 웹 표준의 정석(2017)','설유경',19,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('건원양','2586718','010-1122-1021','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','Full-stack 응용 프로젝트 제작',to_date('18/09/24','RR/MM/DD'),to_date('18/10/12','RR/MM/DD'),'Do it! HTML5- CSS3 웹 표준의 정석(2017)','설유경',12,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('홍성준','1490013','010-5907-2231','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','Full-stack 응용 프로젝트 제작',to_date('18/09/24','RR/MM/DD'),to_date('18/10/12','RR/MM/DD'),'Do it! HTML5- CSS3 웹 표준의 정석(2017)','설유경',11,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('문행창','1373437','010-4539-3378','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','Full-stack 응용 프로젝트 제작',to_date('18/09/24','RR/MM/DD'),to_date('18/10/12','RR/MM/DD'),'Do it! HTML5- CSS3 웹 표준의 정석(2017)','설유경',6,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('유장창','2752844','010-0784-9618','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 서버 구축 실무',to_date('18/10/15','RR/MM/DD'),to_date('18/11/02','RR/MM/DD'),'텐서플로를 활용한 머신러닝','설유경',27,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('유종중','2626472','010-2526-5900','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 서버 구축 실무',to_date('18/10/15','RR/MM/DD'),to_date('18/11/02','RR/MM/DD'),'텐서플로를 활용한 머신러닝','설유경',22,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('왕소경','2200292','010-6554-4554','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 서버 구축 실무',to_date('18/10/15','RR/MM/DD'),to_date('18/11/02','RR/MM/DD'),'텐서플로를 활용한 머신러닝','설유경',18,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('차성양','1130961','010-0469-2980','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 서버 구축 실무',to_date('18/10/15','RR/MM/DD'),to_date('18/11/02','RR/MM/DD'),'텐서플로를 활용한 머신러닝','설유경',2,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('이장중','1664696','010-9854-0147','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','파이썬을 활용한 머신러닝 분석기술',to_date('18/11/05','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'블록체인 프로그래밍','설유경',26,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('하재준','2585695','010-6224-7786','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','파이썬을 활용한 머신러닝 분석기술',to_date('18/11/05','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'블록체인 프로그래밍','설유경',13,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('차윤연','2051129','010-6750-3754','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','파이썬을 활용한 머신러닝 분석기술',to_date('18/11/05','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'블록체인 프로그래밍','설유경',7,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('신재경','1315562','010-1907-7667','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','파이썬을 활용한 머신러닝 분석기술',to_date('18/11/05','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'블록체인 프로그래밍','설유경',1,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('오종용','2876431','010-3840-2308','Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),'제 1강의실','애플리케이션 배포',to_date('19/05/27','RR/MM/DD'),to_date('19/06/07','RR/MM/DD'),'Do it ! 프런트엔드 웹 디자인 입문','이상민',31,2);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('이진소','2514815','010-1357-3301','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','데이터베이스',to_date('18/08/13','RR/MM/DD'),to_date('18/08/31','RR/MM/DD'),'다양한 예제로 쉽게 배우는 오라클 SQL과 PL/SQL + 데이터 모델링 입문','설유경',5,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('홍성준','1490013','010-5907-2231','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 프로그래밍',to_date('18/09/03','RR/MM/DD'),to_date('18/09/21','RR/MM/DD'),'웹 개발자를 위한 Spring 4.0 프로그래밍','설유경',11,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('차윤연','2051129','010-6750-3754','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 프로그래밍',to_date('18/09/03','RR/MM/DD'),to_date('18/09/21','RR/MM/DD'),'웹 개발자를 위한 Spring 4.0 프로그래밍','설유경',7,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('신재경','1315562','010-1907-7667','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 프로그래밍',to_date('18/09/03','RR/MM/DD'),to_date('18/09/21','RR/MM/DD'),'웹 개발자를 위한 Spring 4.0 프로그래밍','설유경',1,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('유종중','2626472','010-2526-5900','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','Full-stack 응용 프로젝트 제작',to_date('18/09/24','RR/MM/DD'),to_date('18/10/12','RR/MM/DD'),'Do it! HTML5- CSS3 웹 표준의 정석(2017)','설유경',22,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('문장소','1949782','010-5241-5306','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','Full-stack 응용 프로젝트 제작',to_date('18/09/24','RR/MM/DD'),to_date('18/10/12','RR/MM/DD'),'Do it! HTML5- CSS3 웹 표준의 정석(2017)','설유경',8,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('문행존','1120493','010-9032-5183','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 서버 구축 실무',to_date('18/10/15','RR/MM/DD'),to_date('18/11/02','RR/MM/DD'),'텐서플로를 활용한 머신러닝','설유경',25,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('우장존','1165873','010-1865-3083','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 서버 구축 실무',to_date('18/10/15','RR/MM/DD'),to_date('18/11/02','RR/MM/DD'),'텐서플로를 활용한 머신러닝','설유경',16,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('하재준','2585695','010-6224-7786','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 서버 구축 실무',to_date('18/10/15','RR/MM/DD'),to_date('18/11/02','RR/MM/DD'),'텐서플로를 활용한 머신러닝','설유경',13,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('우윤준','1763093','010-2229-6305','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','파이썬을 활용한 머신러닝 분석기술',to_date('18/11/05','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'블록체인 프로그래밍','설유경',20,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('건원양','2586718','010-1122-1021','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','파이썬을 활용한 머신러닝 분석기술',to_date('18/11/05','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'블록체인 프로그래밍','설유경',12,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('오소경','1655157','010-8024-1703','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','파이썬을 활용한 머신러닝 분석기술',to_date('18/11/05','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'블록체인 프로그래밍','설유경',10,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('문장소','1949782','010-5241-5306','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','파이썬을 활용한 머신러닝 분석기술',to_date('18/11/05','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'블록체인 프로그래밍','설유경',8,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('문행창','1373437','010-4539-3378','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','파이썬을 활용한 머신러닝 분석기술',to_date('18/11/05','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'블록체인 프로그래밍','설유경',6,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('오종용','2876431','010-3840-2308','Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),'제 1강의실','Full-stack Framework 구현',to_date('19/07/08','RR/MM/DD'),to_date('19/07/19','RR/MM/DD'),'Do it ! 프런트엔드 웹 디자인 입문','이상민',31,2);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('이장중','1664696','010-9854-0147','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','JAVA 프로그래밍',to_date('18/07/02','RR/MM/DD'),to_date('18/08/10','RR/MM/DD'),'Java의 정석','설유경',26,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('홍성준','1490013','010-5907-2231','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','JAVA 프로그래밍',to_date('18/07/02','RR/MM/DD'),to_date('18/08/10','RR/MM/DD'),'Java의 정석','설유경',11,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('신성규','1953731','010-9002-9482','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','JAVA 프로그래밍',to_date('18/07/02','RR/MM/DD'),to_date('18/08/10','RR/MM/DD'),'Java의 정석','설유경',9,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('차윤연','2051129','010-6750-3754','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','JAVA 프로그래밍',to_date('18/07/02','RR/MM/DD'),to_date('18/08/10','RR/MM/DD'),'Java의 정석','설유경',7,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('건소경','2687072','010-1385-1157','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','JAVA 프로그래밍',to_date('18/07/02','RR/MM/DD'),to_date('18/08/10','RR/MM/DD'),'Java의 정석','설유경',3,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('우장존','1165873','010-1865-3083','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','데이터베이스',to_date('18/08/13','RR/MM/DD'),to_date('18/08/31','RR/MM/DD'),'다양한 예제로 쉽게 배우는 오라클 SQL과 PL/SQL + 데이터 모델링 입문','설유경',16,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('차윤연','2051129','010-6750-3754','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','데이터베이스',to_date('18/08/13','RR/MM/DD'),to_date('18/08/31','RR/MM/DD'),'다양한 예제로 쉽게 배우는 오라클 SQL과 PL/SQL + 데이터 모델링 입문','설유경',7,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('유종중','2626472','010-2526-5900','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 프로그래밍',to_date('18/09/03','RR/MM/DD'),to_date('18/09/21','RR/MM/DD'),'웹 개발자를 위한 Spring 4.0 프로그래밍','설유경',22,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('우장존','1165873','010-1865-3083','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 프로그래밍',to_date('18/09/03','RR/MM/DD'),to_date('18/09/21','RR/MM/DD'),'웹 개발자를 위한 Spring 4.0 프로그래밍','설유경',16,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('하재준','2585695','010-6224-7786','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 프로그래밍',to_date('18/09/03','RR/MM/DD'),to_date('18/09/21','RR/MM/DD'),'웹 개발자를 위한 Spring 4.0 프로그래밍','설유경',13,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('오소경','1655157','010-8024-1703','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 프로그래밍',to_date('18/09/03','RR/MM/DD'),to_date('18/09/21','RR/MM/DD'),'웹 개발자를 위한 Spring 4.0 프로그래밍','설유경',10,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('건소경','2687072','010-1385-1157','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 프로그래밍',to_date('18/09/03','RR/MM/DD'),to_date('18/09/21','RR/MM/DD'),'웹 개발자를 위한 Spring 4.0 프로그래밍','설유경',3,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('차성양','1130961','010-0469-2980','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','Full-stack 응용 프로젝트 제작',to_date('18/09/24','RR/MM/DD'),to_date('18/10/12','RR/MM/DD'),'Do it! HTML5- CSS3 웹 표준의 정석(2017)','설유경',2,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('하종연','2191565','010-4109-0127','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 서버 구축 실무',to_date('18/10/15','RR/MM/DD'),to_date('18/11/02','RR/MM/DD'),'텐서플로를 활용한 머신러닝','설유경',23,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('신장준','2807647','010-1148-5172','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 서버 구축 실무',to_date('18/10/15','RR/MM/DD'),to_date('18/11/02','RR/MM/DD'),'텐서플로를 활용한 머신러닝','설유경',15,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('홍성준','1490013','010-5907-2231','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 서버 구축 실무',to_date('18/10/15','RR/MM/DD'),to_date('18/11/02','RR/MM/DD'),'텐서플로를 활용한 머신러닝','설유경',11,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('문행존','1120493','010-9032-5183','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','파이썬을 활용한 머신러닝 분석기술',to_date('18/11/05','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'블록체인 프로그래밍','설유경',25,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('문소규','2154116','010-5042-9822','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','파이썬을 활용한 머신러닝 분석기술',to_date('18/11/05','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'블록체인 프로그래밍','설유경',14,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('차장무','1301254','010-6059-7318','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','JAVA 프로그래밍',to_date('18/07/02','RR/MM/DD'),to_date('18/08/10','RR/MM/DD'),'Java의 정석','설유경',28,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('문행존','1120493','010-9032-5183','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','JAVA 프로그래밍',to_date('18/07/02','RR/MM/DD'),to_date('18/08/10','RR/MM/DD'),'Java의 정석','설유경',25,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('문윤하','2304478','010-5393-2595','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','JAVA 프로그래밍',to_date('18/07/02','RR/MM/DD'),to_date('18/08/10','RR/MM/DD'),'Java의 정석','설유경',24,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('왕성중','1262257','010-8862-6361','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','JAVA 프로그래밍',to_date('18/07/02','RR/MM/DD'),to_date('18/08/10','RR/MM/DD'),'Java의 정석','설유경',21,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('왕행하','2692636','010-4992-8438','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','데이터베이스',to_date('18/08/13','RR/MM/DD'),to_date('18/08/31','RR/MM/DD'),'다양한 예제로 쉽게 배우는 오라클 SQL과 PL/SQL + 데이터 모델링 입문','설유경',30,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('우윤준','1763093','010-2229-6305','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','데이터베이스',to_date('18/08/13','RR/MM/DD'),to_date('18/08/31','RR/MM/DD'),'다양한 예제로 쉽게 배우는 오라클 SQL과 PL/SQL + 데이터 모델링 입문','설유경',20,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('하재준','2585695','010-6224-7786','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','데이터베이스',to_date('18/08/13','RR/MM/DD'),to_date('18/08/31','RR/MM/DD'),'다양한 예제로 쉽게 배우는 오라클 SQL과 PL/SQL + 데이터 모델링 입문','설유경',13,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('신재경','1315562','010-1907-7667','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','데이터베이스',to_date('18/08/13','RR/MM/DD'),to_date('18/08/31','RR/MM/DD'),'다양한 예제로 쉽게 배우는 오라클 SQL과 PL/SQL + 데이터 모델링 입문','설유경',1,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('왕성중','1262257','010-8862-6361','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 프로그래밍',to_date('18/09/03','RR/MM/DD'),to_date('18/09/21','RR/MM/DD'),'웹 개발자를 위한 Spring 4.0 프로그래밍','설유경',21,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('문소규','2154116','010-5042-9822','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 프로그래밍',to_date('18/09/03','RR/MM/DD'),to_date('18/09/21','RR/MM/DD'),'웹 개발자를 위한 Spring 4.0 프로그래밍','설유경',14,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('문행창','1373437','010-4539-3378','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 프로그래밍',to_date('18/09/03','RR/MM/DD'),to_date('18/09/21','RR/MM/DD'),'웹 개발자를 위한 Spring 4.0 프로그래밍','설유경',6,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('이진소','2514815','010-1357-3301','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 프로그래밍',to_date('18/09/03','RR/MM/DD'),to_date('18/09/21','RR/MM/DD'),'웹 개발자를 위한 Spring 4.0 프로그래밍','설유경',5,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('왕성중','1262257','010-8862-6361','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','Full-stack 응용 프로젝트 제작',to_date('18/09/24','RR/MM/DD'),to_date('18/10/12','RR/MM/DD'),'Do it! HTML5- CSS3 웹 표준의 정석(2017)','설유경',21,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('우장존','1165873','010-1865-3083','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','Full-stack 응용 프로젝트 제작',to_date('18/09/24','RR/MM/DD'),to_date('18/10/12','RR/MM/DD'),'Do it! HTML5- CSS3 웹 표준의 정석(2017)','설유경',16,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('신장준','2807647','010-1148-5172','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','Full-stack 응용 프로젝트 제작',to_date('18/09/24','RR/MM/DD'),to_date('18/10/12','RR/MM/DD'),'Do it! HTML5- CSS3 웹 표준의 정석(2017)','설유경',15,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('차윤연','2051129','010-6750-3754','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','Full-stack 응용 프로젝트 제작',to_date('18/09/24','RR/MM/DD'),to_date('18/10/12','RR/MM/DD'),'Do it! HTML5- CSS3 웹 표준의 정석(2017)','설유경',7,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('신재경','1315562','010-1907-7667','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','Full-stack 응용 프로젝트 제작',to_date('18/09/24','RR/MM/DD'),to_date('18/10/12','RR/MM/DD'),'Do it! HTML5- CSS3 웹 표준의 정석(2017)','설유경',1,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('하형무','1987137','010-4427-2687','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 서버 구축 실무',to_date('18/10/15','RR/MM/DD'),to_date('18/11/02','RR/MM/DD'),'텐서플로를 활용한 머신러닝','설유경',29,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('문장소','1949782','010-5241-5306','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 서버 구축 실무',to_date('18/10/15','RR/MM/DD'),to_date('18/11/02','RR/MM/DD'),'텐서플로를 활용한 머신러닝','설유경',8,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('이진소','2514815','010-1357-3301','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 서버 구축 실무',to_date('18/10/15','RR/MM/DD'),to_date('18/11/02','RR/MM/DD'),'텐서플로를 활용한 머신러닝','설유경',5,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('이진소','2514815','010-1357-3301','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','파이썬을 활용한 머신러닝 분석기술',to_date('18/11/05','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'블록체인 프로그래밍','설유경',5,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('건소경','2687072','010-1385-1157','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','파이썬을 활용한 머신러닝 분석기술',to_date('18/11/05','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'블록체인 프로그래밍','설유경',3,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('차성양','1130961','010-0469-2980','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','파이썬을 활용한 머신러닝 분석기술',to_date('18/11/05','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'블록체인 프로그래밍','설유경',2,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('오종용','2876431','010-3840-2308','Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),'제 1강의실','JAVA 프로그래밍',to_date('19/01/28','RR/MM/DD'),to_date('19/03/22','RR/MM/DD'),'Java의 정석','이상민',31,2);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('문소규','2154116','010-5042-9822','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','JAVA 프로그래밍',to_date('18/07/02','RR/MM/DD'),to_date('18/08/10','RR/MM/DD'),'Java의 정석','설유경',14,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('이장중','1664696','010-9854-0147','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','데이터베이스',to_date('18/08/13','RR/MM/DD'),to_date('18/08/31','RR/MM/DD'),'다양한 예제로 쉽게 배우는 오라클 SQL과 PL/SQL + 데이터 모델링 입문','설유경',26,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('오소경','1655157','010-8024-1703','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','데이터베이스',to_date('18/08/13','RR/MM/DD'),to_date('18/08/31','RR/MM/DD'),'다양한 예제로 쉽게 배우는 오라클 SQL과 PL/SQL + 데이터 모델링 입문','설유경',10,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('하형무','1987137','010-4427-2687','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 프로그래밍',to_date('18/09/03','RR/MM/DD'),to_date('18/09/21','RR/MM/DD'),'웹 개발자를 위한 Spring 4.0 프로그래밍','설유경',29,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('유장창','2752844','010-0784-9618','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 프로그래밍',to_date('18/09/03','RR/MM/DD'),to_date('18/09/21','RR/MM/DD'),'웹 개발자를 위한 Spring 4.0 프로그래밍','설유경',27,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('문행존','1120493','010-9032-5183','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 프로그래밍',to_date('18/09/03','RR/MM/DD'),to_date('18/09/21','RR/MM/DD'),'웹 개발자를 위한 Spring 4.0 프로그래밍','설유경',25,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('문윤하','2304478','010-5393-2595','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 프로그래밍',to_date('18/09/03','RR/MM/DD'),to_date('18/09/21','RR/MM/DD'),'웹 개발자를 위한 Spring 4.0 프로그래밍','설유경',24,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('이병준','1570718','010-9426-9467','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 프로그래밍',to_date('18/09/03','RR/MM/DD'),to_date('18/09/21','RR/MM/DD'),'웹 개발자를 위한 Spring 4.0 프로그래밍','설유경',17,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('차성양','1130961','010-0469-2980','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 프로그래밍',to_date('18/09/03','RR/MM/DD'),to_date('18/09/21','RR/MM/DD'),'웹 개발자를 위한 Spring 4.0 프로그래밍','설유경',2,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('문윤하','2304478','010-5393-2595','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','Full-stack 응용 프로젝트 제작',to_date('18/09/24','RR/MM/DD'),to_date('18/10/12','RR/MM/DD'),'Do it! HTML5- CSS3 웹 표준의 정석(2017)','설유경',24,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('왕소경','2200292','010-6554-4554','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','Full-stack 응용 프로젝트 제작',to_date('18/09/24','RR/MM/DD'),to_date('18/10/12','RR/MM/DD'),'Do it! HTML5- CSS3 웹 표준의 정석(2017)','설유경',18,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('신희용','1989703','010-1013-2298','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','Full-stack 응용 프로젝트 제작',to_date('18/09/24','RR/MM/DD'),to_date('18/10/12','RR/MM/DD'),'Do it! HTML5- CSS3 웹 표준의 정석(2017)','설유경',4,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('우윤준','1763093','010-2229-6305','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 서버 구축 실무',to_date('18/10/15','RR/MM/DD'),to_date('18/11/02','RR/MM/DD'),'텐서플로를 활용한 머신러닝','설유경',20,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('오병규','2013774','010-9968-6566','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 서버 구축 실무',to_date('18/10/15','RR/MM/DD'),to_date('18/11/02','RR/MM/DD'),'텐서플로를 활용한 머신러닝','설유경',19,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('문소규','2154116','010-5042-9822','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 서버 구축 실무',to_date('18/10/15','RR/MM/DD'),to_date('18/11/02','RR/MM/DD'),'텐서플로를 활용한 머신러닝','설유경',14,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('건원양','2586718','010-1122-1021','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 서버 구축 실무',to_date('18/10/15','RR/MM/DD'),to_date('18/11/02','RR/MM/DD'),'텐서플로를 활용한 머신러닝','설유경',12,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('차장무','1301254','010-6059-7318','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','파이썬을 활용한 머신러닝 분석기술',to_date('18/11/05','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'블록체인 프로그래밍','설유경',28,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('하종연','2191565','010-4109-0127','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','파이썬을 활용한 머신러닝 분석기술',to_date('18/11/05','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'블록체인 프로그래밍','설유경',23,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('오병규','2013774','010-9968-6566','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','파이썬을 활용한 머신러닝 분석기술',to_date('18/11/05','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'블록체인 프로그래밍','설유경',19,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('하종연','2191565','010-4109-0127','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','JAVA 프로그래밍',to_date('18/07/02','RR/MM/DD'),to_date('18/08/10','RR/MM/DD'),'Java의 정석','설유경',23,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('우윤준','1763093','010-2229-6305','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','JAVA 프로그래밍',to_date('18/07/02','RR/MM/DD'),to_date('18/08/10','RR/MM/DD'),'Java의 정석','설유경',20,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('왕소경','2200292','010-6554-4554','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','JAVA 프로그래밍',to_date('18/07/02','RR/MM/DD'),to_date('18/08/10','RR/MM/DD'),'Java의 정석','설유경',18,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('신장준','2807647','010-1148-5172','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','JAVA 프로그래밍',to_date('18/07/02','RR/MM/DD'),to_date('18/08/10','RR/MM/DD'),'Java의 정석','설유경',15,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('문장소','1949782','010-5241-5306','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','JAVA 프로그래밍',to_date('18/07/02','RR/MM/DD'),to_date('18/08/10','RR/MM/DD'),'Java의 정석','설유경',8,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('문행창','1373437','010-4539-3378','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','JAVA 프로그래밍',to_date('18/07/02','RR/MM/DD'),to_date('18/08/10','RR/MM/DD'),'Java의 정석','설유경',6,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('이진소','2514815','010-1357-3301','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','JAVA 프로그래밍',to_date('18/07/02','RR/MM/DD'),to_date('18/08/10','RR/MM/DD'),'Java의 정석','설유경',5,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('유장창','2752844','010-0784-9618','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','데이터베이스',to_date('18/08/13','RR/MM/DD'),to_date('18/08/31','RR/MM/DD'),'다양한 예제로 쉽게 배우는 오라클 SQL과 PL/SQL + 데이터 모델링 입문','설유경',27,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('문윤하','2304478','010-5393-2595','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','데이터베이스',to_date('18/08/13','RR/MM/DD'),to_date('18/08/31','RR/MM/DD'),'다양한 예제로 쉽게 배우는 오라클 SQL과 PL/SQL + 데이터 모델링 입문','설유경',24,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('신장준','2807647','010-1148-5172','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','데이터베이스',to_date('18/08/13','RR/MM/DD'),to_date('18/08/31','RR/MM/DD'),'다양한 예제로 쉽게 배우는 오라클 SQL과 PL/SQL + 데이터 모델링 입문','설유경',15,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('이장중','1664696','010-9854-0147','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 프로그래밍',to_date('18/09/03','RR/MM/DD'),to_date('18/09/21','RR/MM/DD'),'웹 개발자를 위한 Spring 4.0 프로그래밍','설유경',26,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('우윤준','1763093','010-2229-6305','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 프로그래밍',to_date('18/09/03','RR/MM/DD'),to_date('18/09/21','RR/MM/DD'),'웹 개발자를 위한 Spring 4.0 프로그래밍','설유경',20,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('오병규','2013774','010-9968-6566','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 프로그래밍',to_date('18/09/03','RR/MM/DD'),to_date('18/09/21','RR/MM/DD'),'웹 개발자를 위한 Spring 4.0 프로그래밍','설유경',19,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('신성규','1953731','010-9002-9482','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 프로그래밍',to_date('18/09/03','RR/MM/DD'),to_date('18/09/21','RR/MM/DD'),'웹 개발자를 위한 Spring 4.0 프로그래밍','설유경',9,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('왕행하','2692636','010-4992-8438','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','Full-stack 응용 프로젝트 제작',to_date('18/09/24','RR/MM/DD'),to_date('18/10/12','RR/MM/DD'),'Do it! HTML5- CSS3 웹 표준의 정석(2017)','설유경',30,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('유장창','2752844','010-0784-9618','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','Full-stack 응용 프로젝트 제작',to_date('18/09/24','RR/MM/DD'),to_date('18/10/12','RR/MM/DD'),'Do it! HTML5- CSS3 웹 표준의 정석(2017)','설유경',27,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('이병준','1570718','010-9426-9467','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','Full-stack 응용 프로젝트 제작',to_date('18/09/24','RR/MM/DD'),to_date('18/10/12','RR/MM/DD'),'Do it! HTML5- CSS3 웹 표준의 정석(2017)','설유경',17,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('문소규','2154116','010-5042-9822','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','Full-stack 응용 프로젝트 제작',to_date('18/09/24','RR/MM/DD'),to_date('18/10/12','RR/MM/DD'),'Do it! HTML5- CSS3 웹 표준의 정석(2017)','설유경',14,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('하재준','2585695','010-6224-7786','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','Full-stack 응용 프로젝트 제작',to_date('18/09/24','RR/MM/DD'),to_date('18/10/12','RR/MM/DD'),'Do it! HTML5- CSS3 웹 표준의 정석(2017)','설유경',13,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('문윤하','2304478','010-5393-2595','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 서버 구축 실무',to_date('18/10/15','RR/MM/DD'),to_date('18/11/02','RR/MM/DD'),'텐서플로를 활용한 머신러닝','설유경',24,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('이병준','1570718','010-9426-9467','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 서버 구축 실무',to_date('18/10/15','RR/MM/DD'),to_date('18/11/02','RR/MM/DD'),'텐서플로를 활용한 머신러닝','설유경',17,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('오소경','1655157','010-8024-1703','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 서버 구축 실무',to_date('18/10/15','RR/MM/DD'),to_date('18/11/02','RR/MM/DD'),'텐서플로를 활용한 머신러닝','설유경',10,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('문행창','1373437','010-4539-3378','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 서버 구축 실무',to_date('18/10/15','RR/MM/DD'),to_date('18/11/02','RR/MM/DD'),'텐서플로를 활용한 머신러닝','설유경',6,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('신재경','1315562','010-1907-7667','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 서버 구축 실무',to_date('18/10/15','RR/MM/DD'),to_date('18/11/02','RR/MM/DD'),'텐서플로를 활용한 머신러닝','설유경',1,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('유장창','2752844','010-0784-9618','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','파이썬을 활용한 머신러닝 분석기술',to_date('18/11/05','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'블록체인 프로그래밍','설유경',27,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('문윤하','2304478','010-5393-2595','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','파이썬을 활용한 머신러닝 분석기술',to_date('18/11/05','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'블록체인 프로그래밍','설유경',24,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('우장존','1165873','010-1865-3083','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','파이썬을 활용한 머신러닝 분석기술',to_date('18/11/05','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'블록체인 프로그래밍','설유경',16,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('신희용','1989703','010-1013-2298','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','파이썬을 활용한 머신러닝 분석기술',to_date('18/11/05','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'블록체인 프로그래밍','설유경',4,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('유장창','2752844','010-0784-9618','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','JAVA 프로그래밍',to_date('18/07/02','RR/MM/DD'),to_date('18/08/10','RR/MM/DD'),'Java의 정석','설유경',27,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('오병규','2013774','010-9968-6566','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','JAVA 프로그래밍',to_date('18/07/02','RR/MM/DD'),to_date('18/08/10','RR/MM/DD'),'Java의 정석','설유경',19,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('신재경','1315562','010-1907-7667','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','JAVA 프로그래밍',to_date('18/07/02','RR/MM/DD'),to_date('18/08/10','RR/MM/DD'),'Java의 정석','설유경',1,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('하종연','2191565','010-4109-0127','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','데이터베이스',to_date('18/08/13','RR/MM/DD'),to_date('18/08/31','RR/MM/DD'),'다양한 예제로 쉽게 배우는 오라클 SQL과 PL/SQL + 데이터 모델링 입문','설유경',23,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('오병규','2013774','010-9968-6566','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','데이터베이스',to_date('18/08/13','RR/MM/DD'),to_date('18/08/31','RR/MM/DD'),'다양한 예제로 쉽게 배우는 오라클 SQL과 PL/SQL + 데이터 모델링 입문','설유경',19,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('건원양','2586718','010-1122-1021','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','데이터베이스',to_date('18/08/13','RR/MM/DD'),to_date('18/08/31','RR/MM/DD'),'다양한 예제로 쉽게 배우는 오라클 SQL과 PL/SQL + 데이터 모델링 입문','설유경',12,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('홍성준','1490013','010-5907-2231','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','데이터베이스',to_date('18/08/13','RR/MM/DD'),to_date('18/08/31','RR/MM/DD'),'다양한 예제로 쉽게 배우는 오라클 SQL과 PL/SQL + 데이터 모델링 입문','설유경',11,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('신성규','1953731','010-9002-9482','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','데이터베이스',to_date('18/08/13','RR/MM/DD'),to_date('18/08/31','RR/MM/DD'),'다양한 예제로 쉽게 배우는 오라클 SQL과 PL/SQL + 데이터 모델링 입문','설유경',9,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('신희용','1989703','010-1013-2298','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','데이터베이스',to_date('18/08/13','RR/MM/DD'),to_date('18/08/31','RR/MM/DD'),'다양한 예제로 쉽게 배우는 오라클 SQL과 PL/SQL + 데이터 모델링 입문','설유경',4,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('건소경','2687072','010-1385-1157','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','데이터베이스',to_date('18/08/13','RR/MM/DD'),to_date('18/08/31','RR/MM/DD'),'다양한 예제로 쉽게 배우는 오라클 SQL과 PL/SQL + 데이터 모델링 입문','설유경',3,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('차성양','1130961','010-0469-2980','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','데이터베이스',to_date('18/08/13','RR/MM/DD'),to_date('18/08/31','RR/MM/DD'),'다양한 예제로 쉽게 배우는 오라클 SQL과 PL/SQL + 데이터 모델링 입문','설유경',2,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('하종연','2191565','010-4109-0127','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 프로그래밍',to_date('18/09/03','RR/MM/DD'),to_date('18/09/21','RR/MM/DD'),'웹 개발자를 위한 Spring 4.0 프로그래밍','설유경',23,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('왕소경','2200292','010-6554-4554','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 프로그래밍',to_date('18/09/03','RR/MM/DD'),to_date('18/09/21','RR/MM/DD'),'웹 개발자를 위한 Spring 4.0 프로그래밍','설유경',18,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('신장준','2807647','010-1148-5172','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 프로그래밍',to_date('18/09/03','RR/MM/DD'),to_date('18/09/21','RR/MM/DD'),'웹 개발자를 위한 Spring 4.0 프로그래밍','설유경',15,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('문장소','1949782','010-5241-5306','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 프로그래밍',to_date('18/09/03','RR/MM/DD'),to_date('18/09/21','RR/MM/DD'),'웹 개발자를 위한 Spring 4.0 프로그래밍','설유경',8,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('차장무','1301254','010-6059-7318','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','Full-stack 응용 프로젝트 제작',to_date('18/09/24','RR/MM/DD'),to_date('18/10/12','RR/MM/DD'),'Do it! HTML5- CSS3 웹 표준의 정석(2017)','설유경',28,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('이장중','1664696','010-9854-0147','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','Full-stack 응용 프로젝트 제작',to_date('18/09/24','RR/MM/DD'),to_date('18/10/12','RR/MM/DD'),'Do it! HTML5- CSS3 웹 표준의 정석(2017)','설유경',26,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('문행존','1120493','010-9032-5183','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','Full-stack 응용 프로젝트 제작',to_date('18/09/24','RR/MM/DD'),to_date('18/10/12','RR/MM/DD'),'Do it! HTML5- CSS3 웹 표준의 정석(2017)','설유경',25,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('오소경','1655157','010-8024-1703','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','Full-stack 응용 프로젝트 제작',to_date('18/09/24','RR/MM/DD'),to_date('18/10/12','RR/MM/DD'),'Do it! HTML5- CSS3 웹 표준의 정석(2017)','설유경',10,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('신성규','1953731','010-9002-9482','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','Full-stack 응용 프로젝트 제작',to_date('18/09/24','RR/MM/DD'),to_date('18/10/12','RR/MM/DD'),'Do it! HTML5- CSS3 웹 표준의 정석(2017)','설유경',9,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('이진소','2514815','010-1357-3301','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','Full-stack 응용 프로젝트 제작',to_date('18/09/24','RR/MM/DD'),to_date('18/10/12','RR/MM/DD'),'Do it! HTML5- CSS3 웹 표준의 정석(2017)','설유경',5,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('건소경','2687072','010-1385-1157','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','Full-stack 응용 프로젝트 제작',to_date('18/09/24','RR/MM/DD'),to_date('18/10/12','RR/MM/DD'),'Do it! HTML5- CSS3 웹 표준의 정석(2017)','설유경',3,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('차장무','1301254','010-6059-7318','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 서버 구축 실무',to_date('18/10/15','RR/MM/DD'),to_date('18/11/02','RR/MM/DD'),'텐서플로를 활용한 머신러닝','설유경',28,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('건소경','2687072','010-1385-1157','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 서버 구축 실무',to_date('18/10/15','RR/MM/DD'),to_date('18/11/02','RR/MM/DD'),'텐서플로를 활용한 머신러닝','설유경',3,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('왕행하','2692636','010-4992-8438','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','파이썬을 활용한 머신러닝 분석기술',to_date('18/11/05','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'블록체인 프로그래밍','설유경',30,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('하형무','1987137','010-4427-2687','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','파이썬을 활용한 머신러닝 분석기술',to_date('18/11/05','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'블록체인 프로그래밍','설유경',29,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('유종중','2626472','010-2526-5900','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','파이썬을 활용한 머신러닝 분석기술',to_date('18/11/05','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'블록체인 프로그래밍','설유경',22,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('이병준','1570718','010-9426-9467','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','파이썬을 활용한 머신러닝 분석기술',to_date('18/11/05','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'블록체인 프로그래밍','설유경',17,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('홍성준','1490013','010-5907-2231','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','파이썬을 활용한 머신러닝 분석기술',to_date('18/11/05','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'블록체인 프로그래밍','설유경',11,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('오종용','2876431','010-3840-2308','Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),'제 1강의실','데이터베이스',to_date('19/03/25','RR/MM/DD'),to_date('19/04/19','RR/MM/DD'),'다양한 예제로 쉽게 배우는 오라클 SQL과 PL/SQL + 데이터 모델링 입문','이상민',31,2);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('오종용','2876431','010-3840-2308','Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),'제 1강의실','Front-end 웹 애플리케이션 구현',to_date('19/06/10','RR/MM/DD'),to_date('19/07/21','RR/MM/DD'),'자바스크립트 프론트엔드 프로젝트 가이드','이상민',31,2);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('오종용','2876431','010-3840-2308','Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),'제 1강의실','반응형 웹 개발기법',to_date('19/08/05','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),'자바스크립트 프론트엔드 프로젝트 가이드','이상민',31,2);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('왕행하','2692636','010-4992-8438','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','JAVA 프로그래밍',to_date('18/07/02','RR/MM/DD'),to_date('18/08/10','RR/MM/DD'),'Java의 정석','설유경',30,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('유종중','2626472','010-2526-5900','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','JAVA 프로그래밍',to_date('18/07/02','RR/MM/DD'),to_date('18/08/10','RR/MM/DD'),'Java의 정석','설유경',22,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('신희용','1989703','010-1013-2298','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','JAVA 프로그래밍',to_date('18/07/02','RR/MM/DD'),to_date('18/08/10','RR/MM/DD'),'Java의 정석','설유경',4,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('하형무','1987137','010-4427-2687','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','데이터베이스',to_date('18/08/13','RR/MM/DD'),to_date('18/08/31','RR/MM/DD'),'다양한 예제로 쉽게 배우는 오라클 SQL과 PL/SQL + 데이터 모델링 입문','설유경',29,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('문행존','1120493','010-9032-5183','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','데이터베이스',to_date('18/08/13','RR/MM/DD'),to_date('18/08/31','RR/MM/DD'),'다양한 예제로 쉽게 배우는 오라클 SQL과 PL/SQL + 데이터 모델링 입문','설유경',25,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('왕성중','1262257','010-8862-6361','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','데이터베이스',to_date('18/08/13','RR/MM/DD'),to_date('18/08/31','RR/MM/DD'),'다양한 예제로 쉽게 배우는 오라클 SQL과 PL/SQL + 데이터 모델링 입문','설유경',21,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('왕소경','2200292','010-6554-4554','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','데이터베이스',to_date('18/08/13','RR/MM/DD'),to_date('18/08/31','RR/MM/DD'),'다양한 예제로 쉽게 배우는 오라클 SQL과 PL/SQL + 데이터 모델링 입문','설유경',18,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('문행창','1373437','010-4539-3378','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','데이터베이스',to_date('18/08/13','RR/MM/DD'),to_date('18/08/31','RR/MM/DD'),'다양한 예제로 쉽게 배우는 오라클 SQL과 PL/SQL + 데이터 모델링 입문','설유경',6,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('건원양','2586718','010-1122-1021','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 프로그래밍',to_date('18/09/03','RR/MM/DD'),to_date('18/09/21','RR/MM/DD'),'웹 개발자를 위한 Spring 4.0 프로그래밍','설유경',12,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('하종연','2191565','010-4109-0127','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','Full-stack 응용 프로젝트 제작',to_date('18/09/24','RR/MM/DD'),to_date('18/10/12','RR/MM/DD'),'Do it! HTML5- CSS3 웹 표준의 정석(2017)','설유경',23,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('우윤준','1763093','010-2229-6305','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','Full-stack 응용 프로젝트 제작',to_date('18/09/24','RR/MM/DD'),to_date('18/10/12','RR/MM/DD'),'Do it! HTML5- CSS3 웹 표준의 정석(2017)','설유경',20,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('왕행하','2692636','010-4992-8438','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 서버 구축 실무',to_date('18/10/15','RR/MM/DD'),to_date('18/11/02','RR/MM/DD'),'텐서플로를 활용한 머신러닝','설유경',30,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('이장중','1664696','010-9854-0147','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 서버 구축 실무',to_date('18/10/15','RR/MM/DD'),to_date('18/11/02','RR/MM/DD'),'텐서플로를 활용한 머신러닝','설유경',26,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('왕성중','1262257','010-8862-6361','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 서버 구축 실무',to_date('18/10/15','RR/MM/DD'),to_date('18/11/02','RR/MM/DD'),'텐서플로를 활용한 머신러닝','설유경',21,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('신성규','1953731','010-9002-9482','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 서버 구축 실무',to_date('18/10/15','RR/MM/DD'),to_date('18/11/02','RR/MM/DD'),'텐서플로를 활용한 머신러닝','설유경',9,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('차윤연','2051129','010-6750-3754','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 서버 구축 실무',to_date('18/10/15','RR/MM/DD'),to_date('18/11/02','RR/MM/DD'),'텐서플로를 활용한 머신러닝','설유경',7,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('신희용','1989703','010-1013-2298','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','웹 서버 구축 실무',to_date('18/10/15','RR/MM/DD'),to_date('18/11/02','RR/MM/DD'),'텐서플로를 활용한 머신러닝','설유경',4,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('왕성중','1262257','010-8862-6361','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','파이썬을 활용한 머신러닝 분석기술',to_date('18/11/05','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'블록체인 프로그래밍','설유경',21,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('왕소경','2200292','010-6554-4554','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','파이썬을 활용한 머신러닝 분석기술',to_date('18/11/05','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'블록체인 프로그래밍','설유경',18,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('신장준','2807647','010-1148-5172','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','파이썬을 활용한 머신러닝 분석기술',to_date('18/11/05','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'블록체인 프로그래밍','설유경',15,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('신성규','1953731','010-9002-9482','파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'제 1강의실','파이썬을 활용한 머신러닝 분석기술',to_date('18/11/05','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'블록체인 프로그래밍','설유경',9,1);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('오종용','2876431','010-3840-2308','Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),'제 1강의실','JAVA 애플리케이션 구현',to_date('19/04/22','RR/MM/DD'),to_date('19/05/10','RR/MM/DD'),'이것이 자바다','이상민',31,2);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('오종용','2876431','010-3840-2308','Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),'제 1강의실','애플리케이션 테스트 수행',to_date('19/05/13','RR/MM/DD'),to_date('19/05/24','RR/MM/DD'),'Java의 정석','이상민',31,2);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('오종용','2876431','010-3840-2308','Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),'제 1강의실','Back-end 웹 애플리케이션 구현',to_date('19/06/24','RR/MM/DD'),to_date('19/07/05','RR/MM/DD'),'코드로 배우는 스프링 웹 프로젝트(개정판)','이상민',31,2);
Insert into HONG.VWCOUSUBSTUTEXLEC (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VROOMNAME,VSUBNAME,VSUBSTART,VSUBEND,VTEXNAME,VLECNAME,VSINFOSEQ,VCOUSEQ) values ('오종용','2876431','010-3840-2308','Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),'제 1강의실','반응형 웹 개발기법',to_date('19/07/22','RR/MM/DD'),to_date('19/08/02','RR/MM/DD'),'네트워크 보안 시스템 구축과 보안 관제','이상민',31,2);
REM INSERTING into HONG.VWDATE
SET DEFINE OFF;
Insert into HONG.VWDATE (REGDATE) values (to_date('18/08/13','RR/MM/DD'));
Insert into HONG.VWDATE (REGDATE) values (to_date('18/08/14','RR/MM/DD'));
Insert into HONG.VWDATE (REGDATE) values (to_date('18/08/15','RR/MM/DD'));
Insert into HONG.VWDATE (REGDATE) values (to_date('18/08/16','RR/MM/DD'));
Insert into HONG.VWDATE (REGDATE) values (to_date('18/08/17','RR/MM/DD'));
Insert into HONG.VWDATE (REGDATE) values (to_date('18/08/18','RR/MM/DD'));
Insert into HONG.VWDATE (REGDATE) values (to_date('18/08/19','RR/MM/DD'));
Insert into HONG.VWDATE (REGDATE) values (to_date('18/08/20','RR/MM/DD'));
Insert into HONG.VWDATE (REGDATE) values (to_date('18/08/21','RR/MM/DD'));
Insert into HONG.VWDATE (REGDATE) values (to_date('18/08/22','RR/MM/DD'));
Insert into HONG.VWDATE (REGDATE) values (to_date('18/08/23','RR/MM/DD'));
Insert into HONG.VWDATE (REGDATE) values (to_date('18/08/24','RR/MM/DD'));
Insert into HONG.VWDATE (REGDATE) values (to_date('18/08/25','RR/MM/DD'));
Insert into HONG.VWDATE (REGDATE) values (to_date('18/08/26','RR/MM/DD'));
Insert into HONG.VWDATE (REGDATE) values (to_date('18/08/27','RR/MM/DD'));
Insert into HONG.VWDATE (REGDATE) values (to_date('18/08/28','RR/MM/DD'));
Insert into HONG.VWDATE (REGDATE) values (to_date('18/08/29','RR/MM/DD'));
Insert into HONG.VWDATE (REGDATE) values (to_date('18/08/30','RR/MM/DD'));
Insert into HONG.VWDATE (REGDATE) values (to_date('18/08/31','RR/MM/DD'));
REM INSERTING into HONG.VWGRASUB
SET DEFINE OFF;
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (1,1);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (2,2);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (3,3);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (4,4);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (5,5);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (6,6);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (7,7);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (1,1);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (2,2);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (3,3);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (4,4);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (5,5);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (6,6);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (7,7);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (1,1);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (2,2);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (3,3);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (4,4);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (5,5);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (6,6);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (7,7);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (1,1);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (2,2);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (3,3);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (4,4);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (5,5);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (6,6);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (7,7);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (1,1);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (2,2);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (3,3);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (4,4);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (5,5);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (6,6);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (7,7);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (1,1);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (2,2);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (3,3);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (4,4);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (5,5);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (6,6);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (7,7);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (1,1);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (2,2);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (3,3);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (4,4);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (5,5);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (6,6);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (7,7);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (1,1);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (2,2);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (3,3);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (4,4);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (5,5);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (6,6);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (7,7);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (1,1);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (2,2);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (3,3);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (4,4);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (5,5);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (6,6);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (7,7);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (1,1);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (2,2);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (3,3);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (4,4);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (5,5);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (6,6);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (7,7);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (1,1);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (2,2);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (3,3);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (4,4);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (5,5);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (6,6);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (7,7);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (1,1);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (2,2);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (3,3);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (4,4);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (5,5);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (6,6);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (7,7);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (1,1);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (2,2);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (3,3);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (4,4);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (5,5);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (6,6);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (7,7);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (1,1);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (2,2);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (3,3);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (4,4);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (5,5);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (6,6);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (7,7);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (1,1);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (2,2);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (3,3);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (4,4);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (5,5);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (6,6);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (7,7);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (1,1);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (2,2);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (3,3);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (4,4);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (5,5);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (6,6);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (7,7);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (1,1);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (2,2);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (3,3);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (4,4);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (5,5);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (6,6);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (7,7);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (1,1);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (2,2);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (3,3);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (4,4);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (5,5);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (6,6);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (7,7);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (1,1);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (2,2);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (3,3);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (4,4);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (5,5);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (6,6);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (7,7);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (1,1);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (2,2);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (3,3);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (4,4);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (5,5);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (6,6);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (7,7);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (1,1);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (2,2);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (3,3);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (4,4);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (5,5);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (6,6);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (7,7);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (1,1);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (2,2);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (3,3);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (4,4);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (5,5);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (6,6);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (7,7);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (1,1);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (2,2);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (3,3);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (4,4);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (5,5);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (6,6);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (7,7);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (1,1);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (2,2);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (3,3);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (4,4);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (5,5);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (6,6);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (7,7);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (1,1);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (2,2);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (3,3);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (4,4);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (5,5);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (6,6);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (7,7);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (1,1);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (2,2);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (3,3);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (4,4);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (5,5);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (6,6);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (7,7);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (1,1);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (2,2);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (3,3);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (4,4);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (5,5);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (6,6);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (7,7);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (1,1);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (2,2);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (3,3);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (4,4);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (5,5);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (6,6);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (7,7);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (1,1);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (2,2);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (3,3);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (4,4);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (5,5);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (6,6);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (7,7);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (1,1);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (2,2);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (3,3);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (4,4);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (5,5);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (6,6);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (7,7);
Insert into HONG.VWGRASUB (VSUBSEQ,VGRASUBSEQ) values (1,1);
REM INSERTING into HONG.VWLECTURERINFO
SET DEFINE OFF;
Insert into HONG.VWLECTURERINFO ("vCourseNum","vCourseName","vCourseStart","vCourseEnd","vClassroomName","subjectState","studentCount") values (1,'파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),'1강의실','O',30);
Insert into HONG.VWLECTURERINFO ("vCourseNum","vCourseName","vCourseStart","vCourseEnd","vClassroomName","subjectState","studentCount") values (2,'Java를 활용한 웹 응용 SW개발자 양성과정',to_date('19/01/28','RR/MM/DD'),to_date('19/08/23','RR/MM/DD'),'1강의실','O',30);
Insert into HONG.VWLECTURERINFO ("vCourseNum","vCourseName","vCourseStart","vCourseEnd","vClassroomName","subjectState","studentCount") values (3,'Java기반의 스마트 웹 앱콘텐츠 양성과정',to_date('19/04/29','RR/MM/DD'),to_date('19/10/25','RR/MM/DD'),'4강의실','O',13);
REM INSERTING into HONG.VWSINFO
SET DEFINE OFF;
REM INSERTING into HONG.VWSINFOGRA
SET DEFINE OFF;
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('신재경','1315562',36,36,1,1);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('신재경','1315562',10,10,1,2);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('신재경','1315562',28,36,1,3);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('신재경','1315562',32,32,1,4);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('신재경','1315562',36,32,1,5);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('신재경','1315562',32,32,1,6);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('신재경','1315562',28,28,1,7);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('차성양','1130961',32,28,1,1);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('차성양','1130961',36,32,1,2);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('차성양','1130961',28,36,1,3);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('차성양','1130961',32,36,1,4);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('차성양','1130961',28,32,1,5);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('차성양','1130961',32,32,1,6);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('차성양','1130961',40,40,1,7);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('건소경','2687072',40,40,1,1);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('건소경','2687072',36,32,1,2);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('건소경','2687072',40,36,1,3);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('건소경','2687072',32,32,1,4);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('건소경','2687072',40,36,1,5);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('건소경','2687072',36,36,1,6);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('건소경','2687072',40,36,1,7);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('신희용','1989703',20,24,1,1);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('신희용','1989703',24,28,1,2);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('신희용','1989703',28,28,1,3);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('신희용','1989703',32,32,1,4);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('신희용','1989703',32,32,1,5);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('신희용','1989703',36,28,1,6);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('신희용','1989703',32,32,1,7);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('이진소','2514815',40,40,1,1);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('이진소','2514815',36,32,1,2);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('이진소','2514815',32,36,1,3);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('이진소','2514815',32,32,1,4);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('이진소','2514815',40,36,1,5);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('이진소','2514815',36,36,1,6);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('이진소','2514815',40,36,1,7);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('문행창','1373437',24,20,1,1);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('문행창','1373437',24,24,1,2);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('문행창','1373437',24,28,1,3);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('문행창','1373437',32,28,1,4);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('문행창','1373437',32,36,1,5);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('문행창','1373437',36,36,1,6);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('문행창','1373437',40,40,1,7);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('차윤연','2051129',20,20,1,1);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('차윤연','2051129',24,28,1,2);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('차윤연','2051129',20,24,1,3);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('차윤연','2051129',24,20,1,4);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('차윤연','2051129',20,28,1,5);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('차윤연','2051129',32,36,1,6);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('차윤연','2051129',32,32,1,7);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('문장소','1949782',40,40,1,1);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('문장소','1949782',36,32,1,2);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('문장소','1949782',40,36,1,3);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('문장소','1949782',40,40,1,4);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('문장소','1949782',40,36,1,5);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('문장소','1949782',36,36,1,6);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('문장소','1949782',40,36,1,7);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('신성규','1953731',24,28,1,1);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('신성규','1953731',32,28,1,2);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('신성규','1953731',28,32,1,3);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('신성규','1953731',32,32,1,4);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('신성규','1953731',32,28,1,5);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('신성규','1953731',28,32,1,6);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('신성규','1953731',32,28,1,7);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('오소경','1655157',16,12,1,1);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('오소경','1655157',20,24,1,2);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('오소경','1655157',24,28,1,3);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('오소경','1655157',32,28,1,4);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('오소경','1655157',28,24,1,5);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('오소경','1655157',36,36,1,6);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('오소경','1655157',40,36,1,7);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('홍성준','1490013',16,12,1,1);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('홍성준','1490013',20,24,1,2);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('홍성준','1490013',20,20,1,3);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('홍성준','1490013',24,28,1,4);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('홍성준','1490013',28,24,1,5);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('홍성준','1490013',24,20,1,6);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('홍성준','1490013',28,28,1,7);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('건원양','2586718',28,24,1,1);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('건원양','2586718',28,24,1,2);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('건원양','2586718',28,28,1,3);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('건원양','2586718',32,32,1,4);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('건원양','2586718',32,32,1,5);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('건원양','2586718',36,36,1,6);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('건원양','2586718',40,36,1,7);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('하재준','2585695',24,28,1,1);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('하재준','2585695',28,24,1,2);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('하재준','2585695',24,28,1,3);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('하재준','2585695',32,28,1,4);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('하재준','2585695',28,24,1,5);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('하재준','2585695',28,32,1,6);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('하재준','2585695',32,36,1,7);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('문소규','2154116',28,28,1,1);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('문소규','2154116',24,24,1,2);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('문소규','2154116',24,28,1,3);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('문소규','2154116',32,28,1,4);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('문소규','2154116',28,28,1,5);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('문소규','2154116',32,36,1,6);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('문소규','2154116',36,36,1,7);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('신장준','2807647',32,28,1,1);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('신장준','2807647',28,32,1,2);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('신장준','2807647',24,28,1,3);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('신장준','2807647',32,28,1,4);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('신장준','2807647',28,24,1,5);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('신장준','2807647',36,36,1,6);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('신장준','2807647',40,36,1,7);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('우장존','1165873',32,28,1,1);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('우장존','1165873',20,24,1,2);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('우장존','1165873',24,20,1,3);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('우장존','1165873',32,28,1,4);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('우장존','1165873',28,24,1,5);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('우장존','1165873',32,32,1,6);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('우장존','1165873',32,32,1,7);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('이병준','1570718',12,12,1,1);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('이병준','1570718',20,24,1,2);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('이병준','1570718',24,28,1,3);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('이병준','1570718',24,28,1,4);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('이병준','1570718',28,24,1,5);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('이병준','1570718',36,32,1,6);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('이병준','1570718',32,32,1,7);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('왕소경','2200292',16,12,1,1);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('왕소경','2200292',20,24,1,2);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('왕소경','2200292',24,28,1,3);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('왕소경','2200292',20,24,1,4);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('왕소경','2200292',28,24,1,5);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('왕소경','2200292',24,20,1,6);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('왕소경','2200292',20,28,1,7);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('오병규','2013774',24,28,1,1);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('오병규','2013774',20,24,1,2);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('오병규','2013774',24,28,1,3);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('오병규','2013774',32,28,1,4);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('오병규','2013774',28,24,1,5);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('오병규','2013774',36,28,1,6);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('오병규','2013774',24,20,1,7);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('우윤준','1763093',16,12,1,1);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('우윤준','1763093',20,16,1,2);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('우윤준','1763093',24,20,1,3);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('우윤준','1763093',28,28,1,4);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('우윤준','1763093',28,24,1,5);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('우윤준','1763093',36,36,1,6);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('우윤준','1763093',32,36,1,7);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('왕성중','1262257',24,24,1,1);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('왕성중','1262257',28,24,1,2);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('왕성중','1262257',24,28,1,3);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('왕성중','1262257',32,28,1,4);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('왕성중','1262257',32,32,1,5);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('왕성중','1262257',32,36,1,6);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('왕성중','1262257',40,36,1,7);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('유종중','2626472',24,20,1,1);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('유종중','2626472',20,24,1,2);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('유종중','2626472',24,24,1,3);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('유종중','2626472',20,28,1,4);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('유종중','2626472',28,24,1,5);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('유종중','2626472',36,36,1,6);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('유종중','2626472',32,36,1,7);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('하종연','2191565',24,24,1,1);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('하종연','2191565',24,24,1,2);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('하종연','2191565',24,28,1,3);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('하종연','2191565',32,28,1,4);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('하종연','2191565',28,24,1,5);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('하종연','2191565',36,36,1,6);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('하종연','2191565',40,36,1,7);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('문윤하','2304478',28,28,1,1);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('문윤하','2304478',28,24,1,2);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('문윤하','2304478',32,28,1,3);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('문윤하','2304478',32,32,1,4);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('문윤하','2304478',36,32,1,5);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('문윤하','2304478',36,36,1,6);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('문윤하','2304478',40,36,1,7);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('문행존','1120493',30,20,1,1);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('문행존','1120493',28,24,1,2);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('문행존','1120493',32,28,1,3);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('문행존','1120493',32,32,1,4);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('문행존','1120493',28,28,1,5);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('문행존','1120493',36,32,1,6);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('문행존','1120493',28,24,1,7);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('이장중','1664696',36,36,1,1);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('이장중','1664696',32,36,1,2);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('이장중','1664696',36,40,1,3);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('이장중','1664696',32,36,1,4);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('이장중','1664696',36,40,1,5);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('이장중','1664696',40,36,1,6);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('이장중','1664696',40,36,1,7);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('유장창','2752844',20,16,1,1);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('유장창','2752844',20,24,1,2);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('유장창','2752844',24,28,1,3);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('유장창','2752844',28,28,1,4);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('유장창','2752844',28,24,1,5);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('유장창','2752844',36,28,1,6);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('유장창','2752844',32,36,1,7);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('차장무','1301254',32,40,1,1);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('차장무','1301254',32,36,1,2);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('차장무','1301254',40,36,1,3);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('차장무','1301254',36,40,1,4);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('차장무','1301254',40,40,1,5);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('차장무','1301254',40,40,1,6);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('차장무','1301254',40,40,1,7);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('하형무','1987137',24,28,1,1);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('하형무','1987137',20,24,1,2);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('하형무','1987137',24,28,1,3);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('하형무','1987137',32,28,1,4);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('하형무','1987137',28,24,1,5);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('하형무','1987137',28,24,1,6);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('하형무','1987137',28,24,1,7);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('왕행하','2692636',24,28,1,1);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('왕행하','2692636',20,24,1,2);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('왕행하','2692636',24,28,1,3);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('왕행하','2692636',32,28,1,4);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('왕행하','2692636',28,24,1,5);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('왕행하','2692636',28,24,1,6);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('왕행하','2692636',28,24,1,7);
Insert into HONG.VWSINFOGRA (VSTUNAME,VRNUM,VGRAWRI,VGRAPRAC,VCOUSEQ,VSUBSEQ) values ('오종용','2876431',100,50,2,1);
REM INSERTING into HONG.VWSTUCOU
SET DEFINE OFF;
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('신재경','1315562','010-1907-7667','파이썬과 자바를 연계한 머신러닝 활용개발자 과정','18-07-02','18-11-30','3',1,1,'19-01-10',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('차성양','1130961','010-0469-2980','파이썬과 자바를 연계한 머신러닝 활용개발자 과정','18-07-02','18-11-30','3',2,1,'19-01-10',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('건소경','2687072','010-1385-1157','파이썬과 자바를 연계한 머신러닝 활용개발자 과정','18-07-02','18-11-30','3',3,1,'19-01-10',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('신희용','1989703','010-1013-2298','파이썬과 자바를 연계한 머신러닝 활용개발자 과정','18-07-02','18-11-30','3',4,1,'19-01-10',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('이진소','2514815','010-1357-3301','파이썬과 자바를 연계한 머신러닝 활용개발자 과정','18-07-02','18-11-30','3',5,1,'19-01-10',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('문행창','1373437','010-4539-3378','파이썬과 자바를 연계한 머신러닝 활용개발자 과정','18-07-02','18-11-30','3',6,1,'19-01-11',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('차윤연','2051129','010-6750-3754','파이썬과 자바를 연계한 머신러닝 활용개발자 과정','18-07-02','18-11-30','3',7,1,'19-01-11',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('문장소','1949782','010-5241-5306','파이썬과 자바를 연계한 머신러닝 활용개발자 과정','18-07-02','18-11-30','3',8,1,'19-01-11',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('신성규','1953731','010-9002-9482','파이썬과 자바를 연계한 머신러닝 활용개발자 과정','18-07-02','18-11-30','3',9,1,'19-01-11',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('오소경','1655157','010-8024-1703','파이썬과 자바를 연계한 머신러닝 활용개발자 과정','18-07-02','18-11-30','3',10,1,'19-01-11',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('홍성준','1490013','010-5907-2231','파이썬과 자바를 연계한 머신러닝 활용개발자 과정','18-07-02','18-11-30','3',11,1,'19-01-11',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('건원양','2586718','010-1122-1021','파이썬과 자바를 연계한 머신러닝 활용개발자 과정','18-07-02','18-11-30','3',12,1,'19-01-12',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('하재준','2585695','010-6224-7786','파이썬과 자바를 연계한 머신러닝 활용개발자 과정','18-07-02','18-11-30','3',13,1,'19-01-12',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('문소규','2154116','010-5042-9822','파이썬과 자바를 연계한 머신러닝 활용개발자 과정','18-07-02','18-11-30','3',14,1,'19-01-12',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('신장준','2807647','010-1148-5172','파이썬과 자바를 연계한 머신러닝 활용개발자 과정','18-07-02','18-11-30','3',15,1,'19-01-12',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('우장존','1165873','010-1865-3083','파이썬과 자바를 연계한 머신러닝 활용개발자 과정','18-07-02','18-11-30','3',16,1,'19-01-12',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('이병준','1570718','010-9426-9467','파이썬과 자바를 연계한 머신러닝 활용개발자 과정','18-07-02','18-11-30','3',17,1,'19-01-12',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('왕소경','2200292','010-6554-4554','파이썬과 자바를 연계한 머신러닝 활용개발자 과정','18-07-02','18-11-30','3',18,1,'19-01-13',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('오병규','2013774','010-9968-6566','파이썬과 자바를 연계한 머신러닝 활용개발자 과정','18-07-02','18-11-30','3',19,1,'19-01-13',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('우윤준','1763093','010-2229-6305','파이썬과 자바를 연계한 머신러닝 활용개발자 과정','18-07-02','18-11-30','3',20,1,'19-01-13',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('왕성중','1262257','010-8862-6361','파이썬과 자바를 연계한 머신러닝 활용개발자 과정','18-07-02','18-11-30','3',21,1,'19-01-13',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('유종중','2626472','010-2526-5900','파이썬과 자바를 연계한 머신러닝 활용개발자 과정','18-07-02','18-11-30','3',22,1,'19-01-13',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('하종연','2191565','010-4109-0127','파이썬과 자바를 연계한 머신러닝 활용개발자 과정','18-07-02','18-11-30','3',23,1,'19-01-14',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('문윤하','2304478','010-5393-2595','파이썬과 자바를 연계한 머신러닝 활용개발자 과정','18-07-02','18-11-30','3',24,1,'19-01-14',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('문행존','1120493','010-9032-5183','파이썬과 자바를 연계한 머신러닝 활용개발자 과정','18-07-02','18-11-30','3',25,1,'19-01-14',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('이장중','1664696','010-9854-0147','파이썬과 자바를 연계한 머신러닝 활용개발자 과정','18-07-02','18-11-30','3',26,1,'19-01-14',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('유장창','2752844','010-0784-9618','파이썬과 자바를 연계한 머신러닝 활용개발자 과정','18-07-02','18-11-30','3',27,1,'19-01-14',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('차장무','1301254','010-6059-7318','파이썬과 자바를 연계한 머신러닝 활용개발자 과정','18-07-02','18-11-30','3',28,1,'19-01-14',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('하형무','1987137','010-4427-2687','파이썬과 자바를 연계한 머신러닝 활용개발자 과정','18-07-02','18-11-30','3',29,1,'19-01-15',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('왕행하','2692636','010-4992-8438','파이썬과 자바를 연계한 머신러닝 활용개발자 과정','18-07-02','18-11-30','3',30,1,'19-01-15',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('오종용','2876431','010-3840-2308','Java를 활용한 웹 응용 SW개발자 양성과정','19-01-28','19-08-23','2',31,2,'19-04-15',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('오유존','2438854','010-8875-8883','Java를 활용한 웹 응용 SW개발자 양성과정','19-01-28','19-08-23','2',32,2,'19-04-15',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('유종연','1554485','010-3055-4680','Java를 활용한 웹 응용 SW개발자 양성과정','19-01-28','19-08-23','2',33,2,'19-04-15',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('문유중','2652982','010-6073-6045','Java를 활용한 웹 응용 SW개발자 양성과정','19-01-28','19-08-23','2',34,2,'19-04-15',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('신성중','2431422','010-0269-3045','Java를 활용한 웹 응용 SW개발자 양성과정','19-01-28','19-08-23','2',35,2,'19-04-15',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('홍병창','2695505','010-0815-5035','Java를 활용한 웹 응용 SW개발자 양성과정','19-01-28','19-08-23','2',36,2,'19-04-15',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('홍형규','1648924','010-8323-6056','Java를 활용한 웹 응용 SW개발자 양성과정','19-01-28','19-08-23','2',37,2,'19-04-15',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('최장무','1315143','010-4835-9986','Java를 활용한 웹 응용 SW개발자 양성과정','19-01-28','19-08-23','2',38,2,'19-04-15',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('문희용','2167645','010-4374-4711','Java를 활용한 웹 응용 SW개발자 양성과정','19-01-28','19-08-23','2',39,2,'19-04-15',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('신형준','2021914','010-4122-1165','Java를 활용한 웹 응용 SW개발자 양성과정','19-01-28','19-08-23','2',40,2,'19-04-15',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('우성용','2144126','010-7178-1664','Java를 활용한 웹 응용 SW개발자 양성과정','19-01-28','19-08-23','2',41,2,'19-04-15',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('문윤히','2079005','010-0981-4660','Java를 활용한 웹 응용 SW개발자 양성과정','19-01-28','19-08-23','2',42,2,'18-06-11',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('문유수','1176754','010-1699-7042','Java를 활용한 웹 응용 SW개발자 양성과정','19-01-28','19-08-23','2',43,2,'18-06-11',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('건윤수','1147553','010-6021-9581','Java를 활용한 웹 응용 SW개발자 양성과정','19-01-28','19-08-23','2',44,2,'18-06-11',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('최병창','1098972','010-6045-8375','Java를 활용한 웹 응용 SW개발자 양성과정','19-01-28','19-08-23','2',45,2,'18-06-11',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('왕희무','2860366','010-5674-6006','Java를 활용한 웹 응용 SW개발자 양성과정','19-01-28','19-08-23','2',46,2,'18-06-11',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('류원연','2019746','010-2194-3593','Java를 활용한 웹 응용 SW개발자 양성과정','19-01-28','19-08-23','2',47,2,'18-06-12',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('홍원용','1355157','010-0205-1819','Java를 활용한 웹 응용 SW개발자 양성과정','19-01-28','19-08-23','2',48,2,'18-06-12',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('차원경','2358583','010-8939-7762','Java를 활용한 웹 응용 SW개발자 양성과정','19-01-28','19-08-23','2',49,2,'18-06-12',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('야호호','1111111','0100100101','Java를 활용한 웹 응용 SW개발자 양성과정','19-01-28','19-08-23','수료/중도탈락',50,2,'19-04-04',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('왕재하','1711677','010-9038-9859','Java를 활용한 웹 응용 SW개발자 양성과정','19-01-28','19-08-23','2',51,2,'18-06-12',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('김행중','2788849','010-7491-5764','Java를 활용한 웹 응용 SW개발자 양성과정','19-01-28','19-08-23','2',52,2,'18-06-12',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('차윤준','1098793','010-2901-5968','Java를 활용한 웹 응용 SW개발자 양성과정','19-01-28','19-08-23','2',53,2,'18-06-12',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('박진양','2729678','010-1485-8640','Java를 활용한 웹 응용 SW개발자 양성과정','19-01-28','19-08-23','2',54,2,'18-06-12',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('신희존','2454787','010-7522-6789','Java를 활용한 웹 응용 SW개발자 양성과정','19-01-28','19-08-23','2',55,2,'18-06-13',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('차신연','1266038','010-8553-9296','Java를 활용한 웹 응용 SW개발자 양성과정','19-01-28','19-08-23','2',56,2,'18-06-13',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('유병존','2949697','010-7061-5586','Java를 활용한 웹 응용 SW개발자 양성과정','19-01-28','19-08-23','2',57,2,'18-06-13',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('박성창','2594694','010-7177-7662','Java를 활용한 웹 응용 SW개발자 양성과정','19-01-28','19-08-23','2',58,2,'18-06-13',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('유성수','2793713','010-1493-8827','Java를 활용한 웹 응용 SW개발자 양성과정','19-01-28','19-08-23','2',59,2,'18-06-13',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('문병규','2578785','010-3198-4319','Java를 활용한 웹 응용 SW개발자 양성과정','19-01-28','19-08-23','2',60,2,'18-06-13',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('류소준','1200543','010-4462-4455','Java기반의 스마트 웹 앱콘텐츠 양성과정','19-04-29','19-10-25','1',61,3,'18-06-13',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('이원소','1432795','010-8700-1176','Java기반의 스마트 웹 앱콘텐츠 양성과정','19-04-29','19-10-25','1',62,3,'18-06-13',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('홍유규','1946165','010-7113-5375','Java기반의 스마트 웹 앱콘텐츠 양성과정','19-04-29','19-10-25','1',63,3,'18-06-13',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('박행소','1190889','010-3501-8354','Java기반의 스마트 웹 앱콘텐츠 양성과정','19-04-29','19-10-25','1',64,3,'18-06-13',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('하행수','2206525','010-9722-3396','Java기반의 스마트 웹 앱콘텐츠 양성과정','19-04-29','19-10-25','1',65,3,'18-06-14',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('박종준','2323013','010-7723-6292','Java기반의 스마트 웹 앱콘텐츠 양성과정','19-04-29','19-10-25','1',66,3,'18-06-14',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('우소양','1031194','010-6119-5878','Java기반의 스마트 웹 앱콘텐츠 양성과정','19-04-29','19-10-25','1',67,3,'18-06-14',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('최종무','2419224','010-0293-3056','Java기반의 스마트 웹 앱콘텐츠 양성과정','19-04-29','19-10-25','1',68,3,'18-06-14',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('우희준','2673857','010-2278-4817','Java기반의 스마트 웹 앱콘텐츠 양성과정','19-04-29','19-10-25','1',69,3,'18-06-14',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('차희존','1481464','010-1660-4345','Java기반의 스마트 웹 앱콘텐츠 양성과정','19-04-29','19-10-25','1',70,3,'18-06-14',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('하희소','1374898','010-6005-1695','Java기반의 스마트 웹 앱콘텐츠 양성과정','19-04-29','19-10-25','1',71,3,'18-06-14',null);
Insert into HONG.VWSTUCOU (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUNAME,VCOUSTART,VCOUEND,VSTUSTATUS,VSTUINSEQ,VCOUSEQ,VSTUINRDATE,VSTUSTATUSDATE) values ('히히','0000000','000-0000-0001','Java기반의 스마트 웹 앱콘텐츠 양성과정','19-04-29','19-10-25','1',73,3,'19-03-02',null);
REM INSERTING into HONG.VWSTUGRA
SET DEFINE OFF;
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('신재경','010-1907-7667','3',1,1,null,1);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('신재경','010-1907-7667','3',1,2,null,2);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('신재경','010-1907-7667','3',1,3,null,3);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('신재경','010-1907-7667','3',1,4,null,4);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('신재경','010-1907-7667','3',1,5,null,5);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('신재경','010-1907-7667','3',1,6,null,6);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('신재경','010-1907-7667','3',1,7,null,7);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('차성양','010-0469-2980','3',2,1,null,8);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('차성양','010-0469-2980','3',2,2,null,9);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('차성양','010-0469-2980','3',2,3,null,10);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('차성양','010-0469-2980','3',2,4,null,11);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('차성양','010-0469-2980','3',2,5,null,12);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('차성양','010-0469-2980','3',2,6,null,13);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('차성양','010-0469-2980','3',2,7,null,14);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('건소경','010-1385-1157','3',3,1,null,15);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('건소경','010-1385-1157','3',3,2,null,16);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('건소경','010-1385-1157','3',3,3,null,17);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('건소경','010-1385-1157','3',3,4,null,18);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('건소경','010-1385-1157','3',3,5,null,19);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('건소경','010-1385-1157','3',3,6,null,20);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('건소경','010-1385-1157','3',3,7,null,21);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('신희용','010-1013-2298','3',4,1,null,22);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('신희용','010-1013-2298','3',4,2,null,23);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('신희용','010-1013-2298','3',4,3,null,24);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('신희용','010-1013-2298','3',4,4,null,25);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('신희용','010-1013-2298','3',4,5,null,26);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('신희용','010-1013-2298','3',4,6,null,27);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('신희용','010-1013-2298','3',4,7,null,28);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('이진소','010-1357-3301','3',5,1,null,29);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('이진소','010-1357-3301','3',5,2,null,30);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('이진소','010-1357-3301','3',5,3,null,31);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('이진소','010-1357-3301','3',5,4,null,32);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('이진소','010-1357-3301','3',5,5,null,33);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('이진소','010-1357-3301','3',5,6,null,34);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('이진소','010-1357-3301','3',5,7,null,35);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('문행창','010-4539-3378','3',6,1,null,36);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('문행창','010-4539-3378','3',6,2,null,37);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('문행창','010-4539-3378','3',6,3,null,38);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('문행창','010-4539-3378','3',6,4,null,39);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('문행창','010-4539-3378','3',6,5,null,40);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('문행창','010-4539-3378','3',6,6,null,41);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('문행창','010-4539-3378','3',6,7,null,42);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('차윤연','010-6750-3754','3',7,1,null,43);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('차윤연','010-6750-3754','3',7,2,null,44);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('차윤연','010-6750-3754','3',7,3,null,45);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('차윤연','010-6750-3754','3',7,4,null,46);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('차윤연','010-6750-3754','3',7,5,null,47);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('차윤연','010-6750-3754','3',7,6,null,48);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('차윤연','010-6750-3754','3',7,7,null,49);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('문장소','010-5241-5306','3',8,1,null,50);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('문장소','010-5241-5306','3',8,2,null,51);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('문장소','010-5241-5306','3',8,3,null,52);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('문장소','010-5241-5306','3',8,4,null,53);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('문장소','010-5241-5306','3',8,5,null,54);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('문장소','010-5241-5306','3',8,6,null,55);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('문장소','010-5241-5306','3',8,7,null,56);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('신성규','010-9002-9482','3',9,1,null,57);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('신성규','010-9002-9482','3',9,2,null,58);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('신성규','010-9002-9482','3',9,3,null,59);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('신성규','010-9002-9482','3',9,4,null,60);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('신성규','010-9002-9482','3',9,5,null,61);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('신성규','010-9002-9482','3',9,6,null,62);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('신성규','010-9002-9482','3',9,7,null,63);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('오소경','010-8024-1703','3',10,1,null,64);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('오소경','010-8024-1703','3',10,2,null,65);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('오소경','010-8024-1703','3',10,3,null,66);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('오소경','010-8024-1703','3',10,4,null,67);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('오소경','010-8024-1703','3',10,5,null,68);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('오소경','010-8024-1703','3',10,6,null,69);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('오소경','010-8024-1703','3',10,7,null,70);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('홍성준','010-5907-2231','3',11,1,null,71);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('홍성준','010-5907-2231','3',11,2,null,72);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('홍성준','010-5907-2231','3',11,3,null,73);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('홍성준','010-5907-2231','3',11,4,null,74);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('홍성준','010-5907-2231','3',11,5,null,75);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('홍성준','010-5907-2231','3',11,6,null,76);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('홍성준','010-5907-2231','3',11,7,null,77);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('건원양','010-1122-1021','3',12,1,null,78);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('건원양','010-1122-1021','3',12,2,null,79);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('건원양','010-1122-1021','3',12,3,null,80);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('건원양','010-1122-1021','3',12,4,null,81);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('건원양','010-1122-1021','3',12,5,null,82);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('건원양','010-1122-1021','3',12,6,null,83);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('건원양','010-1122-1021','3',12,7,null,84);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('하재준','010-6224-7786','3',13,1,null,85);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('하재준','010-6224-7786','3',13,2,null,86);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('하재준','010-6224-7786','3',13,3,null,87);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('하재준','010-6224-7786','3',13,4,null,88);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('하재준','010-6224-7786','3',13,5,null,89);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('하재준','010-6224-7786','3',13,6,null,90);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('하재준','010-6224-7786','3',13,7,null,91);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('문소규','010-5042-9822','3',14,1,null,92);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('문소규','010-5042-9822','3',14,2,null,93);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('문소규','010-5042-9822','3',14,3,null,94);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('문소규','010-5042-9822','3',14,4,null,95);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('문소규','010-5042-9822','3',14,5,null,96);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('문소규','010-5042-9822','3',14,6,null,97);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('문소규','010-5042-9822','3',14,7,null,98);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('신장준','010-1148-5172','3',15,1,null,99);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('신장준','010-1148-5172','3',15,2,null,100);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('신장준','010-1148-5172','3',15,3,null,101);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('신장준','010-1148-5172','3',15,4,null,102);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('신장준','010-1148-5172','3',15,5,null,103);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('신장준','010-1148-5172','3',15,6,null,104);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('신장준','010-1148-5172','3',15,7,null,105);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('우장존','010-1865-3083','3',16,1,null,106);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('우장존','010-1865-3083','3',16,2,null,107);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('우장존','010-1865-3083','3',16,3,null,108);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('우장존','010-1865-3083','3',16,4,null,109);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('우장존','010-1865-3083','3',16,5,null,110);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('우장존','010-1865-3083','3',16,6,null,111);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('우장존','010-1865-3083','3',16,7,null,112);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('이병준','010-9426-9467','3',17,1,null,113);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('이병준','010-9426-9467','3',17,2,null,114);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('이병준','010-9426-9467','3',17,3,null,115);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('이병준','010-9426-9467','3',17,4,null,116);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('이병준','010-9426-9467','3',17,5,null,117);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('이병준','010-9426-9467','3',17,6,null,118);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('이병준','010-9426-9467','3',17,7,null,119);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('왕소경','010-6554-4554','3',18,1,null,120);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('왕소경','010-6554-4554','3',18,2,null,121);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('왕소경','010-6554-4554','3',18,3,null,122);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('왕소경','010-6554-4554','3',18,4,null,123);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('왕소경','010-6554-4554','3',18,5,null,124);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('왕소경','010-6554-4554','3',18,6,null,125);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('왕소경','010-6554-4554','3',18,7,null,126);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('오병규','010-9968-6566','3',19,1,null,127);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('오병규','010-9968-6566','3',19,2,null,128);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('오병규','010-9968-6566','3',19,3,null,129);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('오병규','010-9968-6566','3',19,4,null,130);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('오병규','010-9968-6566','3',19,5,null,131);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('오병규','010-9968-6566','3',19,6,null,132);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('오병규','010-9968-6566','3',19,7,null,133);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('우윤준','010-2229-6305','3',20,1,null,134);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('우윤준','010-2229-6305','3',20,2,null,135);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('우윤준','010-2229-6305','3',20,3,null,136);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('우윤준','010-2229-6305','3',20,4,null,137);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('우윤준','010-2229-6305','3',20,5,null,138);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('우윤준','010-2229-6305','3',20,6,null,139);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('우윤준','010-2229-6305','3',20,7,null,140);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('왕성중','010-8862-6361','3',21,1,null,141);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('왕성중','010-8862-6361','3',21,2,null,142);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('왕성중','010-8862-6361','3',21,3,null,143);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('왕성중','010-8862-6361','3',21,4,null,144);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('왕성중','010-8862-6361','3',21,5,null,145);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('왕성중','010-8862-6361','3',21,6,null,146);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('왕성중','010-8862-6361','3',21,7,null,147);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('유종중','010-2526-5900','3',22,1,null,148);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('유종중','010-2526-5900','3',22,2,null,149);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('유종중','010-2526-5900','3',22,3,null,150);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('유종중','010-2526-5900','3',22,4,null,151);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('유종중','010-2526-5900','3',22,5,null,152);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('유종중','010-2526-5900','3',22,6,null,153);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('유종중','010-2526-5900','3',22,7,null,154);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('하종연','010-4109-0127','3',23,1,null,155);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('하종연','010-4109-0127','3',23,2,null,156);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('하종연','010-4109-0127','3',23,3,null,157);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('하종연','010-4109-0127','3',23,4,null,158);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('하종연','010-4109-0127','3',23,5,null,159);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('하종연','010-4109-0127','3',23,6,null,160);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('하종연','010-4109-0127','3',23,7,null,161);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('문윤하','010-5393-2595','3',24,1,null,162);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('문윤하','010-5393-2595','3',24,2,null,163);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('문윤하','010-5393-2595','3',24,3,null,164);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('문윤하','010-5393-2595','3',24,4,null,165);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('문윤하','010-5393-2595','3',24,5,null,166);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('문윤하','010-5393-2595','3',24,6,null,167);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('문윤하','010-5393-2595','3',24,7,null,168);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('문행존','010-9032-5183','3',25,1,null,169);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('문행존','010-9032-5183','3',25,2,null,170);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('문행존','010-9032-5183','3',25,3,null,171);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('문행존','010-9032-5183','3',25,4,null,172);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('문행존','010-9032-5183','3',25,5,null,173);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('문행존','010-9032-5183','3',25,6,null,174);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('문행존','010-9032-5183','3',25,7,null,175);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('이장중','010-9854-0147','3',26,1,null,176);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('이장중','010-9854-0147','3',26,2,null,177);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('이장중','010-9854-0147','3',26,3,null,178);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('이장중','010-9854-0147','3',26,4,null,179);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('이장중','010-9854-0147','3',26,5,null,180);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('이장중','010-9854-0147','3',26,6,null,181);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('이장중','010-9854-0147','3',26,7,null,182);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('유장창','010-0784-9618','3',27,1,null,183);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('유장창','010-0784-9618','3',27,2,null,184);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('유장창','010-0784-9618','3',27,3,null,185);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('유장창','010-0784-9618','3',27,4,null,186);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('유장창','010-0784-9618','3',27,5,null,187);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('유장창','010-0784-9618','3',27,6,null,188);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('유장창','010-0784-9618','3',27,7,null,189);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('차장무','010-6059-7318','3',28,1,null,190);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('차장무','010-6059-7318','3',28,2,null,191);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('차장무','010-6059-7318','3',28,3,null,192);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('차장무','010-6059-7318','3',28,4,null,193);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('차장무','010-6059-7318','3',28,5,null,194);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('차장무','010-6059-7318','3',28,6,null,195);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('차장무','010-6059-7318','3',28,7,null,196);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('하형무','010-4427-2687','3',29,1,null,197);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('하형무','010-4427-2687','3',29,2,null,198);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('하형무','010-4427-2687','3',29,3,null,199);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('하형무','010-4427-2687','3',29,4,null,200);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('하형무','010-4427-2687','3',29,5,null,201);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('하형무','010-4427-2687','3',29,6,null,202);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('하형무','010-4427-2687','3',29,7,null,203);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('왕행하','010-4992-8438','3',30,1,null,204);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('왕행하','010-4992-8438','3',30,2,null,205);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('왕행하','010-4992-8438','3',30,3,null,206);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('왕행하','010-4992-8438','3',30,4,null,207);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('왕행하','010-4992-8438','3',30,5,null,208);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('왕행하','010-4992-8438','3',30,6,null,209);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('왕행하','010-4992-8438','3',30,7,null,210);
Insert into HONG.VWSTUGRA (VSTUNAME,VSTUPNUM,VSTUSTATUS,VSTUSEQ,VSUBSEQ,VSTUSTADATE,VGRASEQ) values ('오종용','010-3840-2308','2',31,1,null,211);
REM INSERTING into HONG.VWSTUGRAINFO
SET DEFINE OFF;
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('신재경',1,36,36,1,1);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('신재경',1,10,10,2,2);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('신재경',1,28,36,3,3);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('신재경',1,32,32,4,4);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('신재경',1,36,32,5,5);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('신재경',1,32,32,6,6);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('신재경',1,28,28,7,7);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('차성양',2,32,28,8,1);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('차성양',2,36,32,9,2);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('차성양',2,28,36,10,3);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('차성양',2,32,36,11,4);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('차성양',2,28,32,12,5);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('차성양',2,32,32,13,6);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('차성양',2,40,40,14,7);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('건소경',3,40,40,15,1);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('건소경',3,36,32,16,2);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('건소경',3,40,36,17,3);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('건소경',3,32,32,18,4);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('건소경',3,40,36,19,5);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('건소경',3,36,36,20,6);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('건소경',3,40,36,21,7);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('신희용',4,20,24,22,1);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('신희용',4,24,28,23,2);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('신희용',4,28,28,24,3);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('신희용',4,32,32,25,4);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('신희용',4,32,32,26,5);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('신희용',4,36,28,27,6);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('신희용',4,32,32,28,7);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('이진소',5,40,40,29,1);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('이진소',5,36,32,30,2);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('이진소',5,32,36,31,3);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('이진소',5,32,32,32,4);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('이진소',5,40,36,33,5);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('이진소',5,36,36,34,6);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('이진소',5,40,36,35,7);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('문행창',6,24,20,36,1);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('문행창',6,24,24,37,2);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('문행창',6,24,28,38,3);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('문행창',6,32,28,39,4);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('문행창',6,32,36,40,5);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('문행창',6,36,36,41,6);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('문행창',6,40,40,42,7);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('차윤연',7,20,20,43,1);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('차윤연',7,24,28,44,2);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('차윤연',7,20,24,45,3);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('차윤연',7,24,20,46,4);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('차윤연',7,20,28,47,5);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('차윤연',7,32,36,48,6);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('차윤연',7,32,32,49,7);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('문장소',8,40,40,50,1);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('문장소',8,36,32,51,2);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('문장소',8,40,36,52,3);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('문장소',8,40,40,53,4);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('문장소',8,40,36,54,5);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('문장소',8,36,36,55,6);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('문장소',8,40,36,56,7);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('신성규',9,24,28,57,1);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('신성규',9,32,28,58,2);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('신성규',9,28,32,59,3);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('신성규',9,32,32,60,4);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('신성규',9,32,28,61,5);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('신성규',9,28,32,62,6);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('신성규',9,32,28,63,7);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('오소경',10,16,12,64,1);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('오소경',10,20,24,65,2);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('오소경',10,24,28,66,3);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('오소경',10,32,28,67,4);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('오소경',10,28,24,68,5);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('오소경',10,36,36,69,6);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('오소경',10,40,36,70,7);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('홍성준',11,16,12,71,1);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('홍성준',11,20,24,72,2);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('홍성준',11,20,20,73,3);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('홍성준',11,24,28,74,4);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('홍성준',11,28,24,75,5);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('홍성준',11,24,20,76,6);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('홍성준',11,28,28,77,7);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('건원양',12,28,24,78,1);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('건원양',12,28,24,79,2);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('건원양',12,28,28,80,3);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('건원양',12,32,32,81,4);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('건원양',12,32,32,82,5);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('건원양',12,36,36,83,6);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('건원양',12,40,36,84,7);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('하재준',13,24,28,85,1);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('하재준',13,28,24,86,2);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('하재준',13,24,28,87,3);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('하재준',13,32,28,88,4);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('하재준',13,28,24,89,5);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('하재준',13,28,32,90,6);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('하재준',13,32,36,91,7);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('문소규',14,28,28,92,1);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('문소규',14,24,24,93,2);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('문소규',14,24,28,94,3);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('문소규',14,32,28,95,4);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('문소규',14,28,28,96,5);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('문소규',14,32,36,97,6);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('문소규',14,36,36,98,7);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('신장준',15,32,28,99,1);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('신장준',15,28,32,100,2);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('신장준',15,24,28,101,3);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('신장준',15,32,28,102,4);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('신장준',15,28,24,103,5);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('신장준',15,36,36,104,6);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('신장준',15,40,36,105,7);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('우장존',16,32,28,106,1);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('우장존',16,20,24,107,2);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('우장존',16,24,20,108,3);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('우장존',16,32,28,109,4);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('우장존',16,28,24,110,5);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('우장존',16,32,32,111,6);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('우장존',16,32,32,112,7);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('이병준',17,12,12,113,1);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('이병준',17,20,24,114,2);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('이병준',17,24,28,115,3);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('이병준',17,24,28,116,4);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('이병준',17,28,24,117,5);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('이병준',17,36,32,118,6);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('이병준',17,32,32,119,7);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('왕소경',18,16,12,120,1);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('왕소경',18,20,24,121,2);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('왕소경',18,24,28,122,3);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('왕소경',18,20,24,123,4);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('왕소경',18,28,24,124,5);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('왕소경',18,24,20,125,6);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('왕소경',18,20,28,126,7);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('오병규',19,24,28,127,1);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('오병규',19,20,24,128,2);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('오병규',19,24,28,129,3);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('오병규',19,32,28,130,4);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('오병규',19,28,24,131,5);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('오병규',19,36,28,132,6);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('오병규',19,24,20,133,7);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('우윤준',20,16,12,134,1);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('우윤준',20,20,16,135,2);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('우윤준',20,24,20,136,3);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('우윤준',20,28,28,137,4);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('우윤준',20,28,24,138,5);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('우윤준',20,36,36,139,6);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('우윤준',20,32,36,140,7);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('왕성중',21,24,24,141,1);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('왕성중',21,28,24,142,2);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('왕성중',21,24,28,143,3);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('왕성중',21,32,28,144,4);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('왕성중',21,32,32,145,5);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('왕성중',21,32,36,146,6);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('왕성중',21,40,36,147,7);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('유종중',22,24,20,148,1);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('유종중',22,20,24,149,2);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('유종중',22,24,24,150,3);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('유종중',22,20,28,151,4);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('유종중',22,28,24,152,5);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('유종중',22,36,36,153,6);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('유종중',22,32,36,154,7);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('하종연',23,24,24,155,1);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('하종연',23,24,24,156,2);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('하종연',23,24,28,157,3);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('하종연',23,32,28,158,4);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('하종연',23,28,24,159,5);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('하종연',23,36,36,160,6);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('하종연',23,40,36,161,7);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('문윤하',24,28,28,162,1);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('문윤하',24,28,24,163,2);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('문윤하',24,32,28,164,3);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('문윤하',24,32,32,165,4);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('문윤하',24,36,32,166,5);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('문윤하',24,36,36,167,6);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('문윤하',24,40,36,168,7);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('문행존',25,30,20,169,1);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('문행존',25,28,24,170,2);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('문행존',25,32,28,171,3);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('문행존',25,32,32,172,4);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('문행존',25,28,28,173,5);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('문행존',25,36,32,174,6);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('문행존',25,28,24,175,7);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('이장중',26,36,36,176,1);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('이장중',26,32,36,177,2);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('이장중',26,36,40,178,3);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('이장중',26,32,36,179,4);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('이장중',26,36,40,180,5);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('이장중',26,40,36,181,6);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('이장중',26,40,36,182,7);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('유장창',27,20,16,183,1);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('유장창',27,20,24,184,2);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('유장창',27,24,28,185,3);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('유장창',27,28,28,186,4);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('유장창',27,28,24,187,5);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('유장창',27,36,28,188,6);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('유장창',27,32,36,189,7);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('차장무',28,32,40,190,1);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('차장무',28,32,36,191,2);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('차장무',28,40,36,192,3);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('차장무',28,36,40,193,4);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('차장무',28,40,40,194,5);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('차장무',28,40,40,195,6);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('차장무',28,40,40,196,7);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('하형무',29,24,28,197,1);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('하형무',29,20,24,198,2);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('하형무',29,24,28,199,3);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('하형무',29,32,28,200,4);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('하형무',29,28,24,201,5);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('하형무',29,28,24,202,6);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('하형무',29,28,24,203,7);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('왕행하',30,24,28,204,1);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('왕행하',30,20,24,205,2);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('왕행하',30,24,28,206,3);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('왕행하',30,32,28,207,4);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('왕행하',30,28,24,208,5);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('왕행하',30,28,24,209,6);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('왕행하',30,28,24,210,7);
Insert into HONG.VWSTUGRAINFO (VSTUNAME,VSTUSEQ,VGRAWRI,VGRAPRAC,VGRASEQ,VGRASUBSEQ) values ('오종용',31,100,50,211,1);
REM INSERTING into HONG.VWSTUSINFO
SET DEFINE OFF;
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('신재경','1315562','010-1907-7667',1,1);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('차성양','1130961','010-0469-2980',1,2);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('건소경','2687072','010-1385-1157',1,3);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('신희용','1989703','010-1013-2298',1,4);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('이진소','2514815','010-1357-3301',1,5);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('문행창','1373437','010-4539-3378',1,6);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('차윤연','2051129','010-6750-3754',1,7);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('문장소','1949782','010-5241-5306',1,8);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('신성규','1953731','010-9002-9482',1,9);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('오소경','1655157','010-8024-1703',1,10);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('홍성준','1490013','010-5907-2231',1,11);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('건원양','2586718','010-1122-1021',1,12);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('하재준','2585695','010-6224-7786',1,13);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('문소규','2154116','010-5042-9822',1,14);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('신장준','2807647','010-1148-5172',1,15);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('우장존','1165873','010-1865-3083',1,16);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('이병준','1570718','010-9426-9467',1,17);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('왕소경','2200292','010-6554-4554',1,18);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('오병규','2013774','010-9968-6566',1,19);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('우윤준','1763093','010-2229-6305',1,20);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('왕성중','1262257','010-8862-6361',1,21);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('유종중','2626472','010-2526-5900',1,22);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('하종연','2191565','010-4109-0127',1,23);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('문윤하','2304478','010-5393-2595',1,24);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('문행존','1120493','010-9032-5183',1,25);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('이장중','1664696','010-9854-0147',1,26);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('유장창','2752844','010-0784-9618',1,27);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('차장무','1301254','010-6059-7318',1,28);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('하형무','1987137','010-4427-2687',1,29);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('왕행하','2692636','010-4992-8438',1,30);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('오종용','2876431','010-3840-2308',2,31);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('오유존','2438854','010-8875-8883',2,32);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('유종연','1554485','010-3055-4680',2,33);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('문유중','2652982','010-6073-6045',2,34);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('신성중','2431422','010-0269-3045',2,35);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('홍병창','2695505','010-0815-5035',2,36);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('홍형규','1648924','010-8323-6056',2,37);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('최장무','1315143','010-4835-9986',2,38);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('문희용','2167645','010-4374-4711',2,39);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('신형준','2021914','010-4122-1165',2,40);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('우성용','2144126','010-7178-1664',2,41);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('문윤히','2079005','010-0981-4660',2,42);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('문유수','1176754','010-1699-7042',2,43);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('건윤수','1147553','010-6021-9581',2,44);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('최병창','1098972','010-6045-8375',2,45);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('왕희무','2860366','010-5674-6006',2,46);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('류원연','2019746','010-2194-3593',2,47);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('홍원용','1355157','010-0205-1819',2,48);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('차원경','2358583','010-8939-7762',2,49);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('야호호','1111111','0100100101',2,50);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('왕재하','1711677','010-9038-9859',2,51);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('김행중','2788849','010-7491-5764',2,52);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('차윤준','1098793','010-2901-5968',2,53);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('박진양','2729678','010-1485-8640',2,54);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('신희존','2454787','010-7522-6789',2,55);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('차신연','1266038','010-8553-9296',2,56);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('유병존','2949697','010-7061-5586',2,57);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('박성창','2594694','010-7177-7662',2,58);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('유성수','2793713','010-1493-8827',2,59);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('문병규','2578785','010-3198-4319',2,60);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('류소준','1200543','010-4462-4455',3,61);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('이원소','1432795','010-8700-1176',3,62);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('홍유규','1946165','010-7113-5375',3,63);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('박행소','1190889','010-3501-8354',3,64);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('하행수','2206525','010-9722-3396',3,65);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('박종준','2323013','010-7723-6292',3,66);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('우소양','1031194','010-6119-5878',3,67);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('최종무','2419224','010-0293-3056',3,68);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('우희준','2673857','010-2278-4817',3,69);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('차희존','1481464','010-1660-4345',3,70);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('하희소','1374898','010-6005-1695',3,71);
Insert into HONG.VWSTUSINFO (VSTUNAME,VSTURNUM,VSTUPNUM,VCOUSEQ,VSINFOSEQ) values ('히히','0000000','000-0000-0001',3,73);
REM INSERTING into HONG.VWSUBCOUROOMLEC
SET DEFINE OFF;
Insert into HONG.VWSUBCOUROOMLEC (VCOUNAME,VROOMNAME,VLECNAME,VSUBSNAME,VCOUSEQ,VSUBSEQ) values ('Java기반의 스마트 웹 앱콘텐츠 양성과정','제 4강의실','서강준','JAVA 프로그래밍',3,18);
Insert into HONG.VWSUBCOUROOMLEC (VCOUNAME,VROOMNAME,VLECNAME,VSUBSNAME,VCOUSEQ,VSUBSEQ) values ('Java를 활용한 웹 응용 SW개발자 양성과정','제 1강의실','이상민','JAVA 프로그래밍',2,7);
Insert into HONG.VWSUBCOUROOMLEC (VCOUNAME,VROOMNAME,VLECNAME,VSUBSNAME,VCOUSEQ,VSUBSEQ) values ('파이썬과 자바를 연계한 머신러닝 활용개발자 과정','제 1강의실','설유경','JAVA 프로그래밍',1,1);
Insert into HONG.VWSUBCOUROOMLEC (VCOUNAME,VROOMNAME,VLECNAME,VSUBSNAME,VCOUSEQ,VSUBSEQ) values ('Java기반의 스마트 웹 앱콘텐츠 양성과정','제 4강의실','서강준','데이터베이스',3,17);
Insert into HONG.VWSUBCOUROOMLEC (VCOUNAME,VROOMNAME,VLECNAME,VSUBSNAME,VCOUSEQ,VSUBSEQ) values ('Java를 활용한 웹 응용 SW개발자 양성과정','제 1강의실','이상민','데이터베이스',2,8);
Insert into HONG.VWSUBCOUROOMLEC (VCOUNAME,VROOMNAME,VLECNAME,VSUBSNAME,VCOUSEQ,VSUBSEQ) values ('파이썬과 자바를 연계한 머신러닝 활용개발자 과정','제 1강의실','설유경','데이터베이스',1,2);
Insert into HONG.VWSUBCOUROOMLEC (VCOUNAME,VROOMNAME,VLECNAME,VSUBSNAME,VCOUSEQ,VSUBSEQ) values ('Java를 활용한 웹 응용 SW개발자 양성과정','제 1강의실','이상민','JAVA 애플리케이션 구현',2,9);
Insert into HONG.VWSUBCOUROOMLEC (VCOUNAME,VROOMNAME,VLECNAME,VSUBSNAME,VCOUSEQ,VSUBSEQ) values ('Java기반의 스마트 웹 앱콘텐츠 양성과정','제 4강의실','서강준','애플리케이션 배포',3,21);
Insert into HONG.VWSUBCOUROOMLEC (VCOUNAME,VROOMNAME,VLECNAME,VSUBSNAME,VCOUSEQ,VSUBSEQ) values ('Java를 활용한 웹 응용 SW개발자 양성과정','제 1강의실','이상민','애플리케이션 배포',2,11);
Insert into HONG.VWSUBCOUROOMLEC (VCOUNAME,VROOMNAME,VLECNAME,VSUBSNAME,VCOUSEQ,VSUBSEQ) values ('Java를 활용한 웹 응용 SW개발자 양성과정','제 1강의실','이상민','Front-end 웹 애플리케이션 구현',2,12);
Insert into HONG.VWSUBCOUROOMLEC (VCOUNAME,VROOMNAME,VLECNAME,VSUBSNAME,VCOUSEQ,VSUBSEQ) values ('Java를 활용한 웹 응용 SW개발자 양성과정','제 1강의실','이상민','Back-end 웹 애플리케이션 구현',2,13);
Insert into HONG.VWSUBCOUROOMLEC (VCOUNAME,VROOMNAME,VLECNAME,VSUBSNAME,VCOUSEQ,VSUBSEQ) values ('Java를 활용한 웹 응용 SW개발자 양성과정','제 1강의실','이상민','Full-stack Framework 구현',2,14);
Insert into HONG.VWSUBCOUROOMLEC (VCOUNAME,VROOMNAME,VLECNAME,VSUBSNAME,VCOUSEQ,VSUBSEQ) values ('Java를 활용한 웹 응용 SW개발자 양성과정','제 1강의실','이상민','반응형 웹 개발기법',2,16);
Insert into HONG.VWSUBCOUROOMLEC (VCOUNAME,VROOMNAME,VLECNAME,VSUBSNAME,VCOUSEQ,VSUBSEQ) values ('Java를 활용한 웹 응용 SW개발자 양성과정','제 1강의실','이상민','반응형 웹 개발기법',2,15);
Insert into HONG.VWSUBCOUROOMLEC (VCOUNAME,VROOMNAME,VLECNAME,VSUBSNAME,VCOUSEQ,VSUBSEQ) values ('Java기반의 스마트 웹 앱콘텐츠 양성과정','제 4강의실','서강준','애플리케이션 테스트 수행',3,19);
Insert into HONG.VWSUBCOUROOMLEC (VCOUNAME,VROOMNAME,VLECNAME,VSUBSNAME,VCOUSEQ,VSUBSEQ) values ('Java를 활용한 웹 응용 SW개발자 양성과정','제 1강의실','이상민','애플리케이션 테스트 수행',2,10);
Insert into HONG.VWSUBCOUROOMLEC (VCOUNAME,VROOMNAME,VLECNAME,VSUBSNAME,VCOUSEQ,VSUBSEQ) values ('Java기반의 스마트 웹 앱콘텐츠 양성과정','제 4강의실','서강준','웹 프로그래밍',3,20);
Insert into HONG.VWSUBCOUROOMLEC (VCOUNAME,VROOMNAME,VLECNAME,VSUBSNAME,VCOUSEQ,VSUBSEQ) values ('파이썬과 자바를 연계한 머신러닝 활용개발자 과정','제 1강의실','설유경','웹 프로그래밍',1,3);
Insert into HONG.VWSUBCOUROOMLEC (VCOUNAME,VROOMNAME,VLECNAME,VSUBSNAME,VCOUSEQ,VSUBSEQ) values ('Java기반의 스마트 웹 앱콘텐츠 양성과정','제 4강의실','서강준','Spring 개발',3,22);
Insert into HONG.VWSUBCOUROOMLEC (VCOUNAME,VROOMNAME,VLECNAME,VSUBSNAME,VCOUSEQ,VSUBSEQ) values ('Java기반의 스마트 웹 앱콘텐츠 양성과정','제 4강의실','서강준','Spring framework 통합구현',3,23);
Insert into HONG.VWSUBCOUROOMLEC (VCOUNAME,VROOMNAME,VLECNAME,VSUBSNAME,VCOUSEQ,VSUBSEQ) values ('Java기반의 스마트 웹 앱콘텐츠 양성과정','제 4강의실','서강준','제이쿼리 모바일',3,24);
Insert into HONG.VWSUBCOUROOMLEC (VCOUNAME,VROOMNAME,VLECNAME,VSUBSNAME,VCOUSEQ,VSUBSEQ) values ('Java기반의 스마트 웹 앱콘텐츠 양성과정','제 4강의실','서강준','코틀린 프로그래밍',3,25);
Insert into HONG.VWSUBCOUROOMLEC (VCOUNAME,VROOMNAME,VLECNAME,VSUBSNAME,VCOUSEQ,VSUBSEQ) values ('Java기반의 스마트 웹 앱콘텐츠 양성과정','제 4강의실','서강준','코틀린 안드로이드 프로그램 구현',3,26);
Insert into HONG.VWSUBCOUROOMLEC (VCOUNAME,VROOMNAME,VLECNAME,VSUBSNAME,VCOUSEQ,VSUBSEQ) values ('Java기반의 스마트 웹 앱콘텐츠 양성과정','제 4강의실','서강준','코틀린 활용 안드로이드 모바일 프로젝트 제작 ',3,28);
Insert into HONG.VWSUBCOUROOMLEC (VCOUNAME,VROOMNAME,VLECNAME,VSUBSNAME,VCOUSEQ,VSUBSEQ) values ('파이썬과 자바를 연계한 머신러닝 활용개발자 과정','제 1강의실','설유경','Full-stack 응용 프로젝트 제작',1,4);
Insert into HONG.VWSUBCOUROOMLEC (VCOUNAME,VROOMNAME,VLECNAME,VSUBSNAME,VCOUSEQ,VSUBSEQ) values ('파이썬과 자바를 연계한 머신러닝 활용개발자 과정','제 1강의실','설유경','웹 서버 구축 실무',1,5);
Insert into HONG.VWSUBCOUROOMLEC (VCOUNAME,VROOMNAME,VLECNAME,VSUBSNAME,VCOUSEQ,VSUBSEQ) values ('파이썬과 자바를 연계한 머신러닝 활용개발자 과정','제 1강의실','설유경','파이썬을 활용한 머신러닝 분석기술',1,6);
Insert into HONG.VWSUBCOUROOMLEC (VCOUNAME,VROOMNAME,VLECNAME,VSUBSNAME,VCOUSEQ,VSUBSEQ) values ('Java기반의 스마트 웹 앱콘텐츠 양성과정','제 4강의실','서강준','지능형 빅데이터 서비스 실무프로젝트',3,27);
REM INSERTING into HONG.VWSUBJECTLIST
SET DEFINE OFF;
Insert into HONG.VWSUBJECTLIST (VCOURSENUM,VCOURSENAME,VCOURSESTART,VCOURSEEND,VSUBJECTNUM,VSUBJECTNAME,VTEXTBOOKNAME,VWRITTENPERCENT,VPRACTICALPERCENT,VATTENDANCEPERCENT) values (1,'파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),1,'JAVA 프로그래밍','Java의 정석',40,40,20);
Insert into HONG.VWSUBJECTLIST (VCOURSENUM,VCOURSENAME,VCOURSESTART,VCOURSEEND,VSUBJECTNUM,VSUBJECTNAME,VTEXTBOOKNAME,VWRITTENPERCENT,VPRACTICALPERCENT,VATTENDANCEPERCENT) values (1,'파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),2,'데이터베이스','다양한 예제로 쉽게 배우는 오라클 SQL과 PL/SQL + 데이터 모델링 입문',40,40,20);
Insert into HONG.VWSUBJECTLIST (VCOURSENUM,VCOURSENAME,VCOURSESTART,VCOURSEEND,VSUBJECTNUM,VSUBJECTNAME,VTEXTBOOKNAME,VWRITTENPERCENT,VPRACTICALPERCENT,VATTENDANCEPERCENT) values (1,'파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),3,'웹 프로그래밍','웹 개발자를 위한 Spring 4.0 프로그래밍',40,40,20);
Insert into HONG.VWSUBJECTLIST (VCOURSENUM,VCOURSENAME,VCOURSESTART,VCOURSEEND,VSUBJECTNUM,VSUBJECTNAME,VTEXTBOOKNAME,VWRITTENPERCENT,VPRACTICALPERCENT,VATTENDANCEPERCENT) values (1,'파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),4,'Full-stack 응용 프로젝트 제작','Do it! HTML5- CSS3 웹 표준의 정석(2017)',40,40,20);
Insert into HONG.VWSUBJECTLIST (VCOURSENUM,VCOURSENAME,VCOURSESTART,VCOURSEEND,VSUBJECTNUM,VSUBJECTNAME,VTEXTBOOKNAME,VWRITTENPERCENT,VPRACTICALPERCENT,VATTENDANCEPERCENT) values (1,'파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),5,'웹 서버 구축 실무','텐서플로를 활용한 머신러닝',40,40,20);
Insert into HONG.VWSUBJECTLIST (VCOURSENUM,VCOURSENAME,VCOURSESTART,VCOURSEEND,VSUBJECTNUM,VSUBJECTNAME,VTEXTBOOKNAME,VWRITTENPERCENT,VPRACTICALPERCENT,VATTENDANCEPERCENT) values (1,'파이썬과 자바를 연계한 머신러닝 활용개발자 과정',to_date('18/07/02','RR/MM/DD'),to_date('18/11/30','RR/MM/DD'),6,'파이썬을 활용한 머신러닝 분석기술','블록체인 프로그래밍',40,40,20);
REM INSERTING into HONG.VWSUBJECTNAME
SET DEFINE OFF;
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',1,'JAVA 프로그래밍');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',2,'데이터베이스');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',3,'JAVA 애플리케이션 구현');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',4,'애플리케이션 배포');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',5,'Front-end 웹 애플리케이션 구현');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',6,'Back-end 웹 애플리케이션 구현');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',7,'Full-stack Framework 구현');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',8,'반응형 웹 개발기법');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',9,'융합기반 웹표준 프로젝트');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',10,'애플리케이션 테스트 수행');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',11,'웹 프로그래밍');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',12,'Spring 개발');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',13,'Spring framework 통합구현');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',14,'제이쿼리 모바일');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',15,'코틀린 프로그래밍');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',16,'코틀린 안드로이드 프로그램 구현');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',17,'코틀린 활용 안드로이드 모바일 프로젝트 제작 ');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',18,'Spring 서버 기반의 지능형 웹과 앱 통합개발 및 구현');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',19,'웹개발 및 클라이언트 프로그래밍');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',20,'Full-stack 응용 프로젝트 제작');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',21,'웹 서버 구축 실무');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',22,'파이썬을 활용한 머신러닝 분석기술');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',23,'Server/client side 프로젝트');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',24,'Back-end 개발');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',25,'Framework');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',26,'Testing & Development');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',27,'Front-end 개발');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',28,'UI 설계 및 구현');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',29,'R Fundamentals Application');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',30,'화면 설계');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',31,'웹 어플리케이션');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',32,'웹 퍼블리싱');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',33,'구현 애플리케이션 테스트');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',34,'자바 프레임워크');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',35,'인공지능');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',36,'Javascript');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',37,'Python 프로그래밍');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',38,'네트워크 프로그래밍');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',39,'블록체인의 이해와 활용');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',40,'HTML, CSS, jQuery, Ajax');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',42,'Big data 수집 및 저장, 기획과 응용');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',43,'실무 프로젝트');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',45,'DB 엔지니어링');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',47,'NW 엔지니어링');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',51,'DBMS, SQL 활용 및 응용');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',53,'NoSQL(MongoDB)');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',54,'빅데이터 시각화(R, 파이썬)');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',55,'데이터 마이닝');
Insert into HONG.VWSUBJECTNAME ("vLecturerName",VSEQ,"vAvailableSubject") values ('차은우',58,'지능형 빅데이터 서비스 실무프로젝트');
REM INSERTING into HONG.VWSUBJECTPERCENT
SET DEFINE OFF;
Insert into HONG.VWSUBJECTPERCENT (SUBJECTNUM,SUBJECTNAME,WRITTENPERCENT,PRACTICALPERCENT,ATTENDANCEPERCENT) values (1,'JAVA 프로그래밍',40,40,20);
REM INSERTING into HONG.VWSUBJECTQUIZDATE
SET DEFINE OFF;
Insert into HONG.VWSUBJECTQUIZDATE (SUBJECTNUM,SUBJECTNAME,QUIZDATE) values (3,'웹 프로그래밍',null);
Insert into HONG.VWSUBJECTQUIZDATE (SUBJECTNUM,SUBJECTNAME,QUIZDATE) values (3,'웹 프로그래밍',null);
Insert into HONG.VWSUBJECTQUIZDATE (SUBJECTNUM,SUBJECTNAME,QUIZDATE) values (3,'웹 프로그래밍',null);
Insert into HONG.VWSUBJECTQUIZDATE (SUBJECTNUM,SUBJECTNAME,QUIZDATE) values (3,'웹 프로그래밍',null);
Insert into HONG.VWSUBJECTQUIZDATE (SUBJECTNUM,SUBJECTNAME,QUIZDATE) values (3,'웹 프로그래밍',null);
Insert into HONG.VWSUBJECTQUIZDATE (SUBJECTNUM,SUBJECTNAME,QUIZDATE) values (3,'웹 프로그래밍',null);
Insert into HONG.VWSUBJECTQUIZDATE (SUBJECTNUM,SUBJECTNAME,QUIZDATE) values (3,'웹 프로그래밍',null);
Insert into HONG.VWSUBJECTQUIZDATE (SUBJECTNUM,SUBJECTNAME,QUIZDATE) values (3,'웹 프로그래밍',null);
Insert into HONG.VWSUBJECTQUIZDATE (SUBJECTNUM,SUBJECTNAME,QUIZDATE) values (3,'웹 프로그래밍',null);
Insert into HONG.VWSUBJECTQUIZDATE (SUBJECTNUM,SUBJECTNAME,QUIZDATE) values (3,'웹 프로그래밍',null);
REM INSERTING into HONG.VWSUBJECTSELECT
SET DEFINE OFF;
Insert into HONG.VWSUBJECTSELECT (VSUBJECTNUM,VSUBJECTNAME) values (1,'JAVA 프로그래밍');
--------------------------------------------------------
--  DDL for Index SYS_C008699
--------------------------------------------------------

  CREATE UNIQUE INDEX "HONG"."SYS_C008699" ON "HONG"."TBLCLASSROOM" ("SEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C008701
--------------------------------------------------------

  CREATE UNIQUE INDEX "HONG"."SYS_C008701" ON "HONG"."TBLLECTURER" ("SEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C008704
--------------------------------------------------------

  CREATE UNIQUE INDEX "HONG"."SYS_C008704" ON "HONG"."TBLSUBJECTTYPE" ("SEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C008707
--------------------------------------------------------

  CREATE UNIQUE INDEX "HONG"."SYS_C008707" ON "HONG"."TBLCOURSENAME" ("SEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C008711
--------------------------------------------------------

  CREATE UNIQUE INDEX "HONG"."SYS_C008711" ON "HONG"."TBLCOURSE" ("SEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C008717
--------------------------------------------------------

  CREATE UNIQUE INDEX "HONG"."SYS_C008717" ON "HONG"."TBLAVLB" ("SEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C008723
--------------------------------------------------------

  CREATE UNIQUE INDEX "HONG"."SYS_C008723" ON "HONG"."TBLSUBJECTNAME" ("SEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C008725
--------------------------------------------------------

  CREATE UNIQUE INDEX "HONG"."SYS_C008725" ON "HONG"."TBLPUBLISHER" ("SEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C008729
--------------------------------------------------------

  CREATE UNIQUE INDEX "HONG"."SYS_C008729" ON "HONG"."TBLSTUDENT" ("SEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C008735
--------------------------------------------------------

  CREATE UNIQUE INDEX "HONG"."SYS_C008735" ON "HONG"."TBLATTENDANCETYPE" ("SEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C008738
--------------------------------------------------------

  CREATE UNIQUE INDEX "HONG"."SYS_C008738" ON "HONG"."TBLQUIZ" ("SEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C008741
--------------------------------------------------------

  CREATE UNIQUE INDEX "HONG"."SYS_C008741" ON "HONG"."TBLTEXTBOOK" ("SEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C008743
--------------------------------------------------------

  CREATE UNIQUE INDEX "HONG"."SYS_C008743" ON "HONG"."TBLSTUDENTINFO" ("SEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C008748
--------------------------------------------------------

  CREATE UNIQUE INDEX "HONG"."SYS_C008748" ON "HONG"."TBLSUBJECT" ("SEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C008754
--------------------------------------------------------

  CREATE UNIQUE INDEX "HONG"."SYS_C008754" ON "HONG"."TBLATTENDANCE" ("SEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C008758
--------------------------------------------------------

  CREATE UNIQUE INDEX "HONG"."SYS_C008758" ON "HONG"."TBLSUBJECTGRADE" ("SEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C008762
--------------------------------------------------------

  CREATE UNIQUE INDEX "HONG"."SYS_C008762" ON "HONG"."TBLWARNING" ("SEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C008765
--------------------------------------------------------

  CREATE UNIQUE INDEX "HONG"."SYS_C008765" ON "HONG"."TBLTUTORING" ("SEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C008769
--------------------------------------------------------

  CREATE UNIQUE INDEX "HONG"."SYS_C008769" ON "HONG"."TBLHOLIDAY" ("SEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C008772
--------------------------------------------------------

  CREATE UNIQUE INDEX "HONG"."SYS_C008772" ON "HONG"."TBLDATE" ("SEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C008775
--------------------------------------------------------

  CREATE UNIQUE INDEX "HONG"."SYS_C008775" ON "HONG"."TBLRECOMMENDATION" ("SEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table TBLATTENDANCE
--------------------------------------------------------

  ALTER TABLE "HONG"."TBLATTENDANCE" ADD PRIMARY KEY ("SEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "HONG"."TBLATTENDANCE" MODIFY ("STUDENTSEQ" NOT NULL ENABLE);
  ALTER TABLE "HONG"."TBLATTENDANCE" MODIFY ("ATTENDANCEDATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBLATTENDANCETYPE
--------------------------------------------------------

  ALTER TABLE "HONG"."TBLATTENDANCETYPE" ADD PRIMARY KEY ("SEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "HONG"."TBLATTENDANCETYPE" ADD CHECK (legitimacy IN ('YES', 'NO')) ENABLE;
  ALTER TABLE "HONG"."TBLATTENDANCETYPE" MODIFY ("WEIGHTEDPOINT" NOT NULL ENABLE);
  ALTER TABLE "HONG"."TBLATTENDANCETYPE" MODIFY ("POINT" NOT NULL ENABLE);
  ALTER TABLE "HONG"."TBLATTENDANCETYPE" MODIFY ("LEGITIMACY" NOT NULL ENABLE);
  ALTER TABLE "HONG"."TBLATTENDANCETYPE" MODIFY ("NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBLAVLB
--------------------------------------------------------

  ALTER TABLE "HONG"."TBLAVLB" ADD PRIMARY KEY ("SEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "HONG"."TBLAVLB" MODIFY ("SUBJECTTYPESEQ" NOT NULL ENABLE);
  ALTER TABLE "HONG"."TBLAVLB" MODIFY ("LECTURERSEQ" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBLCLASSROOM
--------------------------------------------------------

  ALTER TABLE "HONG"."TBLCLASSROOM" ADD PRIMARY KEY ("SEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "HONG"."TBLCLASSROOM" MODIFY ("STATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBLCOURSE
--------------------------------------------------------

  ALTER TABLE "HONG"."TBLCOURSE" ADD PRIMARY KEY ("SEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "HONG"."TBLCOURSE" MODIFY ("CLASSROOMSEQ" NOT NULL ENABLE);
  ALTER TABLE "HONG"."TBLCOURSE" MODIFY ("LECTURESEQ" NOT NULL ENABLE);
  ALTER TABLE "HONG"."TBLCOURSE" MODIFY ("COURSENAMESEQ" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBLCOURSENAME
--------------------------------------------------------

  ALTER TABLE "HONG"."TBLCOURSENAME" ADD PRIMARY KEY ("SEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "HONG"."TBLCOURSENAME" MODIFY ("STATE" NOT NULL ENABLE);
  ALTER TABLE "HONG"."TBLCOURSENAME" MODIFY ("NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBLDATE
--------------------------------------------------------

  ALTER TABLE "HONG"."TBLDATE" ADD PRIMARY KEY ("SEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "HONG"."TBLDATE" MODIFY ("STATE" NOT NULL ENABLE);
  ALTER TABLE "HONG"."TBLDATE" MODIFY ("REGDATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBLHOLIDAY
--------------------------------------------------------

  ALTER TABLE "HONG"."TBLHOLIDAY" ADD PRIMARY KEY ("SEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "HONG"."TBLHOLIDAY" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "HONG"."TBLHOLIDAY" MODIFY ("REGDATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBLLECTURER
--------------------------------------------------------

  ALTER TABLE "HONG"."TBLLECTURER" ADD PRIMARY KEY ("SEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "HONG"."TBLLECTURER" MODIFY ("STATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBLPUBLISHER
--------------------------------------------------------

  ALTER TABLE "HONG"."TBLPUBLISHER" ADD PRIMARY KEY ("SEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "HONG"."TBLPUBLISHER" MODIFY ("STATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBLQUIZ
--------------------------------------------------------

  ALTER TABLE "HONG"."TBLQUIZ" ADD PRIMARY KEY ("SEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "HONG"."TBLQUIZ" MODIFY ("STATE" NOT NULL ENABLE);
  ALTER TABLE "HONG"."TBLQUIZ" MODIFY ("SUBJECTSEQ" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBLRECOMMENDATION
--------------------------------------------------------

  ALTER TABLE "HONG"."TBLRECOMMENDATION" ADD PRIMARY KEY ("SEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "HONG"."TBLRECOMMENDATION" MODIFY ("ADMINCONFIRM" NOT NULL ENABLE);
  ALTER TABLE "HONG"."TBLRECOMMENDATION" MODIFY ("STUDENTSEQ" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBLSTUDENT
--------------------------------------------------------

  ALTER TABLE "HONG"."TBLSTUDENT" ADD PRIMARY KEY ("SEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "HONG"."TBLSTUDENT" MODIFY ("REGISTRATIONTIME" NOT NULL ENABLE);
  ALTER TABLE "HONG"."TBLSTUDENT" MODIFY ("COURSESEQ" NOT NULL ENABLE);
  ALTER TABLE "HONG"."TBLSTUDENT" MODIFY ("STUDENTINFOSEQ" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBLSTUDENTINFO
--------------------------------------------------------

  ALTER TABLE "HONG"."TBLSTUDENTINFO" ADD PRIMARY KEY ("SEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "HONG"."TBLSTUDENTINFO" MODIFY ("STATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBLSUBJECT
--------------------------------------------------------

  ALTER TABLE "HONG"."TBLSUBJECT" ADD PRIMARY KEY ("SEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "HONG"."TBLSUBJECT" MODIFY ("STATE" NOT NULL ENABLE);
  ALTER TABLE "HONG"."TBLSUBJECT" MODIFY ("TEXTBOOKSEQ" NOT NULL ENABLE);
  ALTER TABLE "HONG"."TBLSUBJECT" MODIFY ("COURSESEQ" NOT NULL ENABLE);
  ALTER TABLE "HONG"."TBLSUBJECT" MODIFY ("SUBJECTNAMESEQ" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBLSUBJECTGRADE
--------------------------------------------------------

  ALTER TABLE "HONG"."TBLSUBJECTGRADE" MODIFY ("SUBJECTSEQ" NOT NULL ENABLE);
  ALTER TABLE "HONG"."TBLSUBJECTGRADE" MODIFY ("STUDENTSEQ" NOT NULL ENABLE);
  ALTER TABLE "HONG"."TBLSUBJECTGRADE" ADD PRIMARY KEY ("SEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TBLSUBJECTNAME
--------------------------------------------------------

  ALTER TABLE "HONG"."TBLSUBJECTNAME" ADD PRIMARY KEY ("SEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "HONG"."TBLSUBJECTNAME" MODIFY ("STATE" NOT NULL ENABLE);
  ALTER TABLE "HONG"."TBLSUBJECTNAME" MODIFY ("SUBJECTTYPESEQ" NOT NULL ENABLE);
  ALTER TABLE "HONG"."TBLSUBJECTNAME" MODIFY ("NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBLSUBJECTTYPE
--------------------------------------------------------

  ALTER TABLE "HONG"."TBLSUBJECTTYPE" ADD PRIMARY KEY ("SEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "HONG"."TBLSUBJECTTYPE" MODIFY ("STATE" NOT NULL ENABLE);
  ALTER TABLE "HONG"."TBLSUBJECTTYPE" MODIFY ("NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBLTEXTBOOK
--------------------------------------------------------

  ALTER TABLE "HONG"."TBLTEXTBOOK" ADD PRIMARY KEY ("SEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "HONG"."TBLTEXTBOOK" MODIFY ("STATE" NOT NULL ENABLE);
  ALTER TABLE "HONG"."TBLTEXTBOOK" MODIFY ("PUBLISHERSEQ" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBLTUTORING
--------------------------------------------------------

  ALTER TABLE "HONG"."TBLTUTORING" ADD PRIMARY KEY ("SEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "HONG"."TBLTUTORING" MODIFY ("STUDENTSEQ" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBLWARNING
--------------------------------------------------------

  ALTER TABLE "HONG"."TBLWARNING" ADD PRIMARY KEY ("SEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "HONG"."TBLWARNING" MODIFY ("STUDENTSEQ" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table TBLATTENDANCE
--------------------------------------------------------

  ALTER TABLE "HONG"."TBLATTENDANCE" ADD FOREIGN KEY ("STUDENTSEQ")
	  REFERENCES "HONG"."TBLSTUDENT" ("SEQ") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBLAVLB
--------------------------------------------------------

  ALTER TABLE "HONG"."TBLAVLB" ADD FOREIGN KEY ("LECTURERSEQ")
	  REFERENCES "HONG"."TBLLECTURER" ("SEQ") ENABLE;
  ALTER TABLE "HONG"."TBLAVLB" ADD FOREIGN KEY ("SUBJECTTYPESEQ")
	  REFERENCES "HONG"."TBLSUBJECTTYPE" ("SEQ") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBLCOURSE
--------------------------------------------------------

  ALTER TABLE "HONG"."TBLCOURSE" ADD FOREIGN KEY ("COURSENAMESEQ")
	  REFERENCES "HONG"."TBLCOURSENAME" ("SEQ") ENABLE;
  ALTER TABLE "HONG"."TBLCOURSE" ADD FOREIGN KEY ("LECTURESEQ")
	  REFERENCES "HONG"."TBLLECTURER" ("SEQ") ENABLE;
  ALTER TABLE "HONG"."TBLCOURSE" ADD FOREIGN KEY ("CLASSROOMSEQ")
	  REFERENCES "HONG"."TBLCLASSROOM" ("SEQ") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBLRECOMMENDATION
--------------------------------------------------------

  ALTER TABLE "HONG"."TBLRECOMMENDATION" ADD FOREIGN KEY ("STUDENTSEQ")
	  REFERENCES "HONG"."TBLSTUDENT" ("SEQ") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBLSUBJECT
--------------------------------------------------------

  ALTER TABLE "HONG"."TBLSUBJECT" ADD FOREIGN KEY ("SUBJECTNAMESEQ")
	  REFERENCES "HONG"."TBLSUBJECTNAME" ("SEQ") ENABLE;
  ALTER TABLE "HONG"."TBLSUBJECT" ADD FOREIGN KEY ("COURSESEQ")
	  REFERENCES "HONG"."TBLCOURSE" ("SEQ") ENABLE;
  ALTER TABLE "HONG"."TBLSUBJECT" ADD FOREIGN KEY ("TEXTBOOKSEQ")
	  REFERENCES "HONG"."TBLTEXTBOOK" ("SEQ") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBLSUBJECTGRADE
--------------------------------------------------------

  ALTER TABLE "HONG"."TBLSUBJECTGRADE" ADD FOREIGN KEY ("STUDENTSEQ")
	  REFERENCES "HONG"."TBLSTUDENT" ("SEQ") ENABLE;
  ALTER TABLE "HONG"."TBLSUBJECTGRADE" ADD FOREIGN KEY ("SUBJECTSEQ")
	  REFERENCES "HONG"."TBLSUBJECT" ("SEQ") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBLTUTORING
--------------------------------------------------------

  ALTER TABLE "HONG"."TBLTUTORING" ADD FOREIGN KEY ("STUDENTSEQ")
	  REFERENCES "HONG"."TBLSTUDENT" ("SEQ") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBLWARNING
--------------------------------------------------------

  ALTER TABLE "HONG"."TBLWARNING" ADD FOREIGN KEY ("STUDENTSEQ")
	  REFERENCES "HONG"."TBLSTUDENT" ("SEQ") ENABLE;
