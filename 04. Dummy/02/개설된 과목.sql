-- 개설된 과목.sql
-- tblOpenSubject

-- 과정 1
insert into tblopensubject
values (SEQ_TBLOPENSUBJECT.nextval, to_date('2021-01-05', 'yyyy-mm-dd'), to_date('2021-01-05', 'yyyy-mm-dd') + 29, 6, 1);
insert into tblopensubject
values (SEQ_TBLOPENSUBJECT.nextval, to_date('2021-01-05', 'yyyy-mm-dd') + 30, to_date('2021-01-05', 'yyyy-mm-dd') + 46, 10, 1);
insert into tblopensubject
values (SEQ_TBLOPENSUBJECT.nextval, to_date('2021-01-05', 'yyyy-mm-dd') + 47, to_date('2021-01-05', 'yyyy-mm-dd') + 63, 49, 1);
insert into tblopensubject
values (SEQ_TBLOPENSUBJECT.nextval, to_date('2021-01-05', 'yyyy-mm-dd') + 64, to_date('2021-01-05', 'yyyy-mm-dd') + 91, 50, 1);
insert into tblopensubject
values (SEQ_TBLOPENSUBJECT.nextval, to_date('2021-01-05', 'yyyy-mm-dd') + 92, to_date('2021-01-05', 'yyyy-mm-dd') + 120, 36, 1);


-- 과정 2
insert into TBLOPENSUBJECT 
values(seq_tblOpenSubject.nextval, to_date('2020-02-28','yyyy-mm-dd') + 37,  to_date('2020-02-28','yyyy-mm-dd') + 46, 84, 2);
insert into TBLOPENSUBJECT 
values(seq_tblOpenSubject.nextval, to_date('2020-02-28','yyyy-mm-dd') + 47,  to_date('2020-02-28','yyyy-mm-dd') + 92, 93, 2);
insert into TBLOPENSUBJECT 
values(seq_tblOpenSubject.nextval, to_date('2020-02-28','yyyy-mm-dd') + 64,  to_date('2020-02-28','yyyy-mm-dd') + 90, 77, 2);
insert into TBLOPENSUBJECT 
values(seq_tblOpenSubject.nextval, to_date('2020-02-28','yyyy-mm-dd') + 91,  to_date('2020-02-28','yyyy-mm-dd') + 97, 80, 2);
insert into TBLOPENSUBJECT 
values(seq_tblOpenSubject.nextval, to_date('2020-02-28','yyyy-mm-dd') + 98,  to_date('2020-02-28','yyyy-mm-dd') + 108, 38, 2);
insert into TBLOPENSUBJECT 
values(seq_tblOpenSubject.nextval, to_date('2020-02-28','yyyy-mm-dd') + 109,  to_date('2020-02-28','yyyy-mm-dd') + 113, 44, 2);


-- 과정 3
insert into TBLOPENSUBJECT 
values(seq_tblOpenSubject.nextval, to_date('2020-03-29','yyyy-mm-dd') + 37,  to_date('2020-03-29','yyyy-mm-dd') + 46, 89, 3);
insert into TBLOPENSUBJECT 
values(seq_tblOpenSubject.nextval, to_date('2020-03-29','yyyy-mm-dd') + 47,  to_date('2020-03-29','yyyy-mm-dd') + 92, 85, 3);
insert into TBLOPENSUBJECT 
values(seq_tblOpenSubject.nextval, to_date('2020-03-29','yyyy-mm-dd') + 64,  to_date('2020-03-29','yyyy-mm-dd') + 90, 79, 3);
insert into TBLOPENSUBJECT 
values(seq_tblOpenSubject.nextval, to_date('2020-03-29','yyyy-mm-dd') + 91,  to_date('2020-03-29','yyyy-mm-dd') + 97, 45, 3);
insert into TBLOPENSUBJECT 
values(seq_tblOpenSubject.nextval, to_date('2020-03-29','yyyy-mm-dd') + 96,  to_date('2020-03-29','yyyy-mm-dd') + 111, 47, 3);
insert into TBLOPENSUBJECT 
values(seq_tblOpenSubject.nextval, to_date('2020-03-29','yyyy-mm-dd') + 110,  to_date('2020-03-29','yyyy-mm-dd') + 135, 46, 3);
insert into TBLOPENSUBJECT 
values(seq_tblOpenSubject.nextval, to_date('2020-03-29','yyyy-mm-dd') + 134,  to_date('2020-03-29','yyyy-mm-dd') + 140, 46, 3);


