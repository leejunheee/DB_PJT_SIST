-- 교사 tblTeacher

-- 교사번호 teacherSeq
-- 교사이름 teacherName
-- 주민번호뒷자리 password
-- 전화번호 teacherTel
-- 강의진행대기 status



select * from TBLTEACHER;
-- 체제원 곽우신 이응수 이창익 박세인 이규미 김호진 김현룡 김대기 서영학 한장희 임정훈

insert into tblteacher(TEACHERSEQ, TEACHERNAME, PASSWORD, TEACHERTEL, STATUS)
values (SEQ_TBLTEACHER.nextval, '체제원', 1708219, '010-3575-1687', '진행');
insert into tblteacher(TEACHERSEQ, TEACHERNAME, PASSWORD, TEACHERTEL, STATUS)
values (SEQ_TBLTEACHER.nextval, '곽우신', 1354776, '010-2184-3571', '진행');
insert into tblteacher(TEACHERSEQ, TEACHERNAME, PASSWORD, TEACHERTEL, STATUS)
values (SEQ_TBLTEACHER.nextval, '이응수', 1123571, '010-1567-8462', '진행');
insert into tblteacher(TEACHERSEQ, TEACHERNAME, PASSWORD, TEACHERTEL, STATUS)
values (SEQ_TBLTEACHER.nextval, '이창익', 1135159, '010-2154-4869', '진행');
insert into tblteacher(TEACHERSEQ, TEACHERNAME, PASSWORD, TEACHERTEL, STATUS)
values (SEQ_TBLTEACHER.nextval, '박세인', 1657812, '010-3548-1867', '진행');
insert into tblteacher(TEACHERSEQ, TEACHERNAME, PASSWORD, TEACHERTEL, STATUS)
values (SEQ_TBLTEACHER.nextval, '이규미', 2651579, '010-6157-6818', '진행');
insert into tblteacher(TEACHERSEQ, TEACHERNAME, PASSWORD, TEACHERTEL, STATUS)
values (SEQ_TBLTEACHER.nextval, '김호진', 1165374, '010-6151-1651', '대기');
insert into tblteacher(TEACHERSEQ, TEACHERNAME, PASSWORD, TEACHERTEL, STATUS)
values (SEQ_TBLTEACHER.nextval, '김현룡', 1313575, '010-0357-0847', '대기');
insert into tblteacher(TEACHERSEQ, TEACHERNAME, PASSWORD, TEACHERTEL, STATUS)
values (SEQ_TBLTEACHER.nextval, '김대기', 1846089, '010-9084-9804', '대기');
insert into tblteacher(TEACHERSEQ, TEACHERNAME, PASSWORD, TEACHERTEL, STATUS)
values (SEQ_TBLTEACHER.nextval, '한장희', 1984048, '010-1687-2471', '대기');

