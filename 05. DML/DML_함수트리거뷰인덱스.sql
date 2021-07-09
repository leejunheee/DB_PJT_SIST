-- 주말 제외 날짜 계산 - 과목
declare
    idx in number;
    initdate in date;
    startdate in date;
begin
    while idx <= 29
        loop
            if mod(to_char(startdate, 'd'), 7) + 1 in (6, 7) then --주말
                startdate := startdate + 1;
                continue;
            end if;
            startdate := startdate + 1;
            idx := idx + 1;
        end loop;
    startdate := startdate - 1;
    -- 두번째 이상부터
    --     update TBLOPENSUBJECT
--     set subjectstart = (select subjectend + 1 from tblopensubject where opensubjectseq = 17),
--         subjectend   = startdate
--     where opensubjectseq = 18;
    -- 첫번째 부터
    update TBLOPENSUBJECT
    set subjectstart = initdate,
        subjectend   = startdate
    where opensubjectseq = 13;
end;

-- 주말 제외 날짜 계산 - 과정
declare
    venter        date ;
    vexit         date ;
    vseq          number := 1;
    vclassSeq     number := 1;
    vopencouseseq number;
begin
    while vclassSeq <= 146
        loop
            select OPENCOURSESEQ into vopencouseseq from tblclass where classseq = vclassSeq;
            if vopencouseseq = 1 then
                venter := to_date('2021-01-05:08:35:00', 'yyyy-mm-dd:hh24:mi:ss');
                vexit := to_date('2021-01-05:17:55:00', 'yyyy-mm-dd:hh24:mi:ss');
            elsif
                vopencouseseq = 2 then
                venter := to_date('2021-02-08:08:35:00', 'yyyy-mm-dd:hh24:mi:ss');
                vexit := to_date('2021-02-08:17:55:00', 'yyyy-mm-dd:hh24:mi:ss');
            elsif
                vopencouseseq = 3 then
                venter := to_date('2021-03-29:08:35:00', 'yyyy-mm-dd:hh24:mi:ss');
                vexit := to_date('2021-03-29:17:55:00', 'yyyy-mm-dd:hh24:mi:ss');
            elsif vopencouseseq = 4 then
                venter := to_date('2021-04-12:08:35:00', 'yyyy-mm-dd:hh24:mi:ss');
                vexit := to_date('2021-04-12:17:55:00', 'yyyy-mm-dd:hh24:mi:ss');
            elsif vopencouseseq = 5 then
                venter := to_date('2021-05-28:08:35:00', 'yyyy-mm-dd:hh24:mi:ss');
                vexit := to_date('2021-05-28:17:55:00', 'yyyy-mm-dd:hh24:mi:ss');
            end if;


            while venter < sysdate
                loop
                    venter := venter + 1;
                    vexit := vexit + 1;
--                     dbms_output.PUT_LINE(mod(to_char(venter, 'd'),7)+1);
                    if mod(to_char(venter, 'd'), 7) + 1 in (1, 2) then --주말
                        continue;
                    end if;
                    insert into tblattend values (vseq, venter, vexit, '정상', vclassSeq);
                    vseq := vseq + 1;
                    --                     dbms_output.PUT_LINE(venter);
--                     dbms_output.PUT_LINE(vseq);
                end loop;
            vclassSeq := vclassSeq + 1;
        end loop;
end;


-- 1~5번 출결 랜덤 데이터
declare
    venter        date ;
    vexit         date ;
    vseq          number := 1;
    vclassSeq     number := 1;
    vopencouseseq number;

