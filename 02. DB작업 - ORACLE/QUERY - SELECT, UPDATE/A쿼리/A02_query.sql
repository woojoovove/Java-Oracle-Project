--교사 정보를 보는 뷰(교사번호, 이름, 주민, 폰번호, 강의가능과목명)
CREATE VIEW vwLecturer
AS
SELECT  L.seq AS vlecturerSeq
        , L.name AS vlecturerName
        , L.registrationNum AS vlecturerRegistrationNum
        , L.phonenum AS vlecturerPhonenum
        , SN.name AS vsubjectName
FROM tblLecturer L
    INNER JOIN tblAvlb A
    ON L.seq = A.lecturerSeq
            INNER JOIN tblsubjectType   ST
            ON ST.seq = A.subjectTypeSeq
                  INNER JOIN tblsubjectName SN
                  ON ST.seq = SN.seq;


--# A02-002 기초 정보 관리 화면 : 교사 추가  선택 시
rollback to a;
savepoint a;
INSERT INTO tblLecturer (seq, name, registrationNum, phoneNum, state)VALUES('추가될 교사 seq', '추가될 교사 이름', '추가될 교사 주민', '추가될 교사 폰번호', '추가될 교사의 상태');

select *from tblLecturer;

--# A02-003 교사 계정 관리 화면 : 교사 정보 선택 시 (강의가능과목 테이블과 JOIN)
SELECT DISTINCT vlecturerSeq
        , vlecturerName
        , vlecturerRegistrationNum
        , vlecturerPhonenum
FROM vwLecturer
    WHERE vlecturerSeq = '위에서 선택한 교사의 seq'
      ORDER BY vlecturerSeq;



--# A02-004 교사 정보 관리  화면 : 교사 정보 선택 시 > 교사 세부사항 페이지
SELECT  vlecturerSeq
        , vlecturerName
        , vlecturerRegistrationNum
        , vlecturerPhonenum
        , vsubjectName
FROM vwLecturer 
WHERE vlecturerSeq = '위에서 선택한 교사의 seq';

--# A02-005 기초 정보 관리 화면 : 교사 정보 선택 > 자세히 보기 > 수정 선택 시
--                                            >  
UPDATE tblLecturer
SET name = '수정할 이름', registrationNum = '수정할 주민번호', phoneNum = '수정할 핸드폰 번호'
WHERE seq = '위에서 선택한 교사의 seq';

savepoint z;

rollback to z;

--# A02-005 기초 정보 관리 화면 : 교사 정보 선택 > 자세히 보기 > 수정 선택 시 > 강의 가능 과목 리스트
--선택된 교사의 강의 가능과목 리스트 보기
SELECT   vsubjectName
FROM vwLecturer 
WHERE vlecturerSeq = '위에서 선택된 교사의 seq';

--# A02-005 기초 정보 관리 화면 : 교사 정보 선택 > 자세히 보기 > 수정 선택 시 
--                                   > 강의 가능 과목 리스트 > 강의가능과목수정

UPDATE tblAvlb
SET subjectTypeSeq = '수정되어 넣어질 과목의 seq'
WHERE subjectTypename = '수정하고 싶은 과목의 이름' and lecturerSeq = '선택된 교사의 seq';

--# A02-006 교사 정보 관리  화면 : 교사 정보 선택 시 > 담당 과정 확인
SELECT  vcourseSeq
        , vcourseName
        , vcourseStartDate || '~' || vcourseEndDate
        , vclassroom  
FROM vwCourse 
WHERE vlecturerSeq = 4;

SELECT  
        CASE
            WHEN vcourseStartDate < sysdate AND sysdate > vcourseEndDate THEN '강의종료'
            WHEN vcourseStartDate < sysdate AND sysdate < vcourseEndDate THEN '강의중'
            WHEN vcourseStartDate > sysdate  THEN '강의예정'
        END
FROM vwCourse 
WHERE vlecturerSeq = 4;

--(과목 번호, 과목명, 과목기간, 교재명)
SELECT vsubjectSeq
        , vsubjectName
        , vsubjectStartDate || '~' || vsubjectEndDate
        , vTextbook   
FROM vwsubject
WHERE vcourseseq = 3;



select*from tblsubjectName;
select*from tblavlb;
select*from tblcourse;





INSERT INTO tblLecturer VALUES (11, '냥멍이', '2546813', '010-9874-6542',1);

UPDATE tblLecturer
SET state = 0
WHERE seq =1;

























