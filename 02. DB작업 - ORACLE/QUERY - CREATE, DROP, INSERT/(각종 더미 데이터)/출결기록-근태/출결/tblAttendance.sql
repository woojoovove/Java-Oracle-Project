
CREATE TABLE tblAttendance
(
    seq NUMBER PRIMARY KEY,
    attendanceDate DATE NOT NULL,
    studentSeq NUMBER REFERENCES tblStudent(seq)
);

CREATE SEQUENCE attendanceSeq;

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 10:15:38','yyyy-mm-dd hh24-mi-ss'),1);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 18:19:11','yyyy-mm-dd hh24-mi-ss'),1);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 08:30:31','yyyy-mm-dd hh24-mi-ss'),1);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 18:15:38','yyyy-mm-dd hh24-mi-ss'),1);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 09:40:34','yyyy-mm-dd hh24-mi-ss'),1);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 19:00:34','yyyy-mm-dd hh24-mi-ss'),1);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 08:49:30','yyyy-mm-dd hh24-mi-ss'),1);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 18:01:23','yyyy-mm-dd hh24-mi-ss'),1);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 08:36:01','yyyy-mm-dd hh24-mi-ss'),1);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 18:11:12','yyyy-mm-dd hh24-mi-ss'),1);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 08:55:12','yyyy-mm-dd hh24-mi-ss'),1);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 18:55:16','yyyy-mm-dd hh24-mi-ss'),1);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 08:15:11','yyyy-mm-dd hh24-mi-ss'),1);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 18:33:19','yyyy-mm-dd hh24-mi-ss'),1);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 09:44:22','yyyy-mm-dd hh24-mi-ss'),1);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 19:01:34','yyyy-mm-dd hh24-mi-ss'),1);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 08:55:41','yyyy-mm-dd hh24-mi-ss'),1);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 18:07:10','yyyy-mm-dd hh24-mi-ss'),1);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 08:10:32','yyyy-mm-dd hh24-mi-ss'),1);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 18:15:39','yyyy-mm-dd hh24-mi-ss'),1);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 08:33:22','yyyy-mm-dd hh24-mi-ss'),1);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 18:22:11','yyyy-mm-dd hh24-mi-ss'),1);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 08:04:38','yyyy-mm-dd hh24-mi-ss'),1);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 18:09:07','yyyy-mm-dd hh24-mi-ss'),1);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 08:57:03','yyyy-mm-dd hh24-mi-ss'),1);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 18:21:31','yyyy-mm-dd hh24-mi-ss'),1);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 09:15:38','yyyy-mm-dd hh24-mi-ss'),1);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 18:57:02','yyyy-mm-dd hh24-mi-ss'),1);

-----------------------------------------------------------------------------------------------

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 08:10:32','yyyy-mm-dd hh24-mi-ss'),2);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 18:19:19','yyyy-mm-dd hh24-mi-ss'),2);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 08:35:36','yyyy-mm-dd hh24-mi-ss'),2);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 18:12:02','yyyy-mm-dd hh24-mi-ss'),2);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 08:42:34','yyyy-mm-dd hh24-mi-ss'),2);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 19:05:23','yyyy-mm-dd hh24-mi-ss'),2);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 08:55:30','yyyy-mm-dd hh24-mi-ss'),2);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 18:12:45','yyyy-mm-dd hh24-mi-ss'),2);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 08:37:07','yyyy-mm-dd hh24-mi-ss'),2);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 18:10:12','yyyy-mm-dd hh24-mi-ss'),2);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 12:03:12','yyyy-mm-dd hh24-mi-ss'),2);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 18:55:16','yyyy-mm-dd hh24-mi-ss'),2);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 08:15:45','yyyy-mm-dd hh24-mi-ss'),2);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 18:00:23','yyyy-mm-dd hh24-mi-ss'),2);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 08:42:22','yyyy-mm-dd hh24-mi-ss'),2);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 18:56:34','yyyy-mm-dd hh24-mi-ss'),2);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 08:50:41','yyyy-mm-dd hh24-mi-ss'),2);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 18:12:10','yyyy-mm-dd hh24-mi-ss'),2);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 08:13:32','yyyy-mm-dd hh24-mi-ss'),2);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 18:12:39','yyyy-mm-dd hh24-mi-ss'),2);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 08:30:20','yyyy-mm-dd hh24-mi-ss'),2);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 18:20:10','yyyy-mm-dd hh24-mi-ss'),2);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 08:56:35','yyyy-mm-dd hh24-mi-ss'),2);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 18:55:05','yyyy-mm-dd hh24-mi-ss'),2);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 08:57:49','yyyy-mm-dd hh24-mi-ss'),2);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 18:01:39','yyyy-mm-dd hh24-mi-ss'),2);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 08:51:38','yyyy-mm-dd hh24-mi-ss'),2);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 18:03:02','yyyy-mm-dd hh24-mi-ss'),2);

-----------------------------------------------------------------------------------------------

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 08:10:32','yyyy-mm-dd hh24-mi-ss'),3);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 18:19:19','yyyy-mm-dd hh24-mi-ss'),3);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 08:35:36','yyyy-mm-dd hh24-mi-ss'),3);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 18:12:02','yyyy-mm-dd hh24-mi-ss'),3);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 08:42:34','yyyy-mm-dd hh24-mi-ss'),3);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 19:05:23','yyyy-mm-dd hh24-mi-ss'),3);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 08:55:30','yyyy-mm-dd hh24-mi-ss'),3);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 18:12:45','yyyy-mm-dd hh24-mi-ss'),3);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 08:37:07','yyyy-mm-dd hh24-mi-ss'),3);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 18:10:12','yyyy-mm-dd hh24-mi-ss'),3);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 08:33:12','yyyy-mm-dd hh24-mi-ss'),3);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 18:05:16','yyyy-mm-dd hh24-mi-ss'),3);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 08:15:45','yyyy-mm-dd hh24-mi-ss'),3);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 18:00:23','yyyy-mm-dd hh24-mi-ss'),3);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 08:42:22','yyyy-mm-dd hh24-mi-ss'),3);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 18:56:34','yyyy-mm-dd hh24-mi-ss'),3);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 08:50:41','yyyy-mm-dd hh24-mi-ss'),3);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 18:12:10','yyyy-mm-dd hh24-mi-ss'),3);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 08:13:32','yyyy-mm-dd hh24-mi-ss'),3);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 18:12:39','yyyy-mm-dd hh24-mi-ss'),3);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 08:30:20','yyyy-mm-dd hh24-mi-ss'),3);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 18:20:10','yyyy-mm-dd hh24-mi-ss'),3);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 08:56:35','yyyy-mm-dd hh24-mi-ss'),3);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 18:55:05','yyyy-mm-dd hh24-mi-ss'),3);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 08:57:49','yyyy-mm-dd hh24-mi-ss'),3);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 18:01:39','yyyy-mm-dd hh24-mi-ss'),3);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 08:51:38','yyyy-mm-dd hh24-mi-ss'),3);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 18:03:02','yyyy-mm-dd hh24-mi-ss'),3);

-----------------------------------------------------------------------------------------------

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 08:29:32','yyyy-mm-dd hh24-mi-ss'),4);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 18:39:03','yyyy-mm-dd hh24-mi-ss'),4);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 09:31:36','yyyy-mm-dd hh24-mi-ss'),4);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 18:12:38','yyyy-mm-dd hh24-mi-ss'),4);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 09:42:34','yyyy-mm-dd hh24-mi-ss'),4);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 19:08:23','yyyy-mm-dd hh24-mi-ss'),4);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 09:55:30','yyyy-mm-dd hh24-mi-ss'),4);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 18:17:45','yyyy-mm-dd hh24-mi-ss'),4);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 08:39:39','yyyy-mm-dd hh24-mi-ss'),4);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 18:05:11','yyyy-mm-dd hh24-mi-ss'),4);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 08:45:12','yyyy-mm-dd hh24-mi-ss'),4);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 18:31:16','yyyy-mm-dd hh24-mi-ss'),4);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 08:35:17','yyyy-mm-dd hh24-mi-ss'),4);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 18:09:13','yyyy-mm-dd hh24-mi-ss'),4);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 08:47:27','yyyy-mm-dd hh24-mi-ss'),4);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 18:07:37','yyyy-mm-dd hh24-mi-ss'),4);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 09:40:11','yyyy-mm-dd hh24-mi-ss'),4);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 18:19:19','yyyy-mm-dd hh24-mi-ss'),4);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 08:17:33','yyyy-mm-dd hh24-mi-ss'),4);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 18:10:31','yyyy-mm-dd hh24-mi-ss'),4);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 08:30:50','yyyy-mm-dd hh24-mi-ss'),4);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 18:25:30','yyyy-mm-dd hh24-mi-ss'),4);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 08:52:35','yyyy-mm-dd hh24-mi-ss'),4);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 18:01:05','yyyy-mm-dd hh24-mi-ss'),4);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 08:51:34','yyyy-mm-dd hh24-mi-ss'),4);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 18:11:10','yyyy-mm-dd hh24-mi-ss'),4);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 08:56:38','yyyy-mm-dd hh24-mi-ss'),4);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 18:09:11','yyyy-mm-dd hh24-mi-ss'),4);