begin
    while vclassSeq <= 146
        loop
            select OPENCOURSESEQ into vopencouseseq from tblclass where classseq = vclassSeq;
            if vopencouseseq = 1 then
                venter := to_date('2021-01-04:08:46:00', 'yyyy-mm-dd:hh24:mi:ss');
                vexit := to_date('2021-01-04:17:55:00', 'yyyy-mm-dd:hh24:mi:ss');
            elsif
                vopencouseseq = 2 then
                venter := to_date('2021-02-07:08:46:00', 'yyyy-mm-dd:hh24:mi:ss');
                vexit := to_date('2021-02-07:17:55:00', 'yyyy-mm-dd:hh24:mi:ss');
            elsif
                vopencouseseq = 3 then
                venter := to_date('2021-03-28:08:46:00', 'yyyy-mm-dd:hh24:mi:ss');
                vexit := to_date('2021-03-28:17:55:00', 'yyyy-mm-dd:hh24:mi:ss');
            elsif vopencouseseq = 4 then
                venter := to_date('2021-04-11:08:46:00', 'yyyy-mm-dd:hh24:mi:ss');
                vexit := to_date('2021-04-11:17:55:00', 'yyyy-mm-dd:hh24:mi:ss');
            elsif vopencouseseq = 5 then
                venter := to_date('2021-05-27:08:46:00', 'yyyy-mm-dd:hh24:mi:ss');
                vexit := to_date('2021-05-27:17:55:00', 'yyyy-mm-dd:hh24:mi:ss');
            end if;
            while venter < sysdate
                loop
                    venter := venter + 1;
                    --                     venter := venter - v1;
--                     v1 := dbms_random.value(0, 30) / (24 * 60);
--                     venter := venter + v1;

                    vexit := vexit + 1;
                    --                     vexit := vexit - v2;
--                     v2 := dbms_random.value(0, 20) / (24 * 60);
--                     vexit := vexit + v2;
                    if mod(to_char(venter, 'd'), 7) + 1 in (1, 2) then --주말
                        continue;
                    end if;
                    insert into tblattend
                    values (vseq, venter + dbms_random.value(0, 20) / (24 * 60),
                            vexit + dbms_random.value(0, 20) / (24 * 60), '정상', vclassSeq);

                    vseq := vseq + 1;
                    --                     dbms_output.PUT_LINE(vseq);
--                     dbms_output.PUT_LINE(venter);
                end loop;
            vclassSeq := vclassSeq + 1;
        end loop;
end;


-- 6번 출결 랜덤 데이터
declare
    venter        date ;
    vexit         date ;
    vseq          number := 8361;
    vclassSeq     number := 176;
    vopencouseseq number;
begin
    while vclassSeq <= 205
        loop
            select OPENCOURSESEQ into vopencouseseq from tblclass where classseq = vclassSeq;
            if vopencouseseq = 16 then
                venter := to_date('2020-05-27:08:46:00', 'yyyy-mm-dd:hh24:mi:ss');
                vexit := to_date('2020-05-27:17:55:00', 'yyyy-mm-dd:hh24:mi:ss');
            end if;
            while venter < to_date('2020-11-12:08:45:00', 'yyyy-mm-dd:hh24:mi:ss')
                loop
                    venter := venter + 1;
                    vexit := vexit + 1;
                    if mod(to_char(venter, 'd'), 7) + 1 in (1, 2) then --주말
                        continue;
                    end if;
                    insert into tblattend
                    values (vseq, venter + dbms_random.value(0, 20) / (24 * 60),
                            vexit + dbms_random.value(0, 20) / (24 * 60), '정상', vclassSeq);

                    vseq := vseq + 1;
                    dbms_output.PUT_LINE(vseq);
                    dbms_output.PUT_LINE(venter);
                end loop;
            vclassSeq := vclassSeq + 1;
        end loop;
end;

-- status 바꾸기
declare
    vdate tblstudent.retdate%type;
    vnum  number := 1;
begin
    dbms_output.PUT_LINE(vdate);
    while vnum <= 300
        loop
            select add_months(RETDATE, 6)
            into vdate
            from tblstudent
            where status = '수강완료'
              and COMPLETIONSTATUS = '수료'
              and vnum = STUDENTSEQ;
            insert into TBLSTUDENT (COMPLETEDATE) values (vdate);
            vnum := vnum + 1;
            dbms_output.PUT_LINE(vdate);
        end loop;
