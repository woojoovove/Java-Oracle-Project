select * from tblcourse;
select * from tblcoursename;
select * from tbltextbook;
select * from tblclassroom;
select * from tblsubject;
select * from tblsubjectname where subjecttypeseq between 1 and 7 or subjecttypeseq between 10 and 24 and subjecttypeseq !=11 order by seq;

commit;

INSERT INTO tblcourse (seq, startdate, enddate, coursenameseq,lecturerseq,classRoomSeq)  --lec 3번 과거 ()텅텅
    VALUES (tblcourseSeq.NEXTVAL, '2018-07-16', '2018-12-14', 1, 3, 2);    -- 종료과정

INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2018-07-16','2018-08-17',20,40,40,1,4,1,DEFAULT);      --java 
INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2018-08-20','2018-09-10',20,40,40,2,4,16,DEFAULT);      --db
INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2018-09-12','2018-10-02',20,40,40,5,4,26,DEFAULT);      -- front
INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2018-10-04','2018-11-10',20,40,40,11,4,35,DEFAULT);     -- web
INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2018-11-12','2018-11-25',20,40,40,41,4,29,DEFAULT);     -- jsp
INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2018-12-25','2018-12-14',20,40,40,43,4,14,DEFAULT);     -- pj


INSERT INTO tblcourse (seq, startdate, enddate, coursenameseq,lecturerseq,classRoomSeq)
    VALUES (tblcourseSeq.NEXTVAL, '2019-01-14', '2019-08-09', 5, 6, 3);    -- 진행과정

INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2019-01-14','2019-02-07',20,40,40,1,5,1,DEFAULT);   --java   
INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2019-02-09','2019-03-10',20,40,40,2,5,16,DEFAULT);      -- db
INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2019-03-12','2019-04-12',20,40,40,42,5,15,DEFAULT);      --bigdata
INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2019-04-14','2019-05-10',null,null,null,26,5,18,DEFAULT);     --test,develop
INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2019-05-12','2019-06-25',null,null,null,49,5,28,DEFAULT);     --파이선
INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2019-06-25','2019-08-09',null,null,null,54,5,32,DEFAULT);      --빅데이터시각화 파이선
    
    
INSERT INTO tblcourse (seq, startdate, enddate, coursenameseq,lecturerseq,classRoomSeq)  --웹개발 머신러닝
VALUES (tblcourseSeq.NEXTVAL, '2019-05-07', '2019-10-08', 7, 7, 6);    -- 예정과정

INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2019-05-07','2019-06-07',null,null,null,11,6,4,DEFAULT);   -- 웹프로그래밍   
INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2019-06-09','2019-07-10',null,null,null,8,6,17,DEFAULT);      -- 반응형 웹개발
INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2019-07-12','2019-08-12',null,null,null,19,6,21,DEFAULT);      -- 웹개발 및 클라이언트 프로그래밍
INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2019-08-14','2019-09-10',null,null,null,32,6,10,DEFAULT);     -- 웹 퍼블리싱
INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2019-09-12','2019-09-25',null,null,null,38,6,13,DEFAULT);     -- 네트워크프로그래밍
INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2019-09-25','2019-10-08',null,null,null,26,6,37,DEFAULT);  -- 테스팅