-----------------------------------------------------------------------------------------------

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 08:12:22','yyyy-mm-dd hh24-mi-ss'),5);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 18:09:11','yyyy-mm-dd hh24-mi-ss'),5);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 08:45:12','yyyy-mm-dd hh24-mi-ss'),5);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 18:14:34','yyyy-mm-dd hh24-mi-ss'),5);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 08:52:54','yyyy-mm-dd hh24-mi-ss'),5);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 19:51:53','yyyy-mm-dd hh24-mi-ss'),5);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 08:50:30','yyyy-mm-dd hh24-mi-ss'),5);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 18:11:45','yyyy-mm-dd hh24-mi-ss'),5);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 08:30:07','yyyy-mm-dd hh24-mi-ss'),5);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 18:17:12','yyyy-mm-dd hh24-mi-ss'),5);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 08:45:38','yyyy-mm-dd hh24-mi-ss'),5);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 14:01:38','yyyy-mm-dd hh24-mi-ss'),5);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 14:58:51','yyyy-mm-dd hh24-mi-ss'),5);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 18:05:56','yyyy-mm-dd hh24-mi-ss'),5);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 08:45:40','yyyy-mm-dd hh24-mi-ss'),5);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 18:09:29','yyyy-mm-dd hh24-mi-ss'),5);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 08:47:27','yyyy-mm-dd hh24-mi-ss'),5);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 18:51:31','yyyy-mm-dd hh24-mi-ss'),5);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 08:59:01','yyyy-mm-dd hh24-mi-ss'),5);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 18:47:27','yyyy-mm-dd hh24-mi-ss'),5);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 08:43:30','yyyy-mm-dd hh24-mi-ss'),5);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 18:22:49','yyyy-mm-dd hh24-mi-ss'),5);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 08:50:50','yyyy-mm-dd hh24-mi-ss'),5);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 18:10:20','yyyy-mm-dd hh24-mi-ss'),5);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 08:56:21','yyyy-mm-dd hh24-mi-ss'),5);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 18:01:05','yyyy-mm-dd hh24-mi-ss'),5);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 08:57:12','yyyy-mm-dd hh24-mi-ss'),5);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 18:12:12','yyyy-mm-dd hh24-mi-ss'),5);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 08:55:55','yyyy-mm-dd hh24-mi-ss'),5);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 18:22:22','yyyy-mm-dd hh24-mi-ss'),5);

-----------------------------------------------------------------------------------------------

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 08:50:11','yyyy-mm-dd hh24-mi-ss'),6);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 18:03:12','yyyy-mm-dd hh24-mi-ss'),6);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 08:45:32','yyyy-mm-dd hh24-mi-ss'),6);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 18:12:23','yyyy-mm-dd hh24-mi-ss'),6);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 08:41:31','yyyy-mm-dd hh24-mi-ss'),6);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 19:25:21','yyyy-mm-dd hh24-mi-ss'),6);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 08:25:10','yyyy-mm-dd hh24-mi-ss'),6);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 18:42:41','yyyy-mm-dd hh24-mi-ss'),6);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 08:51:02','yyyy-mm-dd hh24-mi-ss'),6);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 18:14:22','yyyy-mm-dd hh24-mi-ss'),6);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 08:53:22','yyyy-mm-dd hh24-mi-ss'),6);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 18:12:22','yyyy-mm-dd hh24-mi-ss'),6);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 08:45:12','yyyy-mm-dd hh24-mi-ss'),6);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 18:41:20','yyyy-mm-dd hh24-mi-ss'),6);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 08:41:20','yyyy-mm-dd hh24-mi-ss'),6);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 18:59:30','yyyy-mm-dd hh24-mi-ss'),6);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 08:55:45','yyyy-mm-dd hh24-mi-ss'),6);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 18:15:15','yyyy-mm-dd hh24-mi-ss'),6);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 08:19:39','yyyy-mm-dd hh24-mi-ss'),6);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 18:10:30','yyyy-mm-dd hh24-mi-ss'),6);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 08:39:56','yyyy-mm-dd hh24-mi-ss'),6);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 18:10:19','yyyy-mm-dd hh24-mi-ss'),6);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 08:52:12','yyyy-mm-dd hh24-mi-ss'),6);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 18:15:05','yyyy-mm-dd hh24-mi-ss'),6);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 08:57:49','yyyy-mm-dd hh24-mi-ss'),6);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 17:01:20','yyyy-mm-dd hh24-mi-ss'),6);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 08:55:11','yyyy-mm-dd hh24-mi-ss'),6);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 10:00:11','yyyy-mm-dd hh24-mi-ss'),6);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 10:59:11','yyyy-mm-dd hh24-mi-ss'),6);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 18:07:32','yyyy-mm-dd hh24-mi-ss'),6);

-----------------------------------------------------------------------------------------------

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 08:58:38','yyyy-mm-dd hh24-mi-ss'),7);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 18:10:30','yyyy-mm-dd hh24-mi-ss'),7);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 08:48:12','yyyy-mm-dd hh24-mi-ss'),7);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 18:05:11','yyyy-mm-dd hh24-mi-ss'),7);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 08:55:20','yyyy-mm-dd hh24-mi-ss'),7);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 18:55:10','yyyy-mm-dd hh24-mi-ss'),7);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 08:57:20','yyyy-mm-dd hh24-mi-ss'),7);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 18:07:12','yyyy-mm-dd hh24-mi-ss'),7);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 08:55:15','yyyy-mm-dd hh24-mi-ss'),7);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 18:07:11','yyyy-mm-dd hh24-mi-ss'),7);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 08:45:07','yyyy-mm-dd hh24-mi-ss'),7);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 18:06:11','yyyy-mm-dd hh24-mi-ss'),7);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 08:50:07','yyyy-mm-dd hh24-mi-ss'),7);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 18:07:11','yyyy-mm-dd hh24-mi-ss'),7);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 08:59:00','yyyy-mm-dd hh24-mi-ss'),7);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 18:00:30','yyyy-mm-dd hh24-mi-ss'),7);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 08:59:10','yyyy-mm-dd hh24-mi-ss'),7);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 18:25:00','yyyy-mm-dd hh24-mi-ss'),7);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 08:58:12','yyyy-mm-dd hh24-mi-ss'),7);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 18:27:11','yyyy-mm-dd hh24-mi-ss'),7);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 09:50:40','yyyy-mm-dd hh24-mi-ss'),7);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 18:27:11','yyyy-mm-dd hh24-mi-ss'),7);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 08:55:40','yyyy-mm-dd hh24-mi-ss'),7);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 18:11:11','yyyy-mm-dd hh24-mi-ss'),7);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 08:57:40','yyyy-mm-dd hh24-mi-ss'),7);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 18:10:10','yyyy-mm-dd hh24-mi-ss'),7);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 08:47:00','yyyy-mm-dd hh24-mi-ss'),7);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 18:12:10','yyyy-mm-dd hh24-mi-ss'),7);


INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 08:57:38','yyyy-mm-dd hh24-mi-ss'),8);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 18:16:30','yyyy-mm-dd hh24-mi-ss'),8);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 08:45:12','yyyy-mm-dd hh24-mi-ss'),8);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 18:06:11','yyyy-mm-dd hh24-mi-ss'),8);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 08:57:20','yyyy-mm-dd hh24-mi-ss'),8);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 18:11:10','yyyy-mm-dd hh24-mi-ss'),8);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 08:55:20','yyyy-mm-dd hh24-mi-ss'),8);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 18:06:12','yyyy-mm-dd hh24-mi-ss'),8);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 08:57:15','yyyy-mm-dd hh24-mi-ss'),8);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 18:07:11','yyyy-mm-dd hh24-mi-ss'),8);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 08:45:07','yyyy-mm-dd hh24-mi-ss'),8);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 18:02:11','yyyy-mm-dd hh24-mi-ss'),8);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 08:55:07','yyyy-mm-dd hh24-mi-ss'),8);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 18:06:11','yyyy-mm-dd hh24-mi-ss'),8);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 08:51:00','yyyy-mm-dd hh24-mi-ss'),8);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 18:02:30','yyyy-mm-dd hh24-mi-ss'),8);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 08:54:10','yyyy-mm-dd hh24-mi-ss'),8);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 18:25:00','yyyy-mm-dd hh24-mi-ss'),8);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 08:51:12','yyyy-mm-dd hh24-mi-ss'),8);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 18:24:11','yyyy-mm-dd hh24-mi-ss'),8);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 08:57:40','yyyy-mm-dd hh24-mi-ss'),8);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 18:23:11','yyyy-mm-dd hh24-mi-ss'),8);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 08:55:40','yyyy-mm-dd hh24-mi-ss'),8);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 18:12:11','yyyy-mm-dd hh24-mi-ss'),8);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 08:45:40','yyyy-mm-dd hh24-mi-ss'),8);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 18:16:10','yyyy-mm-dd hh24-mi-ss'),8);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 08:48:00','yyyy-mm-dd hh24-mi-ss'),8);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 18:12:10','yyyy-mm-dd hh24-mi-ss'),8);



INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 08:58:28','yyyy-mm-dd hh24-mi-ss'),9);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 18:11:30','yyyy-mm-dd hh24-mi-ss'),9);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 08:47:32','yyyy-mm-dd hh24-mi-ss'),9);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 18:05:31','yyyy-mm-dd hh24-mi-ss'),9);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 08:54:20','yyyy-mm-dd hh24-mi-ss'),9);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 18:12:10','yyyy-mm-dd hh24-mi-ss'),9);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 08:56:10','yyyy-mm-dd hh24-mi-ss'),9);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 18:07:12','yyyy-mm-dd hh24-mi-ss'),9);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 08:51:15','yyyy-mm-dd hh24-mi-ss'),9);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 18:00:11','yyyy-mm-dd hh24-mi-ss'),9);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 08:41:37','yyyy-mm-dd hh24-mi-ss'),9);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 18:05:11','yyyy-mm-dd hh24-mi-ss'),9);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 08:54:07','yyyy-mm-dd hh24-mi-ss'),9);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 18:07:11','yyyy-mm-dd hh24-mi-ss'),9);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 08:50:00','yyyy-mm-dd hh24-mi-ss'),9);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 18:05:30','yyyy-mm-dd hh24-mi-ss'),9);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 08:59:10','yyyy-mm-dd hh24-mi-ss'),9);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 18:23:00','yyyy-mm-dd hh24-mi-ss'),9);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 08:51:12','yyyy-mm-dd hh24-mi-ss'),9);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 18:23:11','yyyy-mm-dd hh24-mi-ss'),9);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 09:57:40','yyyy-mm-dd hh24-mi-ss'),9);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 17:23:11','yyyy-mm-dd hh24-mi-ss'),9);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 08:45:40','yyyy-mm-dd hh24-mi-ss'),9);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 18:32:11','yyyy-mm-dd hh24-mi-ss'),9);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 08:34:40','yyyy-mm-dd hh24-mi-ss'),9);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 18:33:10','yyyy-mm-dd hh24-mi-ss'),9);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 08:48:22','yyyy-mm-dd hh24-mi-ss'),9);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 18:12:10','yyyy-mm-dd hh24-mi-ss'),9);


INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 08:47:28','yyyy-mm-dd hh24-mi-ss'),10);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 18:10:30','yyyy-mm-dd hh24-mi-ss'),10);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 08:41:32','yyyy-mm-dd hh24-mi-ss'),10);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 18:22:31','yyyy-mm-dd hh24-mi-ss'),10);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 08:04:20','yyyy-mm-dd hh24-mi-ss'),10);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 18:11:10','yyyy-mm-dd hh24-mi-ss'),10);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 08:51:40','yyyy-mm-dd hh24-mi-ss'),10);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 18:05:22','yyyy-mm-dd hh24-mi-ss'),10);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 08:50:15','yyyy-mm-dd hh24-mi-ss'),10);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 18:02:11','yyyy-mm-dd hh24-mi-ss'),10);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 09:44:31','yyyy-mm-dd hh24-mi-ss'),10);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 11:05:11','yyyy-mm-dd hh24-mi-ss'),10);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 11:55:37','yyyy-mm-dd hh24-mi-ss'),10);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 18:44:11','yyyy-mm-dd hh24-mi-ss'),10);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 08:51:07','yyyy-mm-dd hh24-mi-ss'),10);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 18:05:11','yyyy-mm-dd hh24-mi-ss'),10);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 08:53:30','yyyy-mm-dd hh24-mi-ss'),10);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 18:06:20','yyyy-mm-dd hh24-mi-ss'),10);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 08:53:50','yyyy-mm-dd hh24-mi-ss'),10);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 18:21:00','yyyy-mm-dd hh24-mi-ss'),10);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 08:53:12','yyyy-mm-dd hh24-mi-ss'),10);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 18:20:10','yyyy-mm-dd hh24-mi-ss'),10);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 08:27:10','yyyy-mm-dd hh24-mi-ss'),10);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 18:21:11','yyyy-mm-dd hh24-mi-ss'),10);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 08:42:40','yyyy-mm-dd hh24-mi-ss'),10);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 18:32:11','yyyy-mm-dd hh24-mi-ss'),10);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 08:44:40','yyyy-mm-dd hh24-mi-ss'),10);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 18:18:18','yyyy-mm-dd hh24-mi-ss'),10);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 08:48:22','yyyy-mm-dd hh24-mi-ss'),10);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 18:12:10','yyyy-mm-dd hh24-mi-ss'),10);



INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 08:41:28','yyyy-mm-dd hh24-mi-ss'),11);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 18:14:30','yyyy-mm-dd hh24-mi-ss'),11);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 08:46:32','yyyy-mm-dd hh24-mi-ss'),11);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 18:23:31','yyyy-mm-dd hh24-mi-ss'),11);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 09:03:20','yyyy-mm-dd hh24-mi-ss'),11);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 18:01:10','yyyy-mm-dd hh24-mi-ss'),11);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 08:54:40','yyyy-mm-dd hh24-mi-ss'),11);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 18:08:22','yyyy-mm-dd hh24-mi-ss'),11);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 08:58:25','yyyy-mm-dd hh24-mi-ss'),11);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 18:00:11','yyyy-mm-dd hh24-mi-ss'),11);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 09:40:31','yyyy-mm-dd hh24-mi-ss'),11);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 18:44:11','yyyy-mm-dd hh24-mi-ss'),11);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 08:50:07','yyyy-mm-dd hh24-mi-ss'),11);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 18:02:11','yyyy-mm-dd hh24-mi-ss'),11);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 08:53:30','yyyy-mm-dd hh24-mi-ss'),11);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 18:04:20','yyyy-mm-dd hh24-mi-ss'),11);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 08:55:50','yyyy-mm-dd hh24-mi-ss'),11);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 18:22:00','yyyy-mm-dd hh24-mi-ss'),11);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 08:50:12','yyyy-mm-dd hh24-mi-ss'),11);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 18:22:10','yyyy-mm-dd hh24-mi-ss'),11);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 08:24:10','yyyy-mm-dd hh24-mi-ss'),11);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 18:25:11','yyyy-mm-dd hh24-mi-ss'),11);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 08:46:40','yyyy-mm-dd hh24-mi-ss'),11);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 18:33:11','yyyy-mm-dd hh24-mi-ss'),11);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 08:55:40','yyyy-mm-dd hh24-mi-ss'),11);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 18:19:18','yyyy-mm-dd hh24-mi-ss'),11);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 08:44:22','yyyy-mm-dd hh24-mi-ss'),11);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 18:18:10','yyyy-mm-dd hh24-mi-ss'),11);



INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 08:40:28','yyyy-mm-dd hh24-mi-ss'),12);입실
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 10:10:10','yyyy-mm-dd hh24-mi-ss'),12);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 11:00:00','yyyy-mm-dd hh24-mi-ss'),12);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 14:14:14','yyyy-mm-dd hh24-mi-ss'),12);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 15:13:15','yyyy-mm-dd hh24-mi-ss'),12);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 18:14:31','yyyy-mm-dd hh24-mi-ss'),12);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 08:46:31','yyyy-mm-dd hh24-mi-ss'),12);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 18:23:33','yyyy-mm-dd hh24-mi-ss'),12);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 09:03:25','yyyy-mm-dd hh24-mi-ss'),12);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 18:01:16','yyyy-mm-dd hh24-mi-ss'),12);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 08:54:43','yyyy-mm-dd hh24-mi-ss'),12);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 18:08:24','yyyy-mm-dd hh24-mi-ss'),12);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 08:58:25','yyyy-mm-dd hh24-mi-ss'),12);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 18:00:13','yyyy-mm-dd hh24-mi-ss'),12);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 09:40:32','yyyy-mm-dd hh24-mi-ss'),12);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 18:44:14','yyyy-mm-dd hh24-mi-ss'),12);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 08:50:05','yyyy-mm-dd hh24-mi-ss'),12);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 18:02:16','yyyy-mm-dd hh24-mi-ss'),12);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 08:53:37','yyyy-mm-dd hh24-mi-ss'),12);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 18:04:23','yyyy-mm-dd hh24-mi-ss'),12);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 08:55:55','yyyy-mm-dd hh24-mi-ss'),12);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 18:22:03','yyyy-mm-dd hh24-mi-ss'),12);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 08:50:13','yyyy-mm-dd hh24-mi-ss'),12);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 18:22:12','yyyy-mm-dd hh24-mi-ss'),12);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 08:24:13','yyyy-mm-dd hh24-mi-ss'),12);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 18:25:15','yyyy-mm-dd hh24-mi-ss'),12);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 08:46:46','yyyy-mm-dd hh24-mi-ss'),12);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 18:33:17','yyyy-mm-dd hh24-mi-ss'),12);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 08:55:43','yyyy-mm-dd hh24-mi-ss'),12);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 18:19:15','yyyy-mm-dd hh24-mi-ss'),12);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 08:44:26','yyyy-mm-dd hh24-mi-ss'),12);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 18:18:14','yyyy-mm-dd hh24-mi-ss'),12);


INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 08:40:38','yyyy-mm-dd hh24-mi-ss'),13);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 18:15:46','yyyy-mm-dd hh24-mi-ss'),13);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 08:46:21','yyyy-mm-dd hh24-mi-ss'),13);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 18:52:56','yyyy-mm-dd hh24-mi-ss'),13);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 08:21:16','yyyy-mm-dd hh24-mi-ss'),13);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 18:09:38','yyyy-mm-dd hh24-mi-ss'),13);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 08:15:02','yyyy-mm-dd hh24-mi-ss'),13);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 17:01:06','yyyy-mm-dd hh24-mi-ss'),13);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 08:25:22','yyyy-mm-dd hh24-mi-ss'),13);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 18:30:34','yyyy-mm-dd hh24-mi-ss'),13);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 08:55:01','yyyy-mm-dd hh24-mi-ss'),13);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 19:05:39','yyyy-mm-dd hh24-mi-ss'),13);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 08:46:23','yyyy-mm-dd hh24-mi-ss'),13);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 18:06:16','yyyy-mm-dd hh24-mi-ss'),13);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 08:58:46','yyyy-mm-dd hh24-mi-ss'),13);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 18:45:24','yyyy-mm-dd hh24-mi-ss'),13);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 08:31:58','yyyy-mm-dd hh24-mi-ss'),13);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 17:00:14','yyyy-mm-dd hh24-mi-ss'),13);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 08:15:02','yyyy-mm-dd hh24-mi-ss'),13);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 19:15:34','yyyy-mm-dd hh24-mi-ss'),13);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 07:56:38','yyyy-mm-dd hh24-mi-ss'),13);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 18:24:44','yyyy-mm-dd hh24-mi-ss'),13);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 08:15:38','yyyy-mm-dd hh24-mi-ss'),13);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 18:54:03','yyyy-mm-dd hh24-mi-ss'),13);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 08:59:28','yyyy-mm-dd hh24-mi-ss'),13);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 19:41:11','yyyy-mm-dd hh24-mi-ss'),13);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 08:06:25','yyyy-mm-dd hh24-mi-ss'),13);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 17:00:00','yyyy-mm-dd hh24-mi-ss'),13);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 08:10:08','yyyy-mm-dd hh24-mi-ss'),14);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 18:22:46','yyyy-mm-dd hh24-mi-ss'),14);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 08:08:31','yyyy-mm-dd hh24-mi-ss'),14);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 18:37:18','yyyy-mm-dd hh24-mi-ss'),14);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 08:14:40','yyyy-mm-dd hh24-mi-ss'),14);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 18:55:01','yyyy-mm-dd hh24-mi-ss'),14);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 08:58:59','yyyy-mm-dd hh24-mi-ss'),14);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 16:02:12','yyyy-mm-dd hh24-mi-ss'),14);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 08:45:04','yyyy-mm-dd hh24-mi-ss'),14);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 18:00:47','yyyy-mm-dd hh24-mi-ss'),14);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 08:12:11','yyyy-mm-dd hh24-mi-ss'),14);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 18:54:00','yyyy-mm-dd hh24-mi-ss'),14);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 08:04:48','yyyy-mm-dd hh24-mi-ss'),14);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 19:10:09','yyyy-mm-dd hh24-mi-ss'),14);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 08:28:22','yyyy-mm-dd hh24-mi-ss'),14);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 19:31:18','yyyy-mm-dd hh24-mi-ss'),14);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 08:41:04','yyyy-mm-dd hh24-mi-ss'),14);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 16:01:58','yyyy-mm-dd hh24-mi-ss'),14);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 08:53:05','yyyy-mm-dd hh24-mi-ss'),14);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 18:10:11','yyyy-mm-dd hh24-mi-ss'),14);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 08:24:15','yyyy-mm-dd hh24-mi-ss'),14);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 18:01:00','yyyy-mm-dd hh24-mi-ss'),14);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 08:46:31','yyyy-mm-dd hh24-mi-ss'),14);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 19:37:27','yyyy-mm-dd hh24-mi-ss'),14);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 08:53:04','yyyy-mm-dd hh24-mi-ss'),14);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 18:20:36','yyyy-mm-dd hh24-mi-ss'),14);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 08:14:41','yyyy-mm-dd hh24-mi-ss'),14);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 19:37:49','yyyy-mm-dd hh24-mi-ss'),14);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 08:10:07','yyyy-mm-dd hh24-mi-ss'),15);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 18:55:28','yyyy-mm-dd hh24-mi-ss'),15);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 08:07:17','yyyy-mm-dd hh24-mi-ss'),15);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 18:59:58','yyyy-mm-dd hh24-mi-ss'),15);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 08:01:00','yyyy-mm-dd hh24-mi-ss'),15);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 18:41:11','yyyy-mm-dd hh24-mi-ss'),15);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 07:58:21','yyyy-mm-dd hh24-mi-ss'),15);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 18:51:34','yyyy-mm-dd hh24-mi-ss'),15);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 07:59:01','yyyy-mm-dd hh24-mi-ss'),15);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 18:44:13','yyyy-mm-dd hh24-mi-ss'),15);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 09:58:37','yyyy-mm-dd hh24-mi-ss'),15);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 18:21:14','yyyy-mm-dd hh24-mi-ss'),15);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 08:18:22','yyyy-mm-dd hh24-mi-ss'),15);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 18:35:48','yyyy-mm-dd hh24-mi-ss'),15);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 08:18:21','yyyy-mm-dd hh24-mi-ss'),15);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 18:57:34','yyyy-mm-dd hh24-mi-ss'),15);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 08:07:15','yyyy-mm-dd hh24-mi-ss'),15);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 18:55:28','yyyy-mm-dd hh24-mi-ss'),15);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 08:54:07','yyyy-mm-dd hh24-mi-ss'),15);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 19:33:49','yyyy-mm-dd hh24-mi-ss'),15);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 08:14:26','yyyy-mm-dd hh24-mi-ss'),15);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 19:51:57','yyyy-mm-dd hh24-mi-ss'),15);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 08:24:07','yyyy-mm-dd hh24-mi-ss'),15);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 18:57:04','yyyy-mm-dd hh24-mi-ss'),15);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 08:01:07','yyyy-mm-dd hh24-mi-ss'),15);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 19:59:58','yyyy-mm-dd hh24-mi-ss'),15);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 08:10:07','yyyy-mm-dd hh24-mi-ss'),15);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 18:44:48','yyyy-mm-dd hh24-mi-ss'),15);


INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 08:10:07','yyyy-mm-dd hh24-mi-ss'),16);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 18:55:28','yyyy-mm-dd hh24-mi-ss'),16);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 08:07:17','yyyy-mm-dd hh24-mi-ss'),16);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 18:59:58','yyyy-mm-dd hh24-mi-ss'),16);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 08:01:00','yyyy-mm-dd hh24-mi-ss'),16);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 18:41:11','yyyy-mm-dd hh24-mi-ss'),16);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 07:58:21','yyyy-mm-dd hh24-mi-ss'),16);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 18:51:34','yyyy-mm-dd hh24-mi-ss'),16);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 07:59:01','yyyy-mm-dd hh24-mi-ss'),16);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 18:44:13','yyyy-mm-dd hh24-mi-ss'),16);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 08:58:37','yyyy-mm-dd hh24-mi-ss'),16);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 18:21:14','yyyy-mm-dd hh24-mi-ss'),16);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 08:18:22','yyyy-mm-dd hh24-mi-ss'),16);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 18:35:48','yyyy-mm-dd hh24-mi-ss'),16);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 08:18:21','yyyy-mm-dd hh24-mi-ss'),16);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 18:57:34','yyyy-mm-dd hh24-mi-ss'),16);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 08:07:15','yyyy-mm-dd hh24-mi-ss'),16);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 18:55:28','yyyy-mm-dd hh24-mi-ss'),16);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 08:54:07','yyyy-mm-dd hh24-mi-ss'),16);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 19:33:49','yyyy-mm-dd hh24-mi-ss'),16);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 09:14:26','yyyy-mm-dd hh24-mi-ss'),16);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 19:51:57','yyyy-mm-dd hh24-mi-ss'),16);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 08:24:07','yyyy-mm-dd hh24-mi-ss'),16);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 18:57:04','yyyy-mm-dd hh24-mi-ss'),16);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 08:01:07','yyyy-mm-dd hh24-mi-ss'),16);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 19:59:58','yyyy-mm-dd hh24-mi-ss'),16);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 08:10:07','yyyy-mm-dd hh24-mi-ss'),16);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 18:44:48','yyyy-mm-dd hh24-mi-ss'),16);





INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 09:04:07','yyyy-mm-dd hh24-mi-ss'),17);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 18:55:28','yyyy-mm-dd hh24-mi-ss'),17);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 08:07:17','yyyy-mm-dd hh24-mi-ss'),17);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 18:59:58','yyyy-mm-dd hh24-mi-ss'),17);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 09:24:59','yyyy-mm-dd hh24-mi-ss'),17);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 18:41:11','yyyy-mm-dd hh24-mi-ss'),17);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 07:58:21','yyyy-mm-dd hh24-mi-ss'),17);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 18:51:34','yyyy-mm-dd hh24-mi-ss'),17);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 07:59:01','yyyy-mm-dd hh24-mi-ss'),17);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 18:44:13','yyyy-mm-dd hh24-mi-ss'),17);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 08:58:37','yyyy-mm-dd hh24-mi-ss'),17);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 18:21:14','yyyy-mm-dd hh24-mi-ss'),17);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 08:18:22','yyyy-mm-dd hh24-mi-ss'),17);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 18:35:48','yyyy-mm-dd hh24-mi-ss'),17);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 08:18:21','yyyy-mm-dd hh24-mi-ss'),17);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 18:57:34','yyyy-mm-dd hh24-mi-ss'),17);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 08:07:15','yyyy-mm-dd hh24-mi-ss'),17);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 18:55:28','yyyy-mm-dd hh24-mi-ss'),17);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 08:54:07','yyyy-mm-dd hh24-mi-ss'),17);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 19:33:49','yyyy-mm-dd hh24-mi-ss'),17);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 07:02:26','yyyy-mm-dd hh24-mi-ss'),17);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 19:51:57','yyyy-mm-dd hh24-mi-ss'),17);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 08:24:07','yyyy-mm-dd hh24-mi-ss'),17);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 18:57:04','yyyy-mm-dd hh24-mi-ss'),17);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 08:01:07','yyyy-mm-dd hh24-mi-ss'),17);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 19:59:58','yyyy-mm-dd hh24-mi-ss'),17);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 08:10:07','yyyy-mm-dd hh24-mi-ss'),17);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 18:44:48','yyyy-mm-dd hh24-mi-ss'),17);



--학생 18번

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 09:15:00','yyyy-mm-dd hh24-mi-ss'),18);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 18:05:00','yyyy-mm-dd hh24-mi-ss'),18);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 08:50:00','yyyy-mm-dd hh24-mi-ss'),18);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 18:10:00','yyyy-mm-dd hh24-mi-ss'),18);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 09:15:00','yyyy-mm-dd hh24-mi-ss'),18);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 18:05:00','yyyy-mm-dd hh24-mi-ss'),18);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 08:50:00','yyyy-mm-dd hh24-mi-ss'),18);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 18:10:00','yyyy-mm-dd hh24-mi-ss'),18);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 08:50:00','yyyy-mm-dd hh24-mi-ss'),18);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 18:10:00','yyyy-mm-dd hh24-mi-ss'),18);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 08:50:00','yyyy-mm-dd hh24-mi-ss'),18);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 18:10:00','yyyy-mm-dd hh24-mi-ss'),18);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 08:50:00','yyyy-mm-dd hh24-mi-ss'),18);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 18:10:00','yyyy-mm-dd hh24-mi-ss'),18);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 08:50:00','yyyy-mm-dd hh24-mi-ss'),18);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 18:10:00','yyyy-mm-dd hh24-mi-ss'),18);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 08:50:00','yyyy-mm-dd hh24-mi-ss'),18);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 18:10:00','yyyy-mm-dd hh24-mi-ss'),18);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 08:50:00','yyyy-mm-dd hh24-mi-ss'),18);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 18:10:00','yyyy-mm-dd hh24-mi-ss'),18);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 08:50:00','yyyy-mm-dd hh24-mi-ss'),18);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 18:10:00','yyyy-mm-dd hh24-mi-ss'),18);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 08:50:00','yyyy-mm-dd hh24-mi-ss'),18);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 18:10:00','yyyy-mm-dd hh24-mi-ss'),18);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 08:50:00','yyyy-mm-dd hh24-mi-ss'),18);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 18:10:00','yyyy-mm-dd hh24-mi-ss'),18);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 08:50:00','yyyy-mm-dd hh24-mi-ss'),18);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 18:10:00','yyyy-mm-dd hh24-mi-ss'),18);

--학생 19번

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 08:50:00','yyyy-mm-dd hh24-mi-ss'),19);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 18:05:00','yyyy-mm-dd hh24-mi-ss'),19);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 08:50:00','yyyy-mm-dd hh24-mi-ss'),19);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 18:10:00','yyyy-mm-dd hh24-mi-ss'),19);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 08:50:00','yyyy-mm-dd hh24-mi-ss'),19);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 18:05:00','yyyy-mm-dd hh24-mi-ss'),19);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 08:50:00','yyyy-mm-dd hh24-mi-ss'),19);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 18:10:00','yyyy-mm-dd hh24-mi-ss'),19);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 10:50:00','yyyy-mm-dd hh24-mi-ss'),19);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 18:10:00','yyyy-mm-dd hh24-mi-ss'),19);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 08:50:00','yyyy-mm-dd hh24-mi-ss'),19);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 18:10:00','yyyy-mm-dd hh24-mi-ss'),19);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 08:50:00','yyyy-mm-dd hh24-mi-ss'),19);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 18:10:00','yyyy-mm-dd hh24-mi-ss'),19);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 08:50:00','yyyy-mm-dd hh24-mi-ss'),19);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 18:10:00','yyyy-mm-dd hh24-mi-ss'),19);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 08:50:00','yyyy-mm-dd hh24-mi-ss'),19);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 18:10:00','yyyy-mm-dd hh24-mi-ss'),19);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 08:50:00','yyyy-mm-dd hh24-mi-ss'),19);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 18:10:00','yyyy-mm-dd hh24-mi-ss'),19);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 08:50:00','yyyy-mm-dd hh24-mi-ss'),19);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 18:10:00','yyyy-mm-dd hh24-mi-ss'),19);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 08:50:00','yyyy-mm-dd hh24-mi-ss'),19);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 18:10:00','yyyy-mm-dd hh24-mi-ss'),19);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 08:50:00','yyyy-mm-dd hh24-mi-ss'),19);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 18:10:00','yyyy-mm-dd hh24-mi-ss'),19);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 08:50:00','yyyy-mm-dd hh24-mi-ss'),19);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 18:10:00','yyyy-mm-dd hh24-mi-ss'),19);

