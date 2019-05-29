-- 과목유형 RAWDATA.SQL

CREATE TABLE tblSubjectType
(
    seq NUMBER PRIMARY KEY, -- 번호
    name VARCHAR2(50) NOT NULL, -- 과목유형명
    state NUMBER DEFAULT 1 NOT NULL
);

CREATE SEQUENCE subjectTypeSeq;
DROP SEQUENCE SUBJECTTYPESEQ;

INSERT INTO tblSubjectType VALUES (subjectTypeSeq.NEXTVAL, 'Java', DEFAULT);
INSERT INTO tblSubjectType VALUES (subjectTypeSeq.NEXTVAL, 'DB', DEFAULT);
INSERT INTO tblSubjectType VALUES (subjectTypeSeq.NEXTVAL, 'Test', DEFAULT);
INSERT INTO tblSubjectType VALUES (subjectTypeSeq.NEXTVAL, 'Front-end', DEFAULT);
INSERT INTO tblSubjectType VALUES (subjectTypeSeq.NEXTVAL, 'Back-end', DEFAULT);
INSERT INTO tblSubjectType VALUES (subjectTypeSeq.NEXTVAL, 'Framework', DEFAULT);
INSERT INTO tblSubjectType VALUES (subjectTypeSeq.NEXTVAL, 'Web', DEFAULT);
INSERT INTO tblSubjectType VALUES (subjectTypeSeq.NEXTVAL, 'Project', DEFAULT);
INSERT INTO tblSubjectType VALUES (subjectTypeSeq.NEXTVAL, 'Spring', DEFAULT);
INSERT INTO tblSubjectType VALUES (subjectTypeSeq.NEXTVAL, 'jQuery', DEFAULT);
INSERT INTO tblSubjectType VALUES (subjectTypeSeq.NEXTVAL, 'Kotlin', DEFAULT);
INSERT INTO tblSubjectType VALUES (subjectTypeSeq.NEXTVAL, 'Python', DEFAULT);
INSERT INTO tblSubjectType VALUES (subjectTypeSeq.NEXTVAL, 'UI', DEFAULT);
INSERT INTO tblSubjectType VALUES (subjectTypeSeq.NEXTVAL, 'Bigdata', DEFAULT);
INSERT INTO tblSubjectType VALUES (subjectTypeSeq.NEXTVAL, 'R', DEFAULT);
INSERT INTO tblSubjectType VALUES (subjectTypeSeq.NEXTVAL, 'App', DEFAULT);
INSERT INTO tblSubjectType VALUES (subjectTypeSeq.NEXTVAL, 'AI', DEFAULT);
INSERT INTO tblSubjectType VALUES (subjectTypeSeq.NEXTVAL, 'Javascript', DEFAULT);
INSERT INTO tblSubjectType VALUES (subjectTypeSeq.NEXTVAL, 'Network', DEFAULT);
INSERT INTO tblSubjectType VALUES (subjectTypeSeq.NEXTVAL, 'Blockchain', DEFAULT);
INSERT INTO tblSubjectType VALUES (subjectTypeSeq.NEXTVAL, 'Java JSP', DEFAULT);
INSERT INTO tblSubjectType VALUES (subjectTypeSeq.NEXTVAL, '응용 SW', DEFAULT);
INSERT INTO tblSubjectType VALUES (subjectTypeSeq.NEXTVAL, '시스템 SW', DEFAULT);
INSERT INTO tblSubjectType VALUES (subjectTypeSeq.NEXTVAL, '보안', DEFAULT);
INSERT INTO tblSubjectType VALUES (subjectTypeSeq.NEXTVAL, 'Deep learning', DEFAULT);
INSERT INTO tblSubjectType VALUES (subjectTypeSeq.NEXTVAL, 'Algorithm', DEFAULT);
INSERT INTO tblSubjectType VALUES (subjectTypeSeq.NEXTVAL, 'Data science', DEFAULT);

SELECT * FROM tblSubjectType;
DROP TABLE TBLSUBJECTTYPE;
commit;