exception
    when others then
        dbms_output.PUT_LINE('exception');
end;


create or replace view vwListSchedule 
as
select t2.CLASSSCHEDULESEQ                    as 스케줄번호,
       t3.SUBJECTSEQ                          as 과목번호,
       t6.COURSENAME                          as 과정명,
       to_char(t5.COURSESTART, 'yyyy-mm-dd')  as 과정시작날짜,
       to_char(t5.COURSEEND, 'yyyy-mm-dd')    as 과정종료날짜, 
       t7.CLASSROOMNAME                       as 강의실명,
       t3.SUBJECTNAME                         as 과목명,
       to_char(os.SUBJECTSTART, 'yyyy-mm-dd') as 과목시작날짜, 
       to_char(os.SUBJECTEND, 'yyyy-mm-dd')   as 과목종료날짜, 
       t4.BOOKNAME                            as 교재명,
       t5.OPENSUBJECTREGISTER
from TBLOPENSUBJECT os
         inner join TBLAVAILABLESUBJECT T on T.AVAILABLESUBJECTSEQ = os.AVAILABLESUBJECTSEQ
         inner join TBLCLASSSCHEDULE T2 on T.TEACHERSEQ = T2.TEACHERSEQ
         inner join TBLSUBJECT T3 on T3.SUBJECTSEQ = T.SUBJECTSEQ
         inner join TBLBOOK T4 on T4.BOOKSEQ = T3.BOOKSEQ
         inner join TBLOPENCOURSE T5 on T5.OPENCOURSESEQ = os.OPENCOURSESEQ
         inner join TBLCOURSE T6 on T6.COURSESEQ = T5.COURSESEQ
         inner join TBLCLASSROOM T7 on T7.CLASSROOMSEQ = T5.CLASSROOMSEQ
order by 과목시작날짜;


--  1-2. [특정 과목 교육생 조회]
--    - 교육생 이름을 출력한다.
--    - 교육생 전화번호를 출력한다.
--    - 교육생 등록일을 출력한다.
--    - 교육생 수료여부을 출력한다.

create or replace procedure procOneStudentList(
    pseq number,
    pcursor out sys_refcursor
)
    is
begin
    open pcursor for
        select NAME             as 교육생이름,
               tel              as 전화번호,
               RETDATE          as 등록일,
               COMPLETIONSTATUS as 수료여부
        from TBLSTUDENT
        where TBLSTUDENT.STUDENTSEQ = pseq
        order by NAME;
end;

create or replace procedure attendenceCheckInsert(
    pinTime date,
    poutTime date,
    pattendace varchar2,
    pclassSeq number
)
    is
begin
    insert into tblattend
    values (SEQ_TBLATTNED.nextval, pinTIme, poutTime, pattendace, pclassSeq);
end;

CREATE OR REPLACE VIEW vwEmpStat
AS
SELECT e.empmangseq                 AS 취업관리번호,
       c.companyseq                 AS 회사번호,
       s.completedate               AS 수료일자,
       c.companyname                AS 회사명,
       cl.opencourseseq             AS 과정번호,
       substr(s.name, 1, 1) || 'OO' AS 학생명
FROM tblCompany c
         INNER JOIN tblempstat e
                    ON c.companyseq = e.companyseq
         INNER JOIN tblclass cl
                    ON e.classseq = cl.classseq
         INNER JOIN tblstudent s
                    ON cl.studentseq = s.studentseq;



create or replace procedure procTaskSubject(
    pseq number,
    pcursor out sys_refcursor
)
    is