--과정 4
insert into TBLOPENSUBJECT 
values(SEQ_TBLOPENSUBJECT.nextval, '2021-04-12',  to_date('2021-04-12','yyyy-mm-dd') + 29, 75, 4);
insert into TBLOPENSUBJECT 
values(SEQ_TBLOPENSUBJECT.nextval, to_date('2021-04-12','yyyy-mm-dd') + 30,  to_date('2021-04-12','yyyy-mm-dd') + 46, 90, 4);
insert into TBLOPENSUBJECT 
values(SEQ_TBLOPENSUBJECT.nextval, to_date('2021-04-12','yyyy-mm-dd') + 47,  to_date('2021-04-12','yyyy-mm-dd') + 62, 79, 4);
insert into TBLOPENSUBJECT 
values(SEQ_TBLOPENSUBJECT.nextval, to_date('2021-04-12','yyyy-mm-dd') + 63,  to_date('2021-04-12','yyyy-mm-dd') + 90, 87, 4);
insert into TBLOPENSUBJECT 
values(seq_tblOpenSubject.nextval, to_date('2020-03-29','yyyy-mm-dd') + 91,  to_date('2020-03-29','yyyy-mm-dd') + 104, 45, 4);
insert into TBLOPENSUBJECT 
values(seq_tblOpenSubject.nextval, to_date('2020-03-29','yyyy-mm-dd') + 105,  to_date('2020-03-29','yyyy-mm-dd') + 109, 48, 4);


-- 과정 5
insert into TBLOPENSUBJECT
values (13, '2021-05-28', to_date('2021-05-28', 'yyyy-mm-dd') + 29, 88, 5);
insert into TBLOPENSUBJECT
values (14, to_date('2021-05-28', 'yyyy-mm-dd') + 30, to_date('2021-05-28', 'yyyy-mm-dd') + 46, 19, 5);
insert into TBLOPENSUBJECT
values (15, to_date('2021-05-28', 'yyyy-mm-dd') + 47, to_date('2021-05-28', 'yyyy-mm-dd') + 62, 82, 5);
insert into TBLOPENSUBJECT
values (16, to_date('2021-05-28', 'yyyy-mm-dd') + 63, to_date('2021-05-28', 'yyyy-mm-dd') + 90, 42, 5);
insert into TBLOPENSUBJECT
values (17, to_date('2021-05-28', 'yyyy-mm-dd') + 91, to_date('2021-05-28', 'yyyy-mm-dd') + 110, 13, 5); --20일
insert into TBLOPENSUBJECT
values (18, to_date('2021-05-28', 'yyyy-mm-dd') + 111, to_date('2021-05-28', 'yyyy-mm-dd') + 115, 68, 5);--5일
insert into TBLOPENSUBJECT
values (18, to_date('2021-06-01', 'yyyy-mm-dd') + 116, to_date('2021-06-01', 'yyyy-mm-dd') + 120, 45, 5);


--과정 6

insert into TBLOPENSUBJECT
values (13, '2021-06-01', to_date('2021-06-01', 'yyyy-mm-dd') + 29, 78, 6);
insert into TBLOPENSUBJECT
values (14, to_date('2021-06-01', 'yyyy-mm-dd') + 30, to_date('2021-06-01', 'yyyy-mm-dd') + 46, 93, 6);
insert into TBLOPENSUBJECT
values (15, to_date('2021-06-01', 'yyyy-mm-dd') + 47, to_date('2021-06-01', 'yyyy-mm-dd') + 62, 77, 6);
insert into TBLOPENSUBJECT
values (16, to_date('2021-06-01', 'yyyy-mm-dd') + 63, to_date('2021-06-01', 'yyyy-mm-dd') + 90, 91, 6);
insert into TBLOPENSUBJECT
values (17, to_date('2021-06-01', 'yyyy-mm-dd') + 91, to_date('2021-06-01', 'yyyy-mm-dd') + 109, 63, 6); --19일
insert into TBLOPENSUBJECT
values (18, to_date('2021-06-01', 'yyyy-mm-dd') + 110, to_date('2021-06-01', 'yyyy-mm-dd') + 115, 33, 6); -- 6일
insert into TBLOPENSUBJECT
values (18, to_date('2021-06-01', 'yyyy-mm-dd') + 116, to_date('2021-06-01', 'yyyy-mm-dd') + 120, 50, 6);


