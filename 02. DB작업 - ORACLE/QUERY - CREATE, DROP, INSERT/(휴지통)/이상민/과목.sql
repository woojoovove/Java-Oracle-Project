
--상담일지
------------------------------------------------------------------------------
SELECT * FROM tbltutoring;
CREATE SEQUENCE tbltutoringseq;
SELECT * FROM TBLSUBJECTNAME;
drop SEQUENCE tbltutoringseq;
delete from tbltutoring;



select * from tblstudent;


INSERT INTO tbltutoring VALUES(TBLTUTORINGSEQ.nextval,'2019-03-04','취업관련상담',31);
INSERT INTO tbltutoring VALUES(TBLTUTORINGSEQ.nextval,'2019-03-04','취업관련상담',32); 
INSERT INTO tbltutoring VALUES(TBLTUTORINGSEQ.nextval,'2019-03-04','취업관련상담',33) ;
INSERT INTO tbltutoring VALUES(TBLTUTORINGSEQ.nextval,'2019-03-04','취업관련상담',34); 
INSERT INTO tbltutoring VALUES(TBLTUTORINGSEQ.nextval,'2019-03-04','취업관련상담',35) ;
INSERT INTO tbltutoring VALUES(TBLTUTORINGSEQ.nextval,'2019-03-05','취업관련상담',36) ;
INSERT INTO tbltutoring VALUES(TBLTUTORINGSEQ.nextval,'2019-03-05','취업관련상담',37) ;
INSERT INTO tbltutoring VALUES(TBLTUTORINGSEQ.nextval,'2019-03-05','취업관련상담',38) ;
INSERT INTO tbltutoring VALUES(TBLTUTORINGSEQ.nextval,'2019-03-05','취업관련상담',39) ;
INSERT INTO tbltutoring VALUES(TBLTUTORINGSEQ.nextval,'2019-03-05','취업관련상담',40) ;
INSERT INTO tbltutoring VALUES(TBLTUTORINGSEQ.nextval,'2019-03-06','취업관련상담',41) ;
INSERT INTO tbltutoring VALUES(TBLTUTORINGSEQ.nextval,'2019-03-06','취업관련상담',42) ;
INSERT INTO tbltutoring VALUES(TBLTUTORINGSEQ.nextval,'2019-03-06','취업관련상담',43) ;
INSERT INTO tbltutoring VALUES(TBLTUTORINGSEQ.nextval,'2019-03-06','취업관련상담',44) ;
INSERT INTO tbltutoring VALUES(TBLTUTORINGSEQ.nextval,'2019-03-06','취업관련상담',45) ;
INSERT INTO tbltutoring VALUES(TBLTUTORINGSEQ.nextval,'2019-03-07','취업관련상담',46) ;
INSERT INTO tbltutoring VALUES(TBLTUTORINGSEQ.nextval,'2019-03-07','취업관련상담',47) ;
INSERT INTO tbltutoring VALUES(TBLTUTORINGSEQ.nextval,'2019-03-07','취업관련상담',48) ;
INSERT INTO tbltutoring VALUES(TBLTUTORINGSEQ.nextval,'2019-03-07','취업관련상담',49) ;
INSERT INTO tbltutoring VALUES(TBLTUTORINGSEQ.nextval,'2019-03-07','취업관련상담',50) ;
INSERT INTO tbltutoring VALUES(TBLTUTORINGSEQ.nextval,'2019-03-08','취업관련상담',51) ;
INSERT INTO tbltutoring VALUES(TBLTUTORINGSEQ.nextval,'2019-03-08','취업관련상담',52) ;
INSERT INTO tbltutoring VALUES(TBLTUTORINGSEQ.nextval,'2019-03-08','취업관련상담',53) ;
INSERT INTO tbltutoring VALUES(TBLTUTORINGSEQ.nextval,'2019-03-08','취업관련상담',54) ;
INSERT INTO tbltutoring VALUES(TBLTUTORINGSEQ.nextval,'2019-03-08','취업관련상담',55) ;
INSERT INTO tbltutoring VALUES(TBLTUTORINGSEQ.nextval,'2019-03-11','취업관련상담',56) ;
INSERT INTO tbltutoring VALUES(TBLTUTORINGSEQ.nextval,'2019-03-11','취업관련상담',57) ;
INSERT INTO tbltutoring VALUES(TBLTUTORINGSEQ.nextval,'2019-03-11','취업관련상담',58) ;
INSERT INTO tbltutoring VALUES(TBLTUTORINGSEQ.nextval,'2019-03-11','취업관련상담',59) ;
INSERT INTO tbltutoring VALUES(TBLTUTORINGSEQ.nextval,'2019-03-11','취업관련상담',60) ;
-------------------------------------------------------------------------------------------
commit;
select * from tab;
select * from tblstudent;
select * from tbltextbook;
--과정
desc tblsubject;
SELECT * FROM tblsubject;
SELECT * FROM tblcourse;
commit;
rollback;
CREATE SEQUENCE tblsubjectseq;
drop  SEQUENCE tblsubjectseq;
--seq,start,end,출석,필기,실기,과정이름번호,과정시퀀스,교과서
--과정 1
INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2018-07-02','2018-08-10',20,40,40,1,1,1) ;
INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2018-08-13','2018-08-31',20,40,40,2,1,6) ;
INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2018-09-03','2018-09-21',20,40,40,11,1,4) ;
INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2018-09-24','2018-10-12',20,40,40,20,1,23) ;
INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2018-10-15','2018-11-02',20,40,40,21,1,21) ;
INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2018-11-05','2018-11-30',20,40,40,22,1,14) ;
--seq,start,end,출석,필기,실기,과정이름번호,과정시퀀스,교과서
--과정 2
INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2019-01-28','2019-03-22',20,40,40,1,2,1) ;
INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2019-03-25','2019-04-19',null,null,null,2,2,6) ;
INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2019-04-22','2019-05-10',null,null,null,3,2,9) ;
INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2019-05-13','2019-05-24',null,null,null,10,2,1) ;
INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2019-05-27','2019-06-07',null,null,null,4,2,11) ;
INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2019-06-10','2019-07-21',null,null,null,5,2,26) ;
INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2019-06-24','2019-07-05',null,null,null,6,2,13) ;
INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2019-07-08','2019-07-19',null,null,null,7,2,11) ;
INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2019-07-22','2019-08-02',null,null,null,8,2,24) ;
INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2019-08-05','2019-08-23',null,null,null,8,2,26) ;
--seq,start,end,출석,필기,실기,과정이름번호,과정시퀀스,교과서
--과정 3

INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2019-04-29','2019-05-24',null,null,null,2,3,6) ;
INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2019-05-27','2019-06-07',null,null,null,1,3,9) ;
INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2019-06-10','2019-06-21',null,null,null,10,3,1) ;
INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2019-06-24','2019-07-05',null,null,null,11,3,13) ;
INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2019-07-08','2019-07-19',null,null,null,4,3,27) ;
INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2019-07-22','2019-08-02',null,null,null,12,3,36) ;
INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2019-08-05','2019-08-16',null,null,null,13,3,27) ;
INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2019-08-19','2019-08-30',null,null,null,14,3,29) ;
INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2019-09-02','2019-09-17',null,null,null,15,3,39) ;
INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2019-09-18','2019-09-27',null,null,null,16,3,38) ;
INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2019-09-30','2019-10-11',null,null,null,58,3,38) ; --??
INSERT INTO tblsubject VALUES(tblsubjectseq.nextval,'2019-10-14','2019-10-25',null,null,null,17,3,27) ;