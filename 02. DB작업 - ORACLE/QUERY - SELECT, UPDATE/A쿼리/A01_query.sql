-- A01 쿼리

SELECT * FROM tblCourseName; -- 과정명 선택시 

INSERT INTO tblCourseName -- 과정명 선택 > 과정명 추가 시 
    VALUES (courseSeq.NEXTVAL, 'ooo 설계 프로젝트', DEFAULT); 

UPDATE tblCourseName -- 과정명 선택 > 과정명 수정 시
    SET 
        NAME = 'ooo'
    WHERE seq = 00; 
    
UPDATE tblCourseName -- 과정명 선택 > 과정 삭제 시(DEFAULT 값 변환)
    SET 
        state = 0
    WHERE seq = 00; 
    
-- DELETE TBLCOURSENAME WHERE SEQ = 13;
    
------------------------------------------------------------------------------------------------------

SELECT * FROM tblSubjectName; -- 과목명 선택 시 

INSERT INTO tblSubjectName -- 과목명 선택 > 과목명 추가 시
    VALUES (subjectSeq.NEXTVAL, 'ooo 쿼리 만들기', 0, DEFAULT); 

UPDATE tblSubjectName -- 과목명 선택 > 과목명 수정 시
    SET 
        NAME = 'ooo'
    WHERE seq = 00; 
    
UPDATE tblSubjectName  -- 과목명 선택 > 과목유형 번호 수정 시 
    SET 
        subjectTypeSeq = 1 -- 임의의 숫자
    WHERE seq = 00;

UPDATE tblSubjectName -- 과목명 선택 > 과목 삭제 시(DEFAULT 값 변환)
    SET 
        state = 0 
    WHERE seq = 00; 
    
-- DELETE TBLSUBJECTNAME WHERE SEQ = 59;

------------------------------------------------------------------------------------------------------
    
SELECT * FROM tblClassRoom; -- 강의실 선택 시

UPDATE tblClassRoom -- 강의실 선택 > 강의실명 수정 시
    SET 
        name = '제 0강의실' -- 임의의 숫자
    WHERE seq = 00; 

UPDATE tblClassRoom -- 강의실 선택 > 정원 수정 시
    SET 
        num = 00 -- 임의의 숫자
    WHERE seq = oo; 

------------------------------------------------------------------------------------------------------
    
SELECT * FROM tblTextbook; -- 교재명 선택 시

INSERT INTO tblTextbook -- 교재명 선택 > 교재명 추가 시
    VALUES (seq.NEXTVAL, 'ooo 쿼리 이렇게 짜라', 0, DEFAULT); 
    
UPDATE tblTextbook -- 교재명 선택 > 교재명 수정 시
    SET 
        name = 'ooo 쿼리 이렇게 짜라' -- 임의의 교재 명
    WHERE seq = oo; 
    
UPDATE tblTextbook -- 교재명 선택 > 교재명 삭제 시(DEFAULT 값 변환)
    SET 
        state = 0 
    WHERE seq = oo; 

-- SELECT * FROM TBLPUBLISHER;
INSERT INTO tblPublisher -- 교재명 선택 > 출판사 추가 시
    VALUES (seq.NEXTVAL, 'OO 출판사', DEFAULT);
    
------------------------------------------------------------------------------------------------------