-- 과정 7
insert into TBLOPENSUBJECT 
values(13, '2021-07-08',  to_date('2021-07-08','yyyy-mm-dd') + 29, 26, 7);
insert into TBLOPENSUBJECT 
values(14, to_date('2021-07-08','yyyy-mm-dd') + 30,  to_date('2021-07-08','yyyy-mm-dd') + 46, 18, 7);
insert into TBLOPENSUBJECT 
values(15, to_date('2021-07-08','yyyy-mm-dd') + 47,  to_date('2021-07-08','yyyy-mm-dd') + 62, 53, 7);
insert into TBLOPENSUBJECT 
values(16, to_date('2021-07-08','yyyy-mm-dd') + 63,  to_date('2021-07-08','yyyy-mm-dd') + 90, 7, 7);
insert into TBLOPENSUBJECT 
values(17, to_date('2021-07-08','yyyy-mm-dd') + 91,  to_date('2021-07-08','yyyy-mm-dd') + 113, 58, 7);
insert into TBLOPENSUBJECT 
values(18, to_date('2021-07-08','yyyy-mm-dd') + 114,  to_date('2021-07-08','yyyy-mm-dd') + 120, 74, 7);


--과정 8
insert into TBLOPENSUBJECT 
values(seq_tblopensubject.nextval, '2021-07-28',  to_date('2021-07-28','yyyy-mm-dd') + 29, 84, 8);
insert into TBLOPENSUBJECT 
values(seq_tblopensubject.nextval, to_date('2021-07-28','yyyy-mm-dd') + 30,  to_date('2021-07-28','yyyy-mm-dd') + 46, 93, 8);
insert into TBLOPENSUBJECT 
values(seq_tblopensubject.nextval, to_date('2021-07-28','yyyy-mm-dd') + 47,  to_date('2021-07-28','yyyy-mm-dd') + 62, 77, 8);
insert into TBLOPENSUBJECT 
values(seq_tblopensubject.nextval, to_date('2021-07-28','yyyy-mm-dd') + 63,  to_date('2021-07-28','yyyy-mm-dd') + 90, 80, 8);
insert into TBLOPENSUBJECT 
values(seq_tblopensubject.nextval, to_date('2021-07-28','yyyy-mm-dd') + 91,  to_date('2021-07-28','yyyy-mm-dd') + 105, 66, 8); --15일
insert into TBLOPENSUBJECT 
values(seq_tblopensubject.nextval, to_date('2021-07-28','yyyy-mm-dd') + 107,  to_date('2021-07-28','yyyy-mm-dd') + 120, 57, 8); -- 15일


--과정 9
insert into TBLOPENSUBJECT
values (SEQ_TBLOPENSUBJECT.nextval, '2021-09-30', to_date('2021-09-30', 'yyyy-mm-dd') + 29, 78, 9);
insert into TBLOPENSUBJECT
values (SEQ_TBLOPENSUBJECT.nextval, to_date('2021-09-30', 'yyyy-mm-dd') + 30, to_date('2021-09-30', 'yyyy-mm-dd') + 46, 90, 9);
insert into TBLOPENSUBJECT
values (SEQ_TBLOPENSUBJECT.nextval, to_date('2021-09-30', 'yyyy-mm-dd') + 47, to_date('2021-09-30', 'yyyy-mm-dd') + 62, 77, 9);
insert into TBLOPENSUBJECT
values (SEQ_TBLOPENSUBJECT.nextval, to_date('2021-09-30', 'yyyy-mm-dd') + 63, to_date('2021-09-30', 'yyyy-mm-dd') + 90, 83, 9);
insert into TBLOPENSUBJECT
values (SEQ_TBLOPENSUBJECT.nextval, to_date('2021-09-30', 'yyyy-mm-dd') + 91, to_date('2021-09-30', 'yyyy-mm-dd') + 105, 5, 9);
insert into TBLOPENSUBJECT
values (SEQ_TBLOPENSUBJECT.nextval, to_date('2021-09-30', 'yyyy-mm-dd') + 106, to_date('2021-09-30', 'yyyy-mm-dd') + 115, 62, 9);


