--seol  >  holiday.sql

DROP SEQUENCE holidaySeq;

DROP TABLE tblHoliday

CREATE TABLE tblHoliday
(
    seq number primary key,
    regdate date not null,
    name varchar2(30) not null
);

CREATE SEQUENCE holidaySeq;


INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2017-01-01', '신정' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2017-01-27', '설날' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2017-01-28', '설날' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2017-01-29', '설날' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2017-01-30', '대체공휴일' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2017-03-01', '삼일절' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2017-05-03', '석가탄신일' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2017-05-05', '어린이날' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2017-05-09', '대통령선거' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2017-06-06', '현충일' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2017-08-15', '광복절' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2017-10-02', '임시공휴일' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2017-10-03', '개천절' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2017-10-03', '추석' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2017-10-04', '추석' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2017-10-05', '추석' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2017-10-06', '추석' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2017-10-09', '한글날' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2017-12-25', '크리스마스' );


INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2018-01-01', '신정' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2018-02-15', '설날' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2018-02-16', '설날' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2018-02-17', '설날' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2018-03-01', '삼일절' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2018-05-05', '어린이날' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2018-05-07', '대체공휴일' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2018-05-22', '부처님 오신 날' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2018-06-06', '현충일' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2018-06-13', '지방선거' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2018-08-15', '광복절' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2018-09-23', '추석' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2018-09-24', '추석' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2018-09-25', '추석' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2018-09-26', '대체공휴일');
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2018-10-03', '개천절' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2018-10-09', '한글날' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2018-12-25', '크리스마스' );



INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2019-01-01', '신정' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2019-02-04', '설날' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2019-02-05', '설날' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2019-02-06', '설날' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2019-03-01', '삼일절' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2019-05-05', '어린이날' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2019-05-06', '대체공휴일' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2019-05-12', '부처님 오신 날' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2019-06-06', '현충일' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2019-08-15', '광복절' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2019-09-12', '추석' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2019-09-13', '추석' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2019-09-14', '추석' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2019-10-03', '개천절' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2019-10-09', '한글날' );
INSERT INTO tblHoliday VALUES(holidaySeq.NEXTVAL, '2019-12-25', '크리스마스' );


COMMIT;

SELECT*FROM tblholiday;

select 
    v.regdate, 
    case
        when to_char(v.regdate, 'd') in ('7','1') then '공휴일'-->7과 1 은  토요일과 일요일
        when t.state is null and h.name is null then '결석'
        when t.state is null and h.name is not null then h.name
        else t.state
    end as "state"
    
from vwDate v
    left outer join tblDate t
        on v.regdate = t.regdate
            left outer join tblHoliday h
                on v.regdate = h.regdate
                    order by v.regdate asc;



select*from tblcourse;






























































