-- 프로젝트
-- 프로젝트번호 projectSeq
-- 프로젝트등록 projectRegist
-- 프로젝트제출일 projectSubmitDate
-- 팀번호 teamSeq
-- 팀이름 teamName


-- 프로젝트 데이터 생성
declare
    v1 tblsubject.subjectseq%type;
    v2 tblteam.teamname%type;
    cursor vcursor is
        select distinct t5.SUBJECTSEQ, t1.TEAMNAME
        from tblteam t1
                 inner join TBLCLASS t2 on t1.CLASSSEQ = t2.CLASSSEQ
                 inner join TBLOPENCOURSE T on T.OPENCOURSESEQ = t2.OPENCOURSESEQ
                 inner join TBLOPENSUBJECT T3 on T.OPENCOURSESEQ = T3.OPENCOURSESEQ
                 inner join TBLAVAILABLESUBJECT T4 on T4.AVAILABLESUBJECTSEQ = T3.AVAILABLESUBJECTSEQ
                 inner join TBLSUBJECT T5 on T5.SUBJECTSEQ = t4.SUBJECTSEQ;
begin
    open vcursor;
    loop
        fetch vcursor into v1, v2;
        insert into tblproject
        select rownum, t5.SUBJECTNAME || '프로젝트', T3.SUBJECTEND, t1.TEAMSEQ
from tblteam t1
         inner join TBLCLASS t2 on t1.CLASSSEQ = t2.CLASSSEQ
         inner join TBLOPENCOURSE T on T.OPENCOURSESEQ = t2.OPENCOURSESEQ
         inner join TBLOPENSUBJECT T3 on T.OPENCOURSESEQ = T3.OPENCOURSESEQ
         inner join TBLAVAILABLESUBJECT T4 on T4.AVAILABLESUBJECTSEQ = T3.AVAILABLESUBJECTSEQ
         inner join TBLSUBJECT T5 on T5.SUBJECTSEQ = t4.SUBJECTSEQ
where (v1, v2) in (
    select distinct t5.SUBJECTSEQ, t1.TEAMNAME
    from tblteam t1
             inner join TBLCLASS t2 on t1.CLASSSEQ = t2.CLASSSEQ
             inner join TBLOPENCOURSE T on T.OPENCOURSESEQ = t2.OPENCOURSESEQ
             inner join TBLOPENSUBJECT T3 on T.OPENCOURSESEQ = T3.OPENCOURSESEQ
             inner join TBLAVAILABLESUBJECT T4 on T4.AVAILABLESUBJECTSEQ = T3.AVAILABLESUBJECTSEQ
             inner join TBLSUBJECT T5 on T5.SUBJECTSEQ = t4.SUBJECTSEQ);
        exit when vcursor%notfound;
        dbms_output.PUT_LINE(v1);
        dbms_output.PUT_LINE(v2);
    end loop;
end;
--
insert into tblproject values (seq_tblproject.nextval, '등록', '2021-02-15', 1);
insert into tblproject values (seq_tblproject.nextval, '등록', '2021-02-15', 2);
insert into tblproject values (seq_tblproject.nextval, '등록', '2021-02-15', 3);
insert into tblproject values (seq_tblproject.nextval, '등록', '2021-02-15', 4);
insert into tblproject values (seq_tblproject.nextval, '등록', '2021-02-15', 5);

insert into tblproject values (seq_tblproject.nextval, '등록', '2021-03-10', 1);
insert into tblproject values (seq_tblproject.nextval, '등록', '2021-03-10', 2);
insert into tblproject values (seq_tblproject.nextval, '등록', '2021-03-10', 3);
insert into tblproject values (seq_tblproject.nextval, '등록', '2021-03-10', 4);
insert into tblproject values (seq_tblproject.nextval, '등록', '2021-03-10', 5);

insert into tblproject values (seq_tblproject.nextval, '등록', '2021-04-04', 1);
insert into tblproject values (seq_tblproject.nextval, '등록', '2021-04-04', 2);
insert into tblproject values (seq_tblproject.nextval, '등록', '2021-04-04', 3);
insert into tblproject values (seq_tblproject.nextval, '등록', '2021-04-04', 4);
insert into tblproject values (seq_tblproject.nextval, '등록', '2021-04-04', 5);

insert into tblproject values (seq_tblproject.nextval, '등록', '2021-05-12', 1);
insert into tblproject values (seq_tblproject.nextval, '등록', '2021-05-12', 2);
insert into tblproject values (seq_tblproject.nextval, '등록', '2021-05-12', 3);
insert into tblproject values (seq_tblproject.nextval, '등록', '2021-05-12', 4);
insert into tblproject values (seq_tblproject.nextval, '등록', '2021-05-12', 5);

insert into tblproject values (seq_tblproject.nextval, '미등록', '2021-06-22', 1);
insert into tblproject values (seq_tblproject.nextval, '미등록', '2021-06-22', 2);
insert into tblproject values (seq_tblproject.nextval, '미등록', '2021-06-22', 3);
insert into tblproject values (seq_tblproject.nextval, '미등록', '2021-06-22', 4);
insert into tblproject values (seq_tblproject.nextval, '미등록', '2021-06-22', 5);

insert into tblproject values (seq_tblproject.nextval, '미등록', '2021-07-08', 1);
insert into tblproject values (seq_tblproject.nextval, '미등록', '2021-07-08', 2);
insert into tblproject values (seq_tblproject.nextval, '미등록', '2021-07-08', 3);
insert into tblproject values (seq_tblproject.nextval, '미등록', '2021-07-08', 4);
insert into tblproject values (seq_tblproject.nextval, '미등록', '2021-07-08', 5);