--과정 10
insert into TBLOPENSUBJECT
values (SEQ_TBLOPENSUBJECT.nextval, ' 2021-11-02', to_date(' 2021-11-02', 'yyyy-mm-dd') + 29, 88, 10);
insert into TBLOPENSUBJECT
values (SEQ_TBLOPENSUBJECT.nextval, to_date('2021-11-02', 'yyyy-mm-dd') + 30, to_date(' 2021-11-02', 'yyyy-mm-dd') + 46,  76, 10);
insert into TBLOPENSUBJECT
values (SEQ_TBLOPENSUBJECT.nextval, to_date('2021-11-02', 'yyyy-mm-dd') + 47, to_date(' 2021-11-02', 'yyyy-mm-dd') + 62,  79, 10);
insert into TBLOPENSUBJECT
values (SEQ_TBLOPENSUBJECT.nextval, to_date('2021-11-02', 'yyyy-mm-dd') + 63, to_date(' 2021-11-02', 'yyyy-mm-dd') + 90,  87, 10);
insert into TBLOPENSUBJECT
values (SEQ_TBLOPENSUBJECT.nextval, to_date('2021-11-02', 'yyyy-mm-dd') + 91, to_date(' 2021-11-02', 'yyyy-mm-dd') + 98,  73, 10);
insert into TBLOPENSUBJECT
values (SEQ_TBLOPENSUBJECT.nextval, to_date('2021-11-02', 'yyyy-mm-dd') + 99, to_date(' 2021-11-02', 'yyyy-mm-dd') + 118, 13, 10);


--과정 11
insert into TBLOPENSUBJECT
values (SEQ_TBLOPENSUBJECT.nextval, '2021-12-01', to_date('2021-12-01', 'yyyy-mm-dd') + 29, 26, 11);
insert into TBLOPENSUBJECT
values (SEQ_TBLOPENSUBJECT.nextval, to_date('2021-12-01', 'yyyy-mm-dd') + 30, to_date('2021-12-01', 'yyyy-mm-dd') + 46, 85, 11);
insert into TBLOPENSUBJECT
values (SEQ_TBLOPENSUBJECT.nextval, to_date('2021-12-01', 'yyyy-mm-dd') + 47, to_date('2021-12-01', 'yyyy-mm-dd') + 62, 82, 11);
insert into TBLOPENSUBJECT
values (SEQ_TBLOPENSUBJECT.nextval, to_date('2021-12-01', 'yyyy-mm-dd') + 63, to_date('2021-12-01', 'yyyy-mm-dd') + 90, 42, 11);
insert into TBLOPENSUBJECT
values (SEQ_TBLOPENSUBJECT.nextval, to_date('2021-12-01', 'yyyy-mm-dd') + 91, to_date('2021-12-01', 'yyyy-mm-dd') + 113,  2, 11);
insert into TBLOPENSUBJECT
values (SEQ_TBLOPENSUBJECT.nextval, to_date('2021-12-01', 'yyyy-mm-dd') + 114, to_date('2021-12-01', 'yyyy-mm-dd') + 127, 23, 11);