--학생 20번

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 08:50:00','yyyy-mm-dd hh24-mi-ss'),20);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 18:05:00','yyyy-mm-dd hh24-mi-ss'),20);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 08:50:00','yyyy-mm-dd hh24-mi-ss'),20);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 18:10:00','yyyy-mm-dd hh24-mi-ss'),20);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 08:50:00','yyyy-mm-dd hh24-mi-ss'),20);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 18:05:00','yyyy-mm-dd hh24-mi-ss'),20);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 08:50:00','yyyy-mm-dd hh24-mi-ss'),20);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 18:10:00','yyyy-mm-dd hh24-mi-ss'),20);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 08:50:00','yyyy-mm-dd hh24-mi-ss'),20);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 18:10:00','yyyy-mm-dd hh24-mi-ss'),20);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 08:50:00','yyyy-mm-dd hh24-mi-ss'),20);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 18:10:00','yyyy-mm-dd hh24-mi-ss'),20);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 08:50:00','yyyy-mm-dd hh24-mi-ss'),20);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 18:10:00','yyyy-mm-dd hh24-mi-ss'),20);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 08:50:00','yyyy-mm-dd hh24-mi-ss'),20);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 18:10:00','yyyy-mm-dd hh24-mi-ss'),20);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 08:50:00','yyyy-mm-dd hh24-mi-ss'),20);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 18:10:00','yyyy-mm-dd hh24-mi-ss'),20);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 10:50:00','yyyy-mm-dd hh24-mi-ss'),20);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 18:10:00','yyyy-mm-dd hh24-mi-ss'),20);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 08:50:00','yyyy-mm-dd hh24-mi-ss'),20);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 18:10:00','yyyy-mm-dd hh24-mi-ss'),20);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 08:50:00','yyyy-mm-dd hh24-mi-ss'),20);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 18:10:00','yyyy-mm-dd hh24-mi-ss'),20);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 08:50:00','yyyy-mm-dd hh24-mi-ss'),20);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 18:10:00','yyyy-mm-dd hh24-mi-ss'),20);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 08:50:00','yyyy-mm-dd hh24-mi-ss'),20);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 18:10:00','yyyy-mm-dd hh24-mi-ss'),20);

--학생 21번

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 08:50:00','yyyy-mm-dd hh24-mi-ss'),21);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 18:10:00','yyyy-mm-dd hh24-mi-ss'),21);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 08:50:00','yyyy-mm-dd hh24-mi-ss'),21);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 18:05:00','yyyy-mm-dd hh24-mi-ss'),21);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 08:50:00','yyyy-mm-dd hh24-mi-ss'),21);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 18:10:00','yyyy-mm-dd hh24-mi-ss'),21);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 08:50:00','yyyy-mm-dd hh24-mi-ss'),21);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 18:10:00','yyyy-mm-dd hh24-mi-ss'),21);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 08:50:00','yyyy-mm-dd hh24-mi-ss'),21);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 18:10:00','yyyy-mm-dd hh24-mi-ss'),21);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 08:50:00','yyyy-mm-dd hh24-mi-ss'),21);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 18:10:00','yyyy-mm-dd hh24-mi-ss'),21);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 08:50:00','yyyy-mm-dd hh24-mi-ss'),21);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 18:10:00','yyyy-mm-dd hh24-mi-ss'),21);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 08:50:00','yyyy-mm-dd hh24-mi-ss'),21);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 18:10:00','yyyy-mm-dd hh24-mi-ss'),21);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 08:50:00','yyyy-mm-dd hh24-mi-ss'),21);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 18:10:00','yyyy-mm-dd hh24-mi-ss'),21);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 08:50:00','yyyy-mm-dd hh24-mi-ss'),21);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 18:10:00','yyyy-mm-dd hh24-mi-ss'),21);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 08:50:00','yyyy-mm-dd hh24-mi-ss'),21);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 18:10:00','yyyy-mm-dd hh24-mi-ss'),21);

--학생 22번

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 09:50:00','yyyy-mm-dd hh24-mi-ss'),22);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 18:05:00','yyyy-mm-dd hh24-mi-ss'),22);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 08:50:00','yyyy-mm-dd hh24-mi-ss'),22);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 18:10:00','yyyy-mm-dd hh24-mi-ss'),22);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 08:50:00','yyyy-mm-dd hh24-mi-ss'),22);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 18:05:00','yyyy-mm-dd hh24-mi-ss'),22);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 08:50:00','yyyy-mm-dd hh24-mi-ss'),22);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 18:10:00','yyyy-mm-dd hh24-mi-ss'),22);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 08:50:00','yyyy-mm-dd hh24-mi-ss'),22);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 18:10:00','yyyy-mm-dd hh24-mi-ss'),22);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 08:50:00','yyyy-mm-dd hh24-mi-ss'),22);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 18:10:00','yyyy-mm-dd hh24-mi-ss'),22);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 09:50:00','yyyy-mm-dd hh24-mi-ss'),22);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 18:10:00','yyyy-mm-dd hh24-mi-ss'),22);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 09:50:00','yyyy-mm-dd hh24-mi-ss'),22);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 18:10:00','yyyy-mm-dd hh24-mi-ss'),22);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 08:50:00','yyyy-mm-dd hh24-mi-ss'),22);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 18:10:00','yyyy-mm-dd hh24-mi-ss'),22);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 08:50:00','yyyy-mm-dd hh24-mi-ss'),22);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 18:10:00','yyyy-mm-dd hh24-mi-ss'),22);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 08:50:00','yyyy-mm-dd hh24-mi-ss'),22);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 18:10:00','yyyy-mm-dd hh24-mi-ss'),22);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 08:50:00','yyyy-mm-dd hh24-mi-ss'),22);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 18:10:00','yyyy-mm-dd hh24-mi-ss'),22);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 08:50:00','yyyy-mm-dd hh24-mi-ss'),22);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 18:10:00','yyyy-mm-dd hh24-mi-ss'),22);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 08:50:00','yyyy-mm-dd hh24-mi-ss'),22);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 18:10:00','yyyy-mm-dd hh24-mi-ss'),22);

--학생 23번
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 08:50:00','yyyy-mm-dd hh24-mi-ss'),23);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 18:05:00','yyyy-mm-dd hh24-mi-ss'),23);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 08:50:00','yyyy-mm-dd hh24-mi-ss'),23);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 18:10:00','yyyy-mm-dd hh24-mi-ss'),23);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 08:50:00','yyyy-mm-dd hh24-mi-ss'),23);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 18:05:00','yyyy-mm-dd hh24-mi-ss'),23);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 08:50:00','yyyy-mm-dd hh24-mi-ss'),23);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 18:10:00','yyyy-mm-dd hh24-mi-ss'),23);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 08:50:00','yyyy-mm-dd hh24-mi-ss'),23);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 18:10:00','yyyy-mm-dd hh24-mi-ss'),23);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 08:50:00','yyyy-mm-dd hh24-mi-ss'),23);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 18:10:00','yyyy-mm-dd hh24-mi-ss'),23);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 08:50:00','yyyy-mm-dd hh24-mi-ss'),23);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 18:10:00','yyyy-mm-dd hh24-mi-ss'),23);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 08:50:00','yyyy-mm-dd hh24-mi-ss'),23);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 18:10:00','yyyy-mm-dd hh24-mi-ss'),23);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 08:50:00','yyyy-mm-dd hh24-mi-ss'),23);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 18:10:00','yyyy-mm-dd hh24-mi-ss'),23);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 08:50:00','yyyy-mm-dd hh24-mi-ss'),23);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 18:10:00','yyyy-mm-dd hh24-mi-ss'),23);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 08:50:00','yyyy-mm-dd hh24-mi-ss'),23);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 18:10:00','yyyy-mm-dd hh24-mi-ss'),23);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 08:50:00','yyyy-mm-dd hh24-mi-ss'),23);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 18:10:00','yyyy-mm-dd hh24-mi-ss'),23);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 08:50:00','yyyy-mm-dd hh24-mi-ss'),23);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 18:10:00','yyyy-mm-dd hh24-mi-ss'),23);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 08:50:00','yyyy-mm-dd hh24-mi-ss'),23);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 18:10:00','yyyy-mm-dd hh24-mi-ss'),23);