begin
    open pcursor for
        select distinct t2.SUBJECTNAME           as 개설과목명,
                        os.OPENSUBJECTSEQ        as 개설과목번호,
                        to_char(os.SUBJECTSTART) as 과목시작날짜,
                        to_char(os.SUBJECTEND)   as 과목종료날짜,
                        t3.TASKREGIST            as 과제제출여부
        from TBLOPENSUBJECT os
                 inner join TBLAVAILABLESUBJECT T on T.AVAILABLESUBJECTSEQ = os.AVAILABLESUBJECTSEQ
                 inner join TBLSUBJECT T2 on T2.SUBJECTSEQ = T.SUBJECTSEQ
                 inner join TBLTASK T3 on os.OPENSUBJECTSEQ = T3.OPENSUBJECTSEQ
                 inner join TBLCLASS T4 on T4.CLASSSEQ = T3.CLASSSEQ
        where t4.STUDENTSEQ = pseq
        order by os.OPENSUBJECTSEQ;

end;

create or replace procedure procAddTask
    is
    vosseq number;
    vcseq  number;
begin

    select os.OPENSUBJECTSEQ, t2.CLASSSEQ
    into vosseq, vcseq
    from TBLOPENSUBJECT os
             inner join TBLTASK T on os.OPENSUBJECTSEQ = T.OPENSUBJECTSEQ
             inner join TBLCLASS T2 on T2.CLASSSEQ = T.CLASSSEQ
             inner join TBLSTUDENT T3 on T3.STUDENTSEQ = T2.STUDENTSEQ;

    insert into TBLTASK (TASKSEQ, TASKREGIST, TASKSUBMITDATE, OPENSUBJECTSEQ, CLASSSEQ)
    values (SEQ_TBLTASK.nextval, '제출', sysdate, vosseq, vcseq);
    commit;
exception
    when others then
        rollback ;
end;


-- 과목 수정 프로시저
create or replace procedure procUpdateTask( 
    ptseq number,
    ptr varchar2,
    ptsd date,
    posseq number,
    pcseq number
)
    is
begin
    update TBLTASK
    set TASKSEQ       = ptseq,
        TASKREGIST    = ptr,
        TASKSUBMITDATE= ptsd,
        CLASSSEQ      = pcseq
    where OPENSUBJECTSEQ = posseq;
    commit;
end;


--과제 등록시 제출 여부 변경 트리거 > 미제출 -> 제출

create or replace trigger trgTaskRegist
    after
        update
    on TBLTASK
declare
    vmessage varchar2(100);
begin
    if updating then
        vmessage := '과제 제출 완료';
    end if;
    update TBLTASK set TASKREGIST = '제출' where TASKSEQ = ?;
end trgTaskRegist;

create or replace procedure procTaskFeedback(
    pseq number,
    pcursor out sys_refcursor
)
    is
begin
    open pcursor for
        SELECT T3.OPENSUBJECTSEQ     AS 과목번호,
               T1.TASKSEQ            AS 과제번호,
               T2.CLASSSEQ           AS 학생번호,
               T.TASKFEEDBACKCONTENT AS 피드백내용
        FROM TBLTASK T1
                 INNER JOIN TBLTASKFEEDBACK T on T1.TASKSEQ = T.TASKSEQ
                 INNER JOIN TBLCLASS T2 on T2.CLASSSEQ = T1.CLASSSEQ
                 INNER JOIN TBLOPENSUBJECT T3 on T3.OPENSUBJECTSEQ = T1.OPENSUBJECTSEQ
        where t3.OPENSUBJECTSEQ = pseq;

end;



create or replace procedure procRegTeacher(
    pname tblteacher.teachername%type,
    ppassword tblTeacher.password%type,
    ptel tblTeacher.teachertel%type
)
    is
begin
    insert into tblTeacher (teacherSeq, teacherName, password, teacherTel)
    values (seq_tblTeacher.nextVal, pname, ppassword, ptel);
end procRegTeacher;

begin
    procRegTeacher('테스트', 1234567, '010-1234-1234');
end;

select *
from tblTeacher;

---- 교사의 강의 가능 과목 등록하기 1번에 1개
create or replace procedure procRegTeacherSubject(
    pteacherseq tblTeacher.teacherseq%type,
    psubjectSeq tblAvailableSubject.subjectseq%type
)
    is