--과정 12
insert into TBLOPENSUBJECT
values (13, '2020-01-05', to_date('2020-01-05', 'yyyy-mm-dd') + 29, 75, 12);
insert into TBLOPENSUBJECT
values (14, to_date('2020-01-05', 'yyyy-mm-dd') + 30, to_date('2020-01-05', 'yyyy-mm-dd') + 46, 93, 12);
insert into TBLOPENSUBJECT
values (15, to_date('2020-01-05', 'yyyy-mm-dd') + 47, to_date('2020-01-05', 'yyyy-mm-dd') + 62, 86, 12);
insert into TBLOPENSUBJECT
values (16, to_date('2020-01-05', 'yyyy-mm-dd') + 63, to_date('2020-01-05', 'yyyy-mm-dd') + 90, 91, 12);
insert into TBLOPENSUBJECT
values (17, to_date('2020-01-05', 'yyyy-mm-dd') + 91, to_date('2020-01-05', 'yyyy-mm-dd') + 97, 73, 12);
insert into TBLOPENSUBJECT
values (18, to_date('2020-01-05', 'yyyy-mm-dd') + 98, to_date('2020-01-05', 'yyyy-mm-dd') + 102, 41, 12);


--과정 13
insert into TBLOPENSUBJECT
values (13, '2020-02-08', to_date('2020-02-08', 'yyyy-mm-dd') + 29, 89, 13);
insert into TBLOPENSUBJECT
values (14, to_date('2020-02-08', 'yyyy-mm-dd') + 30, to_date('2020-02-08', 'yyyy-mm-dd') + 46, 18, 13);
insert into TBLOPENSUBJECT
values (15, to_date('2020-02-08', 'yyyy-mm-dd') + 47, to_date('2020-02-08', 'yyyy-mm-dd') + 62, 82, 13);
insert into TBLOPENSUBJECT
values (16, to_date('2020-02-08', 'yyyy-mm-dd') + 63, to_date('2020-02-08', 'yyyy-mm-dd') + 90, 7, 13);
insert into TBLOPENSUBJECT
values (17, to_date('2020-02-08', 'yyyy-mm-dd') + 91, to_date('2020-02-08', 'yyyy-mm-dd') + 95, 68, 13);
insert into TBLOPENSUBJECT
values (18, to_date('2020-02-08', 'yyyy-mm-dd') + 96, to_date('2020-02-08', 'yyyy-mm-dd') + 118, 58, 13);


--과정14
insert into TBLOPENSUBJECT
values (13, '2020-03-29', to_date('2020-03-29', 'yyyy-mm-dd') + 29, 84, 14);
insert into TBLOPENSUBJECT
values (14, to_date('2020-03-29', 'yyyy-mm-dd') + 30, to_date('2020-03-29', 'yyyy-mm-dd') + 46, 76, 14);
insert into TBLOPENSUBJECT
values (15, to_date('2020-03-29', 'yyyy-mm-dd') + 47, to_date('2020-03-29', 'yyyy-mm-dd') + 62, 92, 14);
insert into TBLOPENSUBJECT
values (16, to_date('2020-03-29', 'yyyy-mm-dd') + 63, to_date('2020-03-29', 'yyyy-mm-dd') + 90, 80, 14);
insert into TBLOPENSUBJECT
values (17, to_date('2020-03-29', 'yyyy-mm-dd') + 91, to_date('2020-03-29', 'yyyy-mm-dd') + 97, 74, 14);
insert into TBLOPENSUBJECT
values (18, to_date('2020-03-29', 'yyyy-mm-dd') + 98, to_date('2020-03-29', 'yyyy-mm-dd') + 106, 10, 14);


--과정 15
insert into TBLOPENSUBJECT 
values(SEQ_TBLOPENSUBJECT.nextval, '2020-04-12',  to_date('2020-04-12','yyyy-mm-dd') + 29, 78, 15);
insert into TBLOPENSUBJECT 
values(SEQ_TBLOPENSUBJECT.nextval, to_date('2020-04-12','yyyy-mm-dd') + 30,  to_date('2020-04-12','yyyy-mm-dd') + 46, 90, 15);
insert into TBLOPENSUBJECT 
values(SEQ_TBLOPENSUBJECT.nextval, to_date('2020-04-12','yyyy-mm-dd') + 47,  to_date('2020-04-12','yyyy-mm-dd') + 62, 77, 15);
insert into TBLOPENSUBJECT 
values(SEQ_TBLOPENSUBJECT.nextval, to_date('2020-04-12','yyyy-mm-dd') + 63,  to_date('2020-04-12','yyyy-mm-dd') + 90, 83, 15);
insert into TBLOPENSUBJECT 
values(SEQ_TBLOPENSUBJECT.nextval, to_date('2020-04-12','yyyy-mm-dd') + 91,  to_date('2020-04-12','yyyy-mm-dd') + 109, 63, 15);
insert into TBLOPENSUBJECT
values(SEQ_TBLOPENSUBJECT.nextval, to_date('2020-04-12','yyyy-mm-dd') + 110,  to_date('2020-04-12','yyyy-mm-dd') + 139, 32, 15);