--학생 24번
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 08:50:00','yyyy-mm-dd hh24-mi-ss'),24);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 18:05:00','yyyy-mm-dd hh24-mi-ss'),24);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 08:50:00','yyyy-mm-dd hh24-mi-ss'),24);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 18:10:00','yyyy-mm-dd hh24-mi-ss'),24);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 08:50:00','yyyy-mm-dd hh24-mi-ss'),24);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 18:05:00','yyyy-mm-dd hh24-mi-ss'),24);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 08:50:00','yyyy-mm-dd hh24-mi-ss'),24);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 18:10:00','yyyy-mm-dd hh24-mi-ss'),24);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 08:50:00','yyyy-mm-dd hh24-mi-ss'),24);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 18:10:00','yyyy-mm-dd hh24-mi-ss'),24);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 08:50:00','yyyy-mm-dd hh24-mi-ss'),24);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 18:10:00','yyyy-mm-dd hh24-mi-ss'),24);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 08:50:00','yyyy-mm-dd hh24-mi-ss'),24);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 18:10:00','yyyy-mm-dd hh24-mi-ss'),24);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 08:50:00','yyyy-mm-dd hh24-mi-ss'),24);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 18:10:00','yyyy-mm-dd hh24-mi-ss'),24);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 08:50:00','yyyy-mm-dd hh24-mi-ss'),24);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 18:10:00','yyyy-mm-dd hh24-mi-ss'),24);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 08:50:00','yyyy-mm-dd hh24-mi-ss'),24);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 18:10:00','yyyy-mm-dd hh24-mi-ss'),24);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 08:50:00','yyyy-mm-dd hh24-mi-ss'),24);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 18:10:00','yyyy-mm-dd hh24-mi-ss'),24);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 08:50:00','yyyy-mm-dd hh24-mi-ss'),24);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 18:10:00','yyyy-mm-dd hh24-mi-ss'),24);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 08:50:00','yyyy-mm-dd hh24-mi-ss'),24);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 18:10:00','yyyy-mm-dd hh24-mi-ss'),24);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 08:50:00','yyyy-mm-dd hh24-mi-ss'),24);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 18:10:00','yyyy-mm-dd hh24-mi-ss'),24);

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 08:50:38','yyyy-mm-dd hh24-mi-ss'),25);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 18:15:38','yyyy-mm-dd hh24-mi-ss'),25);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 08:50:38','yyyy-mm-dd hh24-mi-ss'),25);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 18:15:38','yyyy-mm-dd hh24-mi-ss'),25);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 09:40:38','yyyy-mm-dd hh24-mi-ss'),25);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 18:15:38','yyyy-mm-dd hh24-mi-ss'),25);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 09:30:38','yyyy-mm-dd hh24-mi-ss'),25);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 18:15:38','yyyy-mm-dd hh24-mi-ss'),25);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 18:15:38','yyyy-mm-dd hh24-mi-ss'),25);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 08:50:38','yyyy-mm-dd hh24-mi-ss'),25);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 18:15:38','yyyy-mm-dd hh24-mi-ss'),25);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 08:50:38','yyyy-mm-dd hh24-mi-ss'),25);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 18:15:38','yyyy-mm-dd hh24-mi-ss'),25);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 08:50:38','yyyy-mm-dd hh24-mi-ss'),25);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 18:15:38','yyyy-mm-dd hh24-mi-ss'),25);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 08:50:38','yyyy-mm-dd hh24-mi-ss'),25);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 18:15:38','yyyy-mm-dd hh24-mi-ss'),25);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 08:50:38','yyyy-mm-dd hh24-mi-ss'),25);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 18:15:38','yyyy-mm-dd hh24-mi-ss'),25);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 08:50:38','yyyy-mm-dd hh24-mi-ss'),25);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 18:15:38','yyyy-mm-dd hh24-mi-ss'),25);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 08:50:38','yyyy-mm-dd hh24-mi-ss'),25);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 18:15:38','yyyy-mm-dd hh24-mi-ss'),25);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 08:50:38','yyyy-mm-dd hh24-mi-ss'),25);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 18:15:38','yyyy-mm-dd hh24-mi-ss'),25);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 08:50:38','yyyy-mm-dd hh24-mi-ss'),25);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 18:15:38','yyyy-mm-dd hh24-mi-ss'),25);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 08:50:38','yyyy-mm-dd hh24-mi-ss'),25);