begin
    insert into tblAvailableSubject (availablesubjectSeq, teacherSeq, subjectSeq)
    values (seq_tblAvailableSubject.nextVal, pteacherSeq, psubjectSeq);
end procRegTeacherSubject;

begin
    procregteachersubject(23, 13);
end;

create or replace procedure procUpdateTeacher(
    ptseq number,
    pname tblteacher.teachername%type,
    ppassword tblTeacher.password%type,
    ptel tblTeacher.teachertel%type
)
    is
begin
    update tblTeacher set teacherName = pname, password = ppassword, teacherTel = ptel where teacherseq = ptseq;
end procUpdateTeacher;

create or replace trigger trgDeleteTeacher
    before
        delete
    on tblTeacher
    for each row
begin
    update tblAvailableSubject
    set teacherSeq = (select min(teacherSeq) from tblTeacher where status = '대기')
    where teacherSeq = :old.teacherSeq;
    update tblclassschedule
    set teacherSeq = (select min(teacherSeq) from tblTeacher where status = '대기')
    where teacherSeq = :old.teacherSeq;
end;


create or replace function fnSubjectProgress(
    sStart date,
    sEnd date
) return varchar2
    is
begin
    return case
               when sysdate > sEnd then '강의완료'
               when sysdate between sStart and sEnd then '강의중'
               when sysdate < sStart then '강의예정'
        end;
end fnSubjectProgress;

CREATE OR REPLACE VIEW vwOpenCourseSubject
AS
SELECT DISTINCT oc.opencourseseq as 개설과정번호,
                c.courseName     as 개설과정명,
                oc.coursestart   as 개설과정시작일,
                oc.courseend     as 개설과정종료일,
                r.classroomname  as 개설과정강의실
FROM tblopensubject OS
         INNER JOIN tblopencourse OC
                    ON os.opencourseseq = oc.opencourseseq
         INNER JOIN tblCourse C
                    on oc.courseSeq = c.courseSeq
         INNER JOIN tblClassRoom R
                    on oc.classroomseq = r.classroomseq;


CREATE OR REPLACE PROCEDURE procAddOpenSubject(
    psubjectStart IN date,
    psubjectEnd IN date,
    pavailableSubjectSeq IN number,
    popenCourseSeq IN number
)
    IS
BEGIN
    INSERT INTO tblopensubject
    values (SEQ_TBLOPENSUBJECT.nextval, psubjectStart, psubjectEnd, pavailableSubjectSeq, popenCourseSeq);
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
END;

CREATE OR REPLACE PROCEDURE procDeleteopensubject(
    pseq IN NUMBER
)
    IS
BEGIN
    DELETE FROM tblopensubject WHERE opensubjectseq = pseq;
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
END;

CREATE OR REPLACE PROCEDURE procStudentDelete(
    pseq IN NUMBER
)
    IS
BEGIN
    DELETE FROM tblStudent WHERE studentseq = pseq;
    commit;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
END;

CREATE OR REPLACE PROCEDURE procOpensubjectDelete(
    pseq IN NUMBER
)
    IS
BEGIN
    DELETE FROM tblOpensubject WHERE opensubjectseq = pseq;
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
END;

create or replace view vwListAllOpenCourse
as
select c.OPENCOURSESEQ                      as 개설과정번호,
       t.COURSENAME                         as 과정명,
       to_char(c.COURSESTART, 'yyyy-mm-dd') as 과정시작날짜,
       to_char(c.COURSEEND, 'yyyy-mm-dd')   as 과정종료날짜,
       cr.CLASSROOMNAME                     as 강의실명,
       c.STUDENTREGISTER                    as 등록인원,
       c.OPENSUBJECTREGISTER                as 개설과목등록여부,
       c.COURSESTATE                        as 개설상태
from TBLOPENCOURSE c
         inner join TBLCLASSROOM cr
                    on c.OPENCOURSESEQ = cr.CLASSROOMSEQ
         inner join TBLCOURSE T on c.COURSESEQ = T.COURSESEQ
order by c.opencourseseq;

create or replace procedure procListOpenCourseSubject(
    pseq in number,
    pcursor out sys_refcursor
)
    is
begin
    open pcursor for
        select os.OPENSUBJECTSEQ                      as 개설과목번호,
               s.SUBJECTNAME                          as 과목명,
               TO_char(os.SUBJECTSTART, 'yyyy-mm-dd') as 과목시작날짜,
               to_char(os.SUBJECTEND, 'yyyy-mm-dd')   as 과목종료날짜,
               b.BOOKNAME                             as 교재명,
               e.GRADEENTER                           as 성적등록여부,
               e.EXAMFILE                             as 시험문제파일등록여부
        from TBLOPENSUBJECT os
                 inner join TBLAVAILABLESUBJECT avs on os.AVAILABLESUBJECTSEQ = avs.AVAILABLESUBJECTSEQ
                 inner join TBLSUBJECT s on s.SUBJECTSEQ = avs.SUBJECTSEQ
                 inner join TBLEXAM e on e.OPENSUBJECTSEQ = os.AVAILABLESUBJECTSEQ
                 inner join tblbook b on s.BOOKSEQ = b.BOOKSEQ
                 inner join TBLOPENCOURSE T on T.OPENCOURSESEQ = os.OPENCOURSESEQ
        where t.OPENCOURSESEQ = pseq
        order by os.OPENSUBJECTSEQ;
end;

create or replace procedure procList(
    pseq in number,
    pcursor out sys_refcursor
)
    is
begin
    open pcursor for
        select s.SUBJECTNAME    as 개설과목명,
               c.COURSENAME     as 개설과정명,
               c.COURSETERM     as 개설과정기간,
               cr.CLASSROOMNAME as 강의실명,
               t.TEACHERNAME    as 교사명,
               b.BOOKNAME       as 교재명
        from TBLOPENSUBJECT os
                 inner join TBLAVAILABLESUBJECT avs on os.AVAILABLESUBJECTSEQ = avs.AVAILABLESUBJECTSEQ
                 inner join TBLSUBJECT s on avs.SUBJECTSEQ = s.SUBJECTSEQ
                 inner join TBLBOOK b on s.BOOKSEQ = b.BOOKSEQ
                 inner join TBLTEACHER t on avs.TEACHERSEQ = t.TEACHERSEQ
                 inner join TBLOPENCOURSE oc on os.OPENCOURSESEQ = oc.OPENCOURSESEQ
                 inner join TBLCOURSE c on oc.COURSESEQ = c.COURSESEQ
                 inner join TBLCLASSROOM cr on oc.CLASSROOMSEQ = cr.CLASSROOMSEQ
        where os.OPENSUBJECTSEQ = pseq
        order by s.SUBJECTNAME;

end;

create or replace view vwGradeManage
as
select st.NAME        as 교육생이름,
       st.PASSWORD    as 주민번호뒷자리,
       g.WRITEGRADE   as 필기점수,
       g.PERFORMGRADE as 실기점수
from TBLGRADE g
         inner join TBLCLASS c on g.CLASSSEQ = c.CLASSSEQ
         inner join TBLSTUDENT st on c.STUDENTSEQ = st.STUDENTSEQ;

create or replace procedure procOneStudentList(
    pseq number,
    pcursor out sys_refcursor
)
    is
begin
    open pcursor for
        select st.NAME          as 교육생이름,
               st.PASSWORD      as 주민번호뒷자리,
               c.COURSENAME     as 개설과정명,
               c.COURSETERM     as 개설과정기간,
               cr.CLASSROOMNAME as 강의실명
        from TBLCLASS c
                 inner join TBLOPENCOURSE oc on c.OPENCOURSESEQ = oc.OPENCOURSESEQ
                 inner join TBLSTUDENT st on c.STUDENTSEQ = st.STUDENTSEQ
                 inner join TBLCLASSROOM cr on oc.CLASSROOMSEQ = cr.CLASSROOMSEQ
                 inner join TBLCOURSE c on oc.COURSESEQ = c.COURSESEQ
        where st.STUDENTSEQ = pseq;
end procOneStudentList;

create or replace procedure procStudentOpenSubjectGrade(
    pseq number,
    pcursor sys_refcursor
)
    is
begin
    open pcursor for
        select s.SUBJECTNAME  as 개설과목명,
               s.PERIOD       as 개설과목기간,
               t.TEACHERNAME  as 교사명,
               g.ATTENDGRADE  as 출결점수,
               g.WRITEGRADE   as 필기점수,
               g.PERFORMGRADE as 실기점수
        from TBLOPENSUBJECT os
                 inner join TBLAVAILABLESUBJECT avs on os.AVAILABLESUBJECTSEQ = avs.AVAILABLESUBJECTSEQ
                 inner join TBLTEACHER t on avs.TEACHERSEQ = t.TEACHERSEQ
                 inner join TBLEXAM e on e.OPENSUBJECTSEQ = os.OPENSUBJECTSEQ
                 inner join TBLGRADE g on g.EXAMSEQ = e.EXAMSEQ
                 inner join TBLSUBJECT s on avs.SUBJECTSEQ = s.SUBJECTSEQ
                 inner join TBLCLASS T2 on g.CLASSSEQ = T2.CLASSSEQ
        where t2.STUDENTSEQ = pseq; -- 특정 교육생 번호 입력
end;

CREATE OR REPLACE VIEW vwAttend
AS
SELECT DISTINCT s.studentseq as 교육생번호,
                s.name       as 교육생이름,
                a.attendseq  as 출결번호,
                a.intime     as 입실시간,
                a.outtime    as 퇴실시간,
                a.attendance as 출결상황
FROM tblclass C
         INNER JOIN tblstudent S
                    ON c.studentseq = s.studentseq
         INNER JOIN tblattend A
                    ON c.classseq = a.classseq
         INNER JOIN tblopencourse oc
                    ON c.opencourseseq = oc.opencourseseq
WHERE oc.opencourseseq = 특정개설과정번호;

CREATE OR REPLACE PROCEDURE procUpdateAttend(
    pSeq IN number,
    pInTime IN date,
    pOutTime IN date,
    pAttendance IN varchar2
)
    IS
BEGIN
    UPDATE tblAttend SET inTime = pInTime, outTime = pOutTime, attendance = pAttendance WHERE attendSeq = pseq;
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
END;


CREATE OR REPLACE PROCEDURE procDeleteAttend(
    pseq IN NUMBER
)
    IS
BEGIN
    DELETE FROM tblAttend WHERE attendseq = pseq;
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
END;

CREATE OR REPLACE PROCEDURE procAddEmpStat(
    pClassSeq IN number,
    pState IN varchar2,
    pCompanySeq number
)
    IS
BEGIN
    INSERT INTO tblempstat
    VALUES (seq_empstat.nextVal, pClassSeq, pCompanySeq, pState);
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
END;

CREATE OR REPLACE PROCEDURE procUpdateEmpstat(
    pEmpMangSeq IN number,
    pclassSeq IN number,
    pstate IN varchar2,
    pcompanySeq IN number
)
    IS
BEGIN
    UPDATE tblempstat
    SET classseq   = pclassSeq,
        empmangseq = pEmpMangSeq,
        companyseq = pcompanySeq,
        state      = pstate
    WHERE empmangseq = pEmpMangSeq;
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
END;

CREATE OR REPLACE PROCEDURE procDeleteEmpStat(
    pseq IN NUMBER
)
    IS
BEGIN
    DELETE FROM tblempstat WHERE empmangseq = pseq;
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
END;