-- 과정 16
insert into TBLOPENSUBJECT
values (6, '2020-05-28', to_date('2020-05-28', 'yyyy-mm-dd') + 29, 26, 16);
insert into TBLOPENSUBJECT
values (7, to_date('2020-05-28', 'yyyy-mm-dd') + 30, to_date('2020-05-28', 'yyyy-mm-dd') + 46, 18, 16);
insert into TBLOPENSUBJECT
values (8, to_date('2020-05-28', 'yyyy-mm-dd') + 47, to_date('2020-05-28', ' yyyy-mm-dd') + 62, 53, 16);
insert into TBLOPENSUBJECT
values (9, to_date('2020-05-28', 'yyyy-mm-dd') + 63, to_date('2020-05-28', ' yyyy-mm-dd') + 90, 7, 16);
insert into TBLOPENSUBJECT
values (10, to_date('2020-05-28', 'yyyy-mm-dd') + 91, to_date('2020-05-28', ' yyyy-mm-dd') + 110, 13, 16);
insert into TBLOPENSUBJECT
values (11, to_date('2020-05-28', 'yyyy-mm-dd') + 111, to_date('2020-05-28', ' yyyy-mm-dd') + 115, 16, 16);
insert into TBLOPENSUBJECT
values (12, to_date('2020-05-28', 'yyyy-mm-dd') + 116, to_date('2020-05-28', ' yyyy-mm-dd') + 120, 35, 16);


--과정 17
insert into TBLOPENSUBJECT 
values(SEQ_TBLOPENSUBJECT.nextval, '2020-06-01',  to_date('2020-04-01','yyyy-mm-dd') + 29, 75, 17);
insert into TBLOPENSUBJECT 
values(SEQ_TBLOPENSUBJECT.nextval, to_date('2020-06-01','yyyy-mm-dd') + 30,  to_date('2020-06-01','yyyy-mm-dd') + 46, 19, 17);
insert into TBLOPENSUBJECT 
values(SEQ_TBLOPENSUBJECT.nextval, to_date('2020-06-01','yyyy-mm-dd') + 47,  to_date('2020-06-01','yyyy-mm-dd') + 62, 86, 17);
insert into TBLOPENSUBJECT 
values(SEQ_TBLOPENSUBJECT.nextval, to_date('2020-06-01','yyyy-mm-dd') + 63,  to_date('2020-06-01','yyyy-mm-dd') + 90, 42, 17);
insert into TBLOPENSUBJECT 
values(SEQ_TBLOPENSUBJECT.nextval, to_date('2020-06-01','yyyy-mm-dd') + 91,  to_date('2020-06-01','yyyy-mm-dd') + 103, 55, 17);
insert into TBLOPENSUBJECT 
values(SEQ_TBLOPENSUBJECT.nextval, to_date('2020-06-01','yyyy-mm-dd') + 104,  to_date('2020-06-01','yyyy-mm-dd') + 118, 23, 17);



--개설된 과목 주말 제외 날짜 계산 수정
declare
    idx       number := 0;
    initdate  date   := to_date('2020-05-08', 'yyyy-mm-dd');
    startdate date   := to_date('2020-05-08', 'yyyy-mm-dd');
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
    --     update TBLOPENSUBJECT
--     set subjectstart = (select subjectend + 1 from tblopensubject where opensubjectseq = 17),
--         subjectend   = startdate
--     where opensubjectseq = 18;
    update TBLOPENSUBJECT
    set subjectstart = initdate,
        subjectend   = startdate
    where opensubjectseq = 13;
end;