------------------------------------------------------------------------------------------------------
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 08:50:38','yyyy-mm-dd hh24-mi-ss'),26);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 18:15:38','yyyy-mm-dd hh24-mi-ss'),26);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 08:50:38','yyyy-mm-dd hh24-mi-ss'),26);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 18:15:38','yyyy-mm-dd hh24-mi-ss'),26);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 08:50:38','yyyy-mm-dd hh24-mi-ss'),26);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 18:15:38','yyyy-mm-dd hh24-mi-ss'),26);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 08:50:38','yyyy-mm-dd hh24-mi-ss'),26);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 18:15:38','yyyy-mm-dd hh24-mi-ss'),26);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 18:15:38','yyyy-mm-dd hh24-mi-ss'),26);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 08:50:38','yyyy-mm-dd hh24-mi-ss'),26);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 18:15:38','yyyy-mm-dd hh24-mi-ss'),26);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 08:50:38','yyyy-mm-dd hh24-mi-ss'),26);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 18:15:38','yyyy-mm-dd hh24-mi-ss'),26);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 08:50:38','yyyy-mm-dd hh24-mi-ss'),26);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 18:15:38','yyyy-mm-dd hh24-mi-ss'),26);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 08:50:38','yyyy-mm-dd hh24-mi-ss'),26);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 18:15:38','yyyy-mm-dd hh24-mi-ss'),26);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 08:50:38','yyyy-mm-dd hh24-mi-ss'),26);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 18:15:38','yyyy-mm-dd hh24-mi-ss'),26);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 08:50:38','yyyy-mm-dd hh24-mi-ss'),26);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 18:15:38','yyyy-mm-dd hh24-mi-ss'),26);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 08:50:38','yyyy-mm-dd hh24-mi-ss'),26);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 18:15:38','yyyy-mm-dd hh24-mi-ss'),26);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 08:50:38','yyyy-mm-dd hh24-mi-ss'),26);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 18:15:38','yyyy-mm-dd hh24-mi-ss'),26);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 08:50:38','yyyy-mm-dd hh24-mi-ss'),26);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 18:15:38','yyyy-mm-dd hh24-mi-ss'),26);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 08:50:38','yyyy-mm-dd hh24-mi-ss'),26);
---------------------------------------------------------------------------------------------------
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 08:50:38','yyyy-mm-dd hh24-mi-ss'),27);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 18:15:38','yyyy-mm-dd hh24-mi-ss'),27);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 08:50:38','yyyy-mm-dd hh24-mi-ss'),27);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 18:15:38','yyyy-mm-dd hh24-mi-ss'),27);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 08:40:38','yyyy-mm-dd hh24-mi-ss'),27);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 18:15:38','yyyy-mm-dd hh24-mi-ss'),27);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 08:30:38','yyyy-mm-dd hh24-mi-ss'),27);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 18:15:38','yyyy-mm-dd hh24-mi-ss'),27);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 18:15:38','yyyy-mm-dd hh24-mi-ss'),27);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 08:50:38','yyyy-mm-dd hh24-mi-ss'),27);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 18:15:38','yyyy-mm-dd hh24-mi-ss'),27);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 08:50:38','yyyy-mm-dd hh24-mi-ss'),27);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 18:15:38','yyyy-mm-dd hh24-mi-ss'),27);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 08:50:38','yyyy-mm-dd hh24-mi-ss'),27);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 18:15:38','yyyy-mm-dd hh24-mi-ss'),27);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 08:50:38','yyyy-mm-dd hh24-mi-ss'),27);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 18:15:38','yyyy-mm-dd hh24-mi-ss'),27);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 08:50:38','yyyy-mm-dd hh24-mi-ss'),27);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 18:15:38','yyyy-mm-dd hh24-mi-ss'),27);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 09:50:38','yyyy-mm-dd hh24-mi-ss'),27);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 18:15:38','yyyy-mm-dd hh24-mi-ss'),27);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 09:50:38','yyyy-mm-dd hh24-mi-ss'),27);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 18:15:38','yyyy-mm-dd hh24-mi-ss'),27);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 08:50:38','yyyy-mm-dd hh24-mi-ss'),27);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 18:15:38','yyyy-mm-dd hh24-mi-ss'),27);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 08:50:38','yyyy-mm-dd hh24-mi-ss'),27);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 18:15:38','yyyy-mm-dd hh24-mi-ss'),27);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 08:50:38','yyyy-mm-dd hh24-mi-ss'),27);
---------------------------------------------------------------------------------------------------
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 08:50:38','yyyy-mm-dd hh24-mi-ss'),28);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 18:15:38','yyyy-mm-dd hh24-mi-ss'),28);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 08:50:38','yyyy-mm-dd hh24-mi-ss'),28);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 18:15:38','yyyy-mm-dd hh24-mi-ss'),28);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 08:40:38','yyyy-mm-dd hh24-mi-ss'),28);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 18:15:38','yyyy-mm-dd hh24-mi-ss'),28);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 08:30:38','yyyy-mm-dd hh24-mi-ss'),28);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 18:15:38','yyyy-mm-dd hh24-mi-ss'),28);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 18:15:38','yyyy-mm-dd hh24-mi-ss'),28);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 08:50:38','yyyy-mm-dd hh24-mi-ss'),28);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 18:15:38','yyyy-mm-dd hh24-mi-ss'),28);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 08:50:38','yyyy-mm-dd hh24-mi-ss'),28);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 18:15:38','yyyy-mm-dd hh24-mi-ss'),28);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 08:50:38','yyyy-mm-dd hh24-mi-ss'),28);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 18:15:38','yyyy-mm-dd hh24-mi-ss'),28);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 08:50:38','yyyy-mm-dd hh24-mi-ss'),28);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 18:15:38','yyyy-mm-dd hh24-mi-ss'),28);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 08:50:38','yyyy-mm-dd hh24-mi-ss'),28);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 18:15:38','yyyy-mm-dd hh24-mi-ss'),28);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 08:50:38','yyyy-mm-dd hh24-mi-ss'),28);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 18:15:38','yyyy-mm-dd hh24-mi-ss'),28);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 08:50:38','yyyy-mm-dd hh24-mi-ss'),28);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 18:15:38','yyyy-mm-dd hh24-mi-ss'),28);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 08:50:38','yyyy-mm-dd hh24-mi-ss'),28);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 18:15:38','yyyy-mm-dd hh24-mi-ss'),28);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 08:50:38','yyyy-mm-dd hh24-mi-ss'),28);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 18:15:38','yyyy-mm-dd hh24-mi-ss'),28);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 08:50:38','yyyy-mm-dd hh24-mi-ss'),28);
-----------------------------------------------------------------------------------------------------
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 08:50:38','yyyy-mm-dd hh24-mi-ss'),29);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 18:15:38','yyyy-mm-dd hh24-mi-ss'),29);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 08:50:38','yyyy-mm-dd hh24-mi-ss'),29);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 18:15:38','yyyy-mm-dd hh24-mi-ss'),29);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 08:40:38','yyyy-mm-dd hh24-mi-ss'),29);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 18:15:38','yyyy-mm-dd hh24-mi-ss'),29);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 08:30:38','yyyy-mm-dd hh24-mi-ss'),29);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 18:15:38','yyyy-mm-dd hh24-mi-ss'),29);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 18:15:38','yyyy-mm-dd hh24-mi-ss'),29);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 08:50:38','yyyy-mm-dd hh24-mi-ss'),29);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 18:15:38','yyyy-mm-dd hh24-mi-ss'),29);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 08:50:38','yyyy-mm-dd hh24-mi-ss'),29);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 18:15:38','yyyy-mm-dd hh24-mi-ss'),29);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 08:50:38','yyyy-mm-dd hh24-mi-ss'),29);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 18:15:38','yyyy-mm-dd hh24-mi-ss'),29);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 08:50:38','yyyy-mm-dd hh24-mi-ss'),29);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 18:15:38','yyyy-mm-dd hh24-mi-ss'),29);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 08:50:38','yyyy-mm-dd hh24-mi-ss'),29);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 18:15:38','yyyy-mm-dd hh24-mi-ss'),29);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 08:50:38','yyyy-mm-dd hh24-mi-ss'),29);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 18:15:38','yyyy-mm-dd hh24-mi-ss'),29);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 08:50:38','yyyy-mm-dd hh24-mi-ss'),29);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 18:15:38','yyyy-mm-dd hh24-mi-ss'),29);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 14:00:38','yyyy-mm-dd hh24-mi-ss'),29);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 14:50:38','yyyy-mm-dd hh24-mi-ss'),29);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 08:50:38','yyyy-mm-dd hh24-mi-ss'),29);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 18:15:38','yyyy-mm-dd hh24-mi-ss'),29);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 15:15:38','yyyy-mm-dd hh24-mi-ss'),29);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 16:05:38','yyyy-mm-dd hh24-mi-ss'),29);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 08:50:38','yyyy-mm-dd hh24-mi-ss'),29);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 18:15:38','yyyy-mm-dd hh24-mi-ss'),29);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 08:50:38','yyyy-mm-dd hh24-mi-ss'),29);

-----------------------------------------------------------------------------------------------------

INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 08:50:38','yyyy-mm-dd hh24-mi-ss'),30);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-13 18:15:38','yyyy-mm-dd hh24-mi-ss'),30);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 08:50:38','yyyy-mm-dd hh24-mi-ss'),30);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-14 18:15:38','yyyy-mm-dd hh24-mi-ss'),30);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 08:40:38','yyyy-mm-dd hh24-mi-ss'),30);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-16 18:15:38','yyyy-mm-dd hh24-mi-ss'),30);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 08:30:38','yyyy-mm-dd hh24-mi-ss'),30);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-17 18:15:38','yyyy-mm-dd hh24-mi-ss'),30);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 18:15:38','yyyy-mm-dd hh24-mi-ss'),30);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-20 08:50:38','yyyy-mm-dd hh24-mi-ss'),30);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 18:15:38','yyyy-mm-dd hh24-mi-ss'),30);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-21 08:50:38','yyyy-mm-dd hh24-mi-ss'),30);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 18:15:38','yyyy-mm-dd hh24-mi-ss'),30);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-22 08:50:38','yyyy-mm-dd hh24-mi-ss'),30);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 18:15:38','yyyy-mm-dd hh24-mi-ss'),30);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-23 08:50:38','yyyy-mm-dd hh24-mi-ss'),30);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 18:15:38','yyyy-mm-dd hh24-mi-ss'),30);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-24 08:50:38','yyyy-mm-dd hh24-mi-ss'),30);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 18:15:38','yyyy-mm-dd hh24-mi-ss'),30);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-27 08:50:38','yyyy-mm-dd hh24-mi-ss'),30);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 18:15:38','yyyy-mm-dd hh24-mi-ss'),30);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-28 08:50:38','yyyy-mm-dd hh24-mi-ss'),30);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 18:15:38','yyyy-mm-dd hh24-mi-ss'),30);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-29 08:50:38','yyyy-mm-dd hh24-mi-ss'),30);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 18:15:38','yyyy-mm-dd hh24-mi-ss'),30);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-30 08:50:38','yyyy-mm-dd hh24-mi-ss'),30);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 18:15:38','yyyy-mm-dd hh24-mi-ss'),30);
INSERT INTO tblAttendance VALUES(attendanceSeq.NEXTVAL, TO_DATE('2018-08-31 08:50:38','yyyy-mm-dd hh24-mi-ss'),30);