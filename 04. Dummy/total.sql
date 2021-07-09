
-- 관리자
insert into admin
values (seq_admin.nextval, '김정은');
insert into admin
values (seq_admin.nextval, '김형래');
insert into admin
values (seq_admin.nextval, '이준희');
insert into admin
values (seq_admin.nextval, '문지원');
insert into admin
values (seq_admin.nextval, '방수빈');


--opensubject 개설된 과목
select *
from TBLOPENSUBJECT;
insert into tblopensubject
values (SEQ_TBLOPENSUBJECT.nextval, to_date('2021-01-05', 'yyyy-mm-dd'),
        to_date('2021-01-05', 'yyyy-mm-dd') + 29, 6, 1);
insert into tblopensubject
values (SEQ_TBLOPENSUBJECT.nextval, to_date('2021-01-05', 'yyyy-mm-dd') + 30,
        to_date('2021-01-05', 'yyyy-mm-dd') + 46, 10, 1);
insert into tblopensubject
values (SEQ_TBLOPENSUBJECT.nextval, to_date('2021-01-05', 'yyyy-mm-dd') + 47,
        to_date('2021-01-05', 'yyyy-mm-dd') + 63, 49, 1);
insert into tblopensubject
values (SEQ_TBLOPENSUBJECT.nextval, to_date('2021-01-05', 'yyyy-mm-dd') + 64,
        to_date('2021-01-05', 'yyyy-mm-dd') + 91, 50, 1);
insert into tblopensubject
values (SEQ_TBLOPENSUBJECT.nextval, to_date('2021-01-05', 'yyyy-mm-dd') + 92,
        to_date('2021-01-05', 'yyyy-mm-dd') + 120, 36, 1);


-- 개설된 과정
insert into TBLOPENCOURSE(OPENCOURSESEQ, COURSESTATE, OPENSUBJECTREGISTER, STUDENTREGISTER, COURSESTART, COURSEEND,
                          COURSESEQ, CLASSROOMSEQ)
values (SEQ_TBLOPENCOURSE.nextval, '강의중', '등록', 30, to_date('2021-01-05', 'yyyy-mm-dd'),
        add_months(to_date('2021-01-05', 'yyyy-mm-dd'), 6),
        1, 1);


-- 과정
INSERT INTO TBLCOURSE (courseseq, coursename, courseTerm)
VALUES (SEQ_TBLCOURSE.nextval, 'JAVA 기반의 스마트 웹 앱콘텐츠 양성과정', 6); --7
INSERT INTO TBLCOURSE (courseseq, coursename, courseTerm)
VALUES (SEQ_TBLCOURSE.nextval, 'Python & Java 응용SW실무개발자 양성과정', 6); --1
INSERT INTO TBLCOURSE (courseseq, coursename, courseTerm)
VALUES (SEQ_TBLCOURSE.nextval, 'Framework 기반의 빅데이터 활용 응용프로그래머 양성과정', 6); --5
INSERT INTO TBLCOURSE (courseseq, coursename, courseTerm)
VALUES (SEQ_TBLCOURSE.nextval, '자바 기반 융합형 SW개발자 양성과정', 7);
INSERT INTO TBLCOURSE (courseseq, coursename, courseTerm)
VALUES (SEQ_TBLCOURSE.nextval, 'Python And Java를 활용한 AI 텍스트마이닝 개발자 양성과정', 7); --8
INSERT INTO TBLCOURSE (courseseq, coursename, courseTerm)
VALUES (SEQ_TBLCOURSE.nextval, '빅데이터를 활용한 지능형 웹 콘텐츠 개발자 양성과정', 6); --10
INSERT INTO TBLCOURSE (courseseq, coursename, courseTerm)
VALUES (SEQ_TBLCOURSE.nextval, 'Java And JavaScript library를 활용한 반응형 웹 개발자 양성과정', 5.5); --9
INSERT INTO TBLCOURSE (courseseq, coursename, courseTerm)
VALUES (SEQ_TBLCOURSE.nextval, 'Java를 활용한 웹 응용SW개발자 양성과정', 5.5); --4
INSERT INTO TBLCOURSE (courseseq, coursename, courseTerm)
VALUES (SEQ_TBLCOURSE.nextval, '파이썬과 자바를 연계한 머신러닝 활용 개발자 양성과정', 5.5); --2
INSERT INTO TBLCOURSE (courseseq, coursename, courseTerm)
VALUES (SEQ_TBLCOURSE.nextval, '웹기반 빅데이터 분석 응용SW개발자 양성과정', 7); --3
INSERT INTO TBLCOURSE (courseseq, coursename, courseTerm)
VALUES (SEQ_TBLCOURSE.nextval, 'Java And Python 기반 응용SW개발자 양성과정', 5.5);

-- 강의실
insert into tblclassroom
values (SEQ_TBLCLASSROOM.nextval, '1강의실', 30);
insert into tblclassroom
values (SEQ_TBLCLASSROOM.nextval, '2강의실', 30);
insert into tblclassroom
values (SEQ_TBLCLASSROOM.nextval, '3강의실', 30);
insert into tblclassroom
values (SEQ_TBLCLASSROOM.nextval, '4강의실', 26);
insert into tblclassroom
values (SEQ_TBLCLASSROOM.nextval, '5강의실', 26);
insert into tblclassroom
values (SEQ_TBLCLASSROOM.nextval, '6강의실', 26);


-- 교재
INSERT INTO tblBook(bookseq, bookname, publishername)
VALUES (seq_tblBook.nextval, '이것이 자바다', '한빛미디어'); -- 객체지향과 Java SE
INSERT INTO tblBook(bookseq, bookname, publishername)
VALUES (seq_tblBook.nextval, '오라클 SQL과 PL/SQL', '생능출판사'); -- 관계형 데이터베이스
INSERT INTO tblBook(bookseq, bookname, publishername)
VALUES (seq_tblBook.nextval, '최범균의 JSP 2.3 웹 프로그래밍 : 기초부터 중급까지', '가메출판사'); -- 웹 개발 프로그래밍
INSERT INTO tblBook(bookseq, bookname, publishername)
VALUES (seq_tblBook.nextval, 'Java의 정석 3rd Edition', '도우출판'); -- Java Testing
INSERT INTO tblBook(bookseq, bookname, publishername)
VALUES (seq_tblBook.nextval, '요구사항 확인 모듈교재', '한국출판사'); -- 요구사항 분석 및 설계
INSERT INTO tblBook(bookseq, bookname, publishername)
VALUES (seq_tblBook.nextval, 'UI구현 및 테스트 모듈교재', '한국출판사'); -- UI설계 및 구현
INSERT INTO tblBook(bookseq, bookname, publishername)
VALUES (seq_tblBook.nextval, '애플리케이션 통합구현 모듈교재', '한국출판사'); -- 애플리케이션 구현
INSERT INTO tblBook(bookseq, bookname, publishername)
VALUES (seq_tblBook.nextval, '애플리케이션 테스트 수행 모듈교재', '한국출판사'); -- 애플리케이션 테스트
INSERT INTO tblBook(bookseq, bookname, publishername)
VALUES (seq_tblBook.nextval, '애플리케이션 배포 모듈교재', '한국출판사'); -- 애플리케이션 배포

INSERT INTO tblBook(bookseq, bookname, publishername)
VALUES (seq_tblBook.nextval, '깔끔한 파이썬 탄탄한 백엔드', '비제이퍼블릭'); -- Back-end 개발
INSERT INTO tblBook(bookseq, bookname, publishername)
VALUES (seq_tblBook.nextval, 'Do it! 점프 투 파이썬', '이지스퍼블리싱'); -- python 프로그래밍
INSERT INTO tblBook(bookseq, bookname, publishername)
VALUES (seq_tblBook.nextval, '모던 웹을 위한 JavaScript + jQuery 입문', '한빛미디어'); -- Server/Client side 프로젝트, 제이쿼리 모바일
INSERT INTO tblBook(bookseq, bookname, publishername)
VALUES (seq_tblBook.nextval, 'Do it! HTML5+CSS3 웹 표준의 정석', '이지스퍼블리싱'); -- 웹 서버 구축 실무(HTML5, CSS5), 웹 클라이언트 프로그래밍(HTML5, CSS)
INSERT INTO tblBook(bookseq, bookname, publishername)
VALUES (seq_tblBook.nextval, '오준석의 안드로이드 생존코딩 코틀린 편', '한빛미디어'); -- 코틀린 프로그래밍, 코틀린 안드로이드 프로그램 구현
INSERT INTO tblBook(bookseq, bookname, publishername)
VALUES (seq_tblBook.nextval, '지능형 웹 알고리즘', '워커북스'); -- 지능형 웹 개발, 지능형 웹과 빅데이터 통합 프로젝트
INSERT INTO tblBook(bookseq, bookname, publishername)
VALUES (seq_tblBook.nextval, '초보 웹 개발자를 위한 스프링5 프로그래밍 입문', '가메출판사'); -- Spring 개발, Spring Framework 통합 구현, framework(myBATIS, Spring)
INSERT INTO tblBook(bookseq, bookname, publishername)
VALUES (seq_tblBook.nextval, 'Do it! 반응형 웹 만들기 실무자가 꼭 알아야 할 최신 반응형 웹 기술을 한 권에!',
        '이지스퍼블리싱'); -- 반응형 웹 사이트 만들기, 반응형 웹 개발기법
INSERT INTO tblBook(bookseq, bookname, publishername)
VALUES (seq_tblBook.nextval, '차세대 웹 프로그래밍 : HTML5+CSS3+JavaScript', '한빛아카데미'); -- front-end 개발(HTML5, CSS3, JavaScript, JQuery), 웹 클라이언트 프로그래밍 (HTML, CSS3, JavaScript, JQuery)
INSERT INTO tblBook(bookseq, bookname, publishername)
VALUES (seq_tblBook.nextval, 'JSP WEB PROGRAMMING MASTER', '북스홀릭'); -- 웹 서버 프로그램 구현, 융합기반 웹표준 프로젝트
INSERT INTO tblBook(bookseq, bookname, publishername)
VALUES (seq_tblBook.nextval, 'UML로 배우는 시스템 분석 설계', '생능출판사'); -- UML을 사용한 시스템 분석, 데스크탑 UI/UX 설계, 웹킷 계열 브라우저 반응형 웹 UI/UX 설계
INSERT INTO tblBook(bookseq, bookname, publishername)
VALUES (seq_tblBook.nextval, '텐서플로를 활용한 머신러닝', '한빛미디어'); -- 파이썬을 이용한 머신러닝 분석 기술
INSERT INTO tblBook(bookseq, bookname, publishername)
VALUES (seq_tblBook.nextval, '하둡 완벽 가이드', '한빛미디어'); -- R Fundamentals Application(hadoop, Linux, R(데이터마이닝))
INSERT INTO tblBook(bookseq, bookname, publishername)
VALUES (seq_tblBook.nextval, '데이터 분석을 위한 파이썬 철저 입문[개정판]', '워커북스'); -- 빅데이터 수집, 빅데이터 분석, 빅데이터 관리와 통계, Python과 tensorflow를 사용한 데이터 분석
INSERT INTO tblBook(bookseq, bookname, publishername)
VALUES (seq_tblBook.nextval, '잡아라! 텍스트 마이닝 with 파이썬', '비제이퍼블릭'); -- 텍스트 마이닝 요구사항 분석, 텍스트 마이닝, Open API 프로젝트
INSERT INTO tblBook(bookseq, bookname, publishername)
VALUES (seq_tblBook.nextval, '스프링 5.0 마이크로서비스 2/e', '에이콘출판'); -- Spring 서버 기반의 지능형 웹과 앱 통합개발 및 구현
INSERT INTO tblBook(bookseq, bookname, publishername)
VALUES (seq_tblBook.nextval, '정보시스템 이행 모듈교재', '한국출판사');
-- 시스템 사용자 교육


-- 교사
-- [현재]
-- 1 체제원 1 3 7 11 13 16 50 25 30 42
-- 2 곽우신 1 3 4 33 24 12 44 23  10
-- 3 이응수 10  1  21 11 18 16 2 6
-- 4 이창익 32 8 16 24 27 35 37 42 48 12
-- 5 박세인 7 11 16 29 32  50 24 22 14
-- 6 이규미 23 2 5 9 14 18 23  49
--
-- [대기] 강의가능과목에만 들어가면 된다.
-- 김호진 42 12 18 23 40
-- 김현룡 22 11 13 15 43
-- 김대기 16 24 28 35 39
-- 한장희 12 16 23 29 31
-- 체제원 1 3 7 11 13 16 50 25 30 42
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 1, 1);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 1, 3);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 1, 7);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 1, 11);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 1, 13);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 1, 16);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 1, 50);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 1, 25);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 1, 30);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 1, 42);

-- 2 곽우신 1 3 4 33 24 12 44 23  10
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 2, 3);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 2, 4);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 2, 33);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 2, 24);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 2, 12);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 2, 44);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 2, 23);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 2, 10);


-- 3 이응수 10  1  21 11 18 16 2 6
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 3, 10);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 3, 1);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 3, 21);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 3, 11);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 3, 18);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 3, 16);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 3, 2);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 3, 6);

-- 4 이창익 32 8 16 24 27 36 37 42 48 12
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 4, 32);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 4, 8);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 4, 16);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 4, 24);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 4, 27);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 4, 36);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 4, 37);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 4, 42);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 4, 48);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 4, 12);
-- 5 박세인 7 11 16 29 32  50 24 22 14
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 5, 7);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 5, 11);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 5, 16);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 5, 29);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 5, 32);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 5, 50);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 5, 24);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 5, 22);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 5, 14);
-- 6 이규미 23 2 5 9 14 18 23  49
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 6, 23);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 6, 2);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 6, 5);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 6, 9);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 6, 14);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 6, 18);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 6, 23);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 6, 49);
--
-- [대기] 강의가능과목에만 들어가면 된다.
-- 7 김호진 42 12 18 23 40
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 7, 42);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 7, 12);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 7, 18);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 7, 23);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 7, 40);
-- 8 김현룡 22 11 13 15 43
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 8, 22);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 8, 11);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 8, 13);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 8, 15);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 8, 43);
-- 9 김대기 16 24 28 35 39
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 9, 16);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 9, 24);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 9, 28);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 9, 35);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 9, 39);
-- 10 한장희 12 16 23 29 31
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 10, 12);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 10, 16);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 10, 23);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 10, 29);
insert into TBLAVAILABLESUBJECT
values (SEQ_TBLAVAILABLESUBJECT.nextval, 10, 31);


-- 개설된 과정
insert into tblopensubject
values (SEQ_TBLOPENSUBJECT.nextval, to_date('2021-01-05', 'yyyy-mm-dd'),
        to_date('2021-01-05', 'yyyy-mm-dd') + 29, 6, 1);
insert into tblopensubject
values (SEQ_TBLOPENSUBJECT.nextval, to_date('2021-01-05', 'yyyy-mm-dd') + 30,
        to_date('2021-01-05', 'yyyy-mm-dd') + 46, 10, 1);
insert into tblopensubject
values (SEQ_TBLOPENSUBJECT.nextval, to_date('2021-01-05', 'yyyy-mm-dd') + 47,
        to_date('2021-01-05', 'yyyy-mm-dd') + 63, 49, 1);
insert into tblopensubject
values (SEQ_TBLOPENSUBJECT.nextval, to_date('2021-01-05', 'yyyy-mm-dd') + 64,
        to_date('2021-01-05', 'yyyy-mm-dd') + 91, 50, 1);
insert into tblopensubject
values (SEQ_TBLOPENSUBJECT.nextval, to_date('2021-01-05', 'yyyy-mm-dd') + 92,
        to_date('2021-01-05', 'yyyy-mm-dd') + 120, 36, 1);
-- 교육생
-- 교육생번호 교욱생이름 교육생주민뒷자리 교육생전화번호 교육생등록날짜 교육생수강횟수 수강상태 수료여부 수료날짜 중도탈락날짜
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '하여번', 1695125, '010-2220-2087', '2020-9-24', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '최운병', 1365010, '010-5862-3458', '2018-10-21', 0, '수강중', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '차효태', 2462724, '010-7282-9472', '2020-2-16', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '반린문', 1898467, '010-1401-6419', '2020-12-23', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '고흔길', 2438336, '010-6211-7410', '2021-7-24', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '남설누', 2428246, '010-2629-5780', '2021-3-11', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '전산화', 1256694, '010-0840-5425', '2017-9-3', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '진실공', 2641057, '010-4855-5965', '2017-2-21', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '김리달', 2960343, '010-6651-3131', '2016-7-25', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '선박훈', 2767838, '010-1588-7491', '2021-7-16', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '남출숙', 2293432, '010-2556-2129', '2021-6-30', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '유만다', 1603309, '010-3152-4501', '2018-6-20', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '남바래', 1862634, '010-8788-9002', '2019-1-7', 0, '수강중', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '방치식', 2746178, '010-0437-4917', '2021-4-14', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '노항세', 2189989, '010-1707-6685', '2019-2-14', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '임준주', 2716444, '010-1551-5417', '2018-11-9', 0, '수강중', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '추강시', 2976588, '010-6297-1474', '2018-8-7', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '임반배', 2422175, '010-7033-2726', '2021-11-22', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '노더곤', 2253373, '010-1500-0966', '2020-8-23', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '나춘시', 1734856, '010-2827-7667', '2018-4-24', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '마월노', 1101128, '010-3840-3847', '2020-3-26', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '변백한', 1483734, '010-1749-2224', '2021-5-9', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '연가루', 2750524, '010-9234-4454', '2016-1-30', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '지나량', 1216215, '010-4074-1414', '2019-4-16', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '공다직', 2172495, '010-3313-1823', '2019-3-4', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '옥모인', 1917404, '010-3588-5629', '2020-9-11', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '하번마', 2192993, '010-8137-5172', '2018-9-23', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '명강수', 2972582, '010-9777-6087', '2020-7-23', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '탁을삼', 1289524, '010-8419-9033', '2017-9-27', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '은면로', 1594103, '010-2246-1185', '2019-8-22', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '금늘직', 1622974, '010-7448-9860', '2017-8-4', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '안만온', 2564308, '010-7903-3609', '2020-2-15', 0, '수강중', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '진견빈', 1899907, '010-1104-8992', '2016-1-5', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '하수충', 2892683, '010-3277-2661', '2018-12-23', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '송혁곤', 2458562, '010-3030-6963', '2019-9-2', 0, '수강중', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '엄솜으', 1656964, '010-8328-9136', '2016-6-15', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '심지종', 1830720, '010-8734-7191', '2019-10-25', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '은휴상', 2462619, '010-2126-9587', '2016-8-26', 0, '수강중', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '조환웅', 1550989, '010-4318-2168', '2021-9-11', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '권보창', 2922723, '010-5765-0701', '2020-3-18', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '인상영', 2346746, '010-5327-3658', '2017-1-6', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '민래개', 1938216, '010-8895-5495', '2017-10-21', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '권민남', 2795738, '010-5762-5929', '2019-9-28', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '손이실', 2896484, '010-1857-4370', '2017-11-19', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '왕자중', 2521683, '010-7927-0315', '2021-12-10', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '방섭웅', 1192313, '010-8658-2027', '2021-10-21', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '진태중', 1389113, '010-6468-5697', '2018-7-24', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '권늘혁', 2465726, '010-7116-0601', '2021-5-21', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '류승으', 2547132, '010-2571-6457', '2016-10-5', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '나복택', 1149896, '010-3740-1764', '2020-6-13', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '손후온', 1480649, '010-3962-1927', '2021-8-6', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '유병요', 2500587, '010-5856-6360', '2017-1-17', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '육삼량', 1172142, '010-1750-4272', '2020-8-5', 0, '수강중', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '고명구', 2775484, '010-7961-9028', '2016-7-29', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '임숙승', 1840849, '010-6106-5448', '2018-10-12', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '모판주', 2950455, '010-5072-0487', '2019-7-17', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '소상으', 2567471, '010-7049-2697', '2019-3-12', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '옥견천', 2815662, '010-3215-3194', '2021-10-5', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '한재직', 1744286, '010-0299-2879', '2018-11-15', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '석라영', 2619977, '010-6253-9387', '2017-6-13', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '표식춘', 1838181, '010-6573-3202', '2017-11-3', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '주라인', 1508512, '010-5974-1577', '2017-10-14', 0, '수강중', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '강견하', 2100616, '010-4266-4712', '2020-2-4', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '전단한', 1796524, '010-9308-2208', '2021-7-24', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '박예애', 1095121, '010-5746-4577', '2018-11-1', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '진루병', 1717811, '010-8562-9856', '2021-11-29', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '허초권', 2851610, '010-0936-4253', '2020-8-13', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '방누공', 2402293, '010-3741-9196', '2018-6-10', 0, '수강중', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '천미덕', 1730184, '010-5178-4157', '2021-12-29', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '유욱소', 2389893, '010-8060-1096', '2017-5-2', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '명비일', 1706127, '010-2489-1258', '2021-9-1', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '채으원', 2918672, '010-0618-4719', '2016-10-25', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '강해공', 1807534, '010-8579-0100', '2018-3-22', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '왕다찬', 2450546, '010-1902-9141', '2020-6-11', 0, '수강중', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '고익송', 1799429, '010-0805-4601', '2016-8-23', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '배누송', 2433385, '010-3571-2775', '2020-10-2', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '주늘더', 2327497, '010-3826-9734', '2018-4-1', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '육가산', 2960675, '010-1360-8898', '2016-10-29', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '채준량', 2934423, '010-9805-2379', '2017-11-26', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '주잔개', 2376385, '010-5147-1264', '2020-1-7', 0, '수강중', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '정손삼', 1160001, '010-8696-2873', '2017-9-15', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '장면준', 1863169, '010-9735-8993', '2017-6-2', 0, '수강중', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '구무의', 1024009, '010-5652-0464', '2021-10-23', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '박식범', 2397403, '010-9042-2885', '2020-4-25', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '노회식', 1942033, '010-7509-9711', '2019-12-13', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '옥안범', 2412839, '010-3018-3012', '2020-1-16', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '송황추', 2848255, '010-5973-8734', '2019-9-17', 0, '수강중', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '성대식', 1762007, '010-5724-8287', '2020-5-19', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '신솜황', 2296392, '010-8018-7506', '2020-11-11', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '전환담', 2730377, '010-4807-3444', '2021-11-18', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '변빈진', 2065592, '010-8926-6900', '2017-1-3', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '천기웅', 2063166, '010-3109-7794', '2019-9-14', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '왕욱휴', 1922934, '010-1443-9519', '2021-7-7', 0, '수강중', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '홍번로', 2379461, '010-9772-4138', '2017-1-17', 0, '수강중', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '양담치', 2637530, '010-5341-9167', '2017-9-1', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '남후모', 1313533, '010-0160-3399', '2020-6-2', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '엄담휴', 2850857, '010-2891-7222', '2017-11-20', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '남리경', 1275115, '010-0661-3325', '2020-12-8', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '하로봉', 1879136, '010-8694-7367', '2017-6-14', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '육휘반', 1592423, '010-9769-1365', '2017-5-15', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '방신가', 2432422, '010-7944-1028', '2016-3-25', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '길배윤', 1351243, '010-9422-8794', '2016-12-9', 0, '수강중', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '신로휴', 2177276, '010-4099-3139', '2016-11-13', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '금손회', 1288220, '010-6354-0448', '2017-9-20', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '전하담', 1725520, '010-8158-7383', '2020-2-13', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '석후석', 2696860, '010-6063-2145', '2016-1-9', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '구리노', 1486269, '010-0480-3192', '2017-2-27', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '김중여', 1702399, '010-3555-5209', '2019-9-13', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '송단린', 2159153, '010-2184-7733', '2018-10-4', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '방무문', 1358904, '010-7173-5276', '2020-5-22', 0, '수강중', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '신솜규', 1532108, '010-2696-8656', '2020-12-17', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '우반영', 1915322, '010-7113-9743', '2018-10-2', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '맹린오', 2557139, '010-9660-1180', '2019-11-18', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '배더혁', 1175797, '010-6193-0607', '2020-8-30', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '지견춘', 1972427, '010-0934-3457', '2020-4-11', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '문열배', 1367321, '010-2295-5420', '2021-8-4', 0, '수강중', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '여향섭', 2905487, '010-7514-8286', '2016-1-3', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '우은찬', 2898226, '010-0262-1815', '2018-7-11', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '정실이', 2230156, '010-9312-3494', '2019-12-5', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '유혁자', 2058211, '010-5084-1068', '2020-4-22', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '황홍남', 2085261, '010-8294-4292', '2018-5-8', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '기새옥', 2911684, '010-0982-2099', '2019-3-25', 0, '수강중', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '장준인', 2496895, '010-6583-0320', '2016-1-23', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '임백도', 2190739, '010-2934-6193', '2019-11-3', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '유석웅', 1369397, '010-7407-5924', '2021-8-16', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '허용운', 2484216, '010-6036-0999', '2018-6-12', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '구주미', 2900770, '010-0077-8921', '2017-11-21', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '왕애동', 1634680, '010-7889-2146', '2017-9-30', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '엄추우', 1727617, '010-4974-7541', '2021-6-12', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '심손태', 1414611, '010-5186-5046', '2019-2-20', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '전두연', 2177907, '010-6480-0007', '2016-1-16', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '마회달', 1122008, '010-8104-4140', '2018-6-26', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '주하구', 1874227, '010-3632-3461', '2020-1-16', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '류자기', 1102285, '010-2826-2547', '2020-3-3', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '왕새한', 1656351, '010-7965-7333', '2021-5-25', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '심완은', 1007981, '010-0283-1538', '2021-2-1', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '공설초', 2773999, '010-9502-1320', '2017-6-16', 0, '수강중', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '신원더', 1914405, '010-8478-1535', '2021-7-18', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '반희호', 1677516, '010-0188-2074', '2016-10-4', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '공희원', 1227828, '010-7473-1856', '2020-8-22', 0, '수강중', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '강성철', 1339851, '010-4605-3171', '2016-7-2', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '남길효', 1576514, '010-1048-0269', '2019-6-24', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '강술근', 2925568, '010-9031-1501', '2018-4-14', 0, '수강중', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '주건헌', 1188155, '010-0335-7312', '2017-7-26', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '전연혜', 2283593, '010-2401-5340', '2019-12-25', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '진안세', 2281944, '010-3867-1442', '2020-7-23', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '변철소', 2577897, '010-8608-7803', '2016-4-29', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '남분부', 1944170, '010-1292-8192', '2018-12-5', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '손희요', 1026985, '010-0293-4183', '2021-1-28', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '양가천', 1576837, '010-2549-3038', '2021-7-21', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '연항고', 2077759, '010-7053-7300', '2018-11-16', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '심치후', 1661129, '010-7216-9057', '2020-12-9', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '이단으', 2938780, '010-3169-5232', '2018-1-29', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '강형회', 2633423, '010-3109-1226', '2017-4-16', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '진으시', 2239607, '010-7473-0193', '2020-6-22', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '설공혁', 2231781, '010-0676-0824', '2018-7-12', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '신이월', 2297448, '010-3590-2302', '2017-12-17', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '도인경', 2159465, '010-7508-7041', '2021-4-18', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '석동산', 2047215, '010-8926-6630', '2016-10-28', 0, '수강중', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '우형면', 2476885, '010-9428-1171', '2021-11-6', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '나휘신', 2016797, '010-6886-5729', '2018-7-5', 0, '수강중', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '옥출치', 1091875, '010-9553-9775', '2021-7-15', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '진이연', 2092409, '010-3576-5414', '2017-2-10', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '유성늘', 2299889, '010-8205-8956', '2019-6-26', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '정늘판', 1571092, '010-7995-1758', '2019-6-27', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '선항관', 1289424, '010-0966-3863', '2019-5-29', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '장항환', 1748391, '010-2833-7471', '2016-9-8', 0, '수강중', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '한가애', 1991263, '010-5600-5583', '2016-8-16', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '민대노', 2811383, '010-1074-5119', '2020-5-26', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '명충덕', 1057580, '010-6501-3099', '2017-2-7', 0, '수강중', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '조효빈', 1731142, '010-9898-1754', '2019-8-1', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '남부예', 2720613, '010-0918-0260', '2018-7-7', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '엄린솜', 2726951, '010-7656-7444', '2018-7-7', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '성솜성', 2951699, '010-1727-1296', '2016-12-24', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '조휘효', 2710568, '010-6255-8671', '2021-7-2', 0, '수강중', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '변기황', 1512134, '010-4870-2262', '2016-10-23', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '정권은', 2216697, '010-3677-0350', '2020-4-11', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '차분견', 2542909, '010-2056-0531', '2019-5-4', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '명빈남', 1234943, '010-4194-8003', '2020-10-29', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '신병호', 1959425, '010-5238-7809', '2019-8-29', 0, '수강중', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '방디헌', 1181757, '010-0372-9696', '2019-7-24', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '홍철수', 2091024, '010-4926-7082', '2016-9-29', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '모창후', 1807258, '010-2605-0075', '2018-2-12', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '채신의', 2686160, '010-0188-1882', '2021-10-5', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '선슬홍', 1931638, '010-9531-9412', '2016-8-6', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '강식상', 1188131, '010-0169-4744', '2018-10-4', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '배형빈', 2974173, '010-0544-8533', '2016-2-24', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '김새제', 2702461, '010-9043-6094', '2017-9-8', 0, '수강중', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '추수광', 2222679, '010-6276-1267', '2020-3-30', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '은서삼', 1512729, '010-4161-1823', '2020-1-10', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '남진산', 1607221, '010-0190-2623', '2016-9-9', 0, '수강중', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '곽번양', 2177671, '010-3450-9258', '2021-12-11', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '윤란향', 2868434, '010-9139-9656', '2016-5-22', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '차미이', 2254358, '010-6067-6607', '2019-9-5', 0, '수강중', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '오공엄', 2903199, '010-1180-1048', '2020-7-7', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '구석규', 2548979, '010-0505-6151', '2016-6-30', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '고예권', 1776265, '010-9601-8776', '2017-5-28', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '진고예', 2468383, '010-2208-4961', '2018-4-2', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '인라익', 1763495, '010-7869-0635', '2018-3-7', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '백준성', 1748320, '010-7505-8980', '2019-11-27', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '전주근', 2058924, '010-8308-1220', '2021-1-8', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '차누숭', 2793695, '010-6471-5453', '2017-9-2', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '천라고', 1613007, '010-2336-4379', '2021-6-18', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '신숙시', 2564472, '010-3917-4673', '2016-1-4', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '김견은', 2922665, '010-6281-5346', '2018-4-15', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '오무명', 1152792, '010-4403-9606', '2021-4-14', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '백슬장', 2128356, '010-9886-0538', '2019-4-20', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '서세술', 2710781, '010-9960-8031', '2018-7-6', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '류로량', 2775318, '010-2964-0294', '2016-9-28', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '현길화', 2757550, '010-1233-4430', '2021-11-20', 0, '수강중', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '김손부', 2683996, '010-7259-4798', '2020-4-16', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '백가장', 2227725, '010-2273-3032', '2016-4-21', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '유노으', 1539107, '010-4054-7457', '2021-8-11', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '백한판', 1859345, '010-3404-7749', '2016-12-1', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '명웅다', 1124699, '010-2037-6001', '2019-2-8', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '고옥잔', 1458229, '010-9928-4293', '2021-6-8', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '금자삼', 2205036, '010-4414-7109', '2021-9-19', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '곽자인', 2865146, '010-9818-1734', '2018-4-12', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '한소마', 1315302, '010-7961-3236', '2017-7-30', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '천홍선', 1055644, '010-7711-9257', '2017-11-5', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '성래화', 1268457, '010-2812-7243', '2017-12-9', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '진새래', 2518307, '010-5907-9653', '2020-1-3', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '전민홍', 2323351, '010-9430-4040', '2021-4-29', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '민리완', 2513338, '010-0960-3721', '2020-5-18', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '채전서', 2534437, '010-5507-3229', '2016-7-21', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '방담솔', 1845623, '010-1076-8730', '2016-5-10', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '신도섭', 1679893, '010-9052-0055', '2020-7-24', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '반을욱', 1383350, '010-4244-4349', '2021-1-7', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '원예바', 1443181, '010-9834-1503', '2019-12-15', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '방예빈', 1653872, '010-4840-2475', '2018-11-20', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '장건고', 1774928, '010-5372-4033', '2019-6-23', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '고홍미', 1712560, '010-9140-0548', '2017-4-16', 0, '수강중', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '강설오', 1573929, '010-5667-5616', '2020-8-18', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '선익타', 1897434, '010-4775-7017', '2020-2-13', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '강하이', 2500886, '010-4161-3119', '2021-3-29', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '곽솔재', 2564248, '010-4870-8628', '2016-12-5', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '강으전', 1822173, '010-8953-6335', '2017-11-26', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '전하찬', 1986744, '010-6905-9318', '2017-2-10', 0, '수강중', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '안송미', 2946360, '010-1451-7094', '2016-9-23', 0, '수강중', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '노춘모', 1883966, '010-0889-6552', '2018-8-13', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '장일석', 1608240, '010-4616-0435', '2016-7-7', 0, '수강중', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '주라오', 2712013, '010-1225-4001', '2019-11-19', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '홍미승', 2171180, '010-4902-7283', '2018-1-16', 0, '수강중', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '선상무', 2631271, '010-3422-2027', '2019-5-22', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '윤율래', 2349779, '010-1705-6162', '2016-9-9', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '염안태', 1415308, '010-8183-0712', '2018-8-7', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '류운엄', 2285554, '010-8832-6512', '2018-9-27', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '지열환', 2958852, '010-6538-7668', '2020-7-11', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '유솔면', 2224291, '010-8721-8973', '2016-12-17', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '홍린익', 1922913, '010-5590-8783', '2021-3-7', 0, '수강중', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '우항직', 1482986, '010-3344-9217', '2019-6-30', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '기완탁', 2246349, '010-7858-3517', '2016-3-8', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '성완타', 2529160, '010-4901-8125', '2019-1-25', 0, '수강중', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '신예전', 1043065, '010-6767-6277', '2021-4-8', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '조주개', 2595563, '010-4094-7846', '2018-10-1', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '설으로', 1854052, '010-0254-8311', '2020-2-4', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '기술명', 1011667, '010-2747-8753', '2021-9-19', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '임경열', 1452985, '010-8907-7337', '2018-6-24', 0, '수강중', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '전초동', 2950962, '010-7610-2698', '2020-9-7', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '허담운', 2388917, '010-4288-0171', '2019-11-22', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '유섭건', 1582811, '010-9322-6379', '2017-9-26', 0, '수강중', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '하견효', 1400002, '010-8723-5789', '2021-6-29', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '염연담', 1859382, '010-7568-8734', '2017-5-5', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '성슬월', 2581921, '010-1491-5086', '2021-6-15', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '문대무', 1226324, '010-9566-7458', '2019-1-23', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '허다아', 1210695, '010-4535-9048', '2021-5-11', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '윤월구', 2640685, '010-5916-4655', '2019-12-15', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '엄욱탁', 2555778, '010-0429-2868', '2018-6-12', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '엄인혁', 1030807, '010-8308-8189', '2021-8-18', 0, '수강중', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '방휘제', 2605335, '010-5271-2155', '2021-6-23', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '마자관', 2789630, '010-9161-9144', '2017-9-6', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '고애전', 1242383, '010-7070-3985', '2018-12-21', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '정별원', 1575375, '010-3511-6497', '2018-2-14', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '왕두복', 1312319, '010-2447-4159', '2021-10-3', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '나운충', 1366490, '010-6845-7651', '2021-4-5', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '박양민', 1089389, '010-9292-2042', '2016-5-6', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '전규항', 2916633, '010-6573-1344', '2020-10-9', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '탁가병', 2226303, '010-1837-7629', '2016-8-1', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '홍헌원', 2326011, '010-2758-5609', '2019-11-25', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '남양온', 1291589, '010-3109-7337', '2016-7-29', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '강판익', 2236076, '010-6594-8713', '2021-2-8', 0, '수강중', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '왕으경', 1974822, '010-1202-6003', '2016-2-17', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '민설전', 2261081, '010-8656-8609', '2017-10-6', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '전나리', 2824790, '010-7665-2216', '2018-6-22', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '민아늘', 1808037, '010-3889-4805', '2018-11-8', 0, '수강중', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '진가장', 1462180, '010-3548-5838', '2017-1-18', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '도정래', 2125565, '010-2549-8033', '2018-3-26', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '육비사', 2324153, '010-3978-8414', '2020-8-10', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '신익오', 2394357, '010-7040-2733', '2018-6-25', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '구후윤', 2874488, '010-0055-2702', '2020-12-4', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '유복걸', 2468968, '010-1146-2385', '2019-10-21', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '강세향', 2321781, '010-1806-6726', '2018-4-25', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '심남별', 2222633, '010-4841-2083', '2016-12-14', 0, '수강중', '중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '탁견단', 1506178, '010-6861-8494', '2020-3-20', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '신마회', 2474982, '010-0360-5702', '2017-11-23', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '남공희', 1521119, '010-9902-5233', '2018-2-2', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '도리삼', 1561482, '010-3144-1979', '2021-5-25', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '임솜현', 2054807, '010-0557-4826', '2016-12-12', 0, '수강신청', '미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '변중근', 2762821, '010-4688-2106', '2020-4-21', 1, '수강완료', '수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL, RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS)
VALUES (SEQ_TBLSTUDENT.nextval, '진성건', 2295885, '010-5232-8791', '2016-2-19', 1, '수강완료', '수료');

-- 수강생 완료일 수정
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


-- 중도포기 생성
update tblstudent
set FAILDATE = add_months(retdate, 1)
where STUDENTSEQ = 7;
update tblstudent
set FAILDATE = add_months(retdate, 1)
where STUDENTSEQ = 9;
update tblstudent
set FAILDATE = add_months(retdate, 1)
where STUDENTSEQ = 22;
update tblstudent
set FAILDATE = add_months(retdate, 1)
where STUDENTSEQ = 24;
update tblstudent
set FAILDATE = add_months(retdate, 1)
where STUDENTSEQ = 37;
update tblstudent
set FAILDATE = add_months(retdate, 1)
where STUDENTSEQ = 40;
update tblstudent
set FAILDATE = add_months(retdate, 1)
where STUDENTSEQ = 41;
update tblstudent
set FAILDATE = add_months(retdate, 1)
where STUDENTSEQ = 42;
update tblstudent
set FAILDATE = add_months(retdate, 1)
where STUDENTSEQ = 44;
update tblstudent
set FAILDATE = add_months(retdate, 1)
where STUDENTSEQ = 50;
update tblstudent
set FAILDATE = add_months(retdate, 1)
where STUDENTSEQ = 55;
update tblstudent
set FAILDATE = add_months(retdate, 1)
where STUDENTSEQ = 62;
update tblstudent
set FAILDATE = add_months(retdate, 1)
where STUDENTSEQ = 70;
update tblstudent
set FAILDATE = add_months(retdate, 1)
where STUDENTSEQ = 74;
update tblstudent
set FAILDATE = add_months(retdate, 1)
where STUDENTSEQ = 76;

-- 등록일 설정
update TBLSTUDENT
set retdate = '2021-01-05'
where studentseq in
      (54, 2, 13, 17, 33, 36, 39, 63, 69, 75, 81, 83, 88, 94, 95, 103, 111, 117, 123, 138, 141, 144, 160, 162, 168, 171,
       176, 181, 189, 192)

update TBLSTUDENT
set retdate = '2021-07-08'
where STUDENTSEQ in
      (53, 56, 57, 3, 5, 12, 16, 19, 21, 23, 25, 26, 27, 29, 31, 34, 35, 46, 48, 52, 59, 71, 73, 85, 86, 90, 92, 93, 99,
       101)

update TBLSTUDENT
set retdate = '2020-05-28'
where STUDENTSEQ in
      (1, 4, 6, 8, 10, 11, 14, 18, 20, 28, 30, 32, 38, 43, 45, 47, 49, 51, 58, 60, 61, 64, 65, 66, 67, 68, 72, 78, 80,
       82)

-- status 설정
update TBLSTUDENT
set status = '수강중'
where STUDENTSEQ in
      (102, 104, 106, 107, 108, 114, 119, 121, 124, 125, 129, 130, 132, 143, 146, 147, 149, 150, 151, 155, 159, 161,
       164, 169, 175, 177, 180, 183, 188, 190, 191, 194, 196, 198, 200, 203, 209, 218, 220, 223, 225, 226, 229, 230,
       235, 236, 237, 243, 246, 247, 248, 253, 260, 264, 266, 267, 268, 269, 271, 272, 273, 277, 278, 279, 281, 283,
       284, 285, 293, 299)


-- 수료상태 : 중도탈락 > 미수료 (수강중인 애들로 )
update TBLSTUDENT
set completionStatus = '미수료',
    faildate         = null
where STUDENTSEQ in
      (42, 44, 50, 55, 62, 70, 74, 76, 77, 79, 87, 96, 98, 109, 110, 115, 122, 127, 133, 134, 137, 139, 140, 153, 156,
       157, 165, 166, 170, 172, 174, 178, 179, 182, 186, 187, 197, 199, 201, 202, 205, 208, 212, 216, 217, 221, 227,
       231, 238, 257, 261, 274, 292, 294);
commit;


--2번과정
update TBLSTUDENT
set retdate = '2021-02-08'
where STUDENTSEQ in
      (104, 106, 107, 108, 109, 110, 114, 115, 119, 121, 122, 124, 125, 127, 129, 130, 132, 133, 134, 137, 139, 140,
       143, 146, 147, 149, 150, 151, 153, 155)

--3번과정
update TBLSTUDENT
set retdate = '2021-03-29'
where STUDENTSEQ in
      (156, 157, 159, 161, 164, 165, 166, 169, 170, 172, 174, 175, 177, 178, 179, 180, 182, 183, 186, 187, 188, 190,
       191, 194, 195, 196, 197, 198, 199, 200);

-- 4번 과정
update TBLSTUDENT
set retdate = '2021-04-12'
where STUDENTSEQ in
      (201, 202, 203, 205, 208, 209, 211, 212, 216, 217, 218, 220, 221, 22, 3, 225, 226, 227, 229, 230, 231, 233, 235,
       236, 237, 238, 239)

-- 5번
update TBLSTUDENT
set retdate = '2021-05-28'
where STUDENTSEQ in
      (240, 242, 243, 244, 246, 247, 248, 251, 253, 254, 257, 252, 260, 261, 262, 264, 266, 267, 268, 269, 270, 271,
       272, 273, 274, 277);

--6번
update TBLSTUDENT
set retdate = '2021-06-01'
where STUDENTSEQ in
      (42, 44, 50, 55, 62, 70, 74, 76, 77, 79, 87, 96, 98, 102, 278, 279, 281, 282, 283, 284, 285, 286, 292, 293, 294,
       299);

update TBLSTUDENT
set retdate = '2021-06-15'
where STUDENTSEQ in
      (153, 155);

-- 수강생 등록
-- 1번과정
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 2, 1);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 13, 1);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 17, 1);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 33, 1);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 36, 1);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 39, 1);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 54, 1);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 63, 1);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 69, 1);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 75, 1);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 81, 1);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 83, 1);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 88, 1);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 94, 1);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 95, 1);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 103, 1);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 111, 1);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 117, 1);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 123, 1);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 138, 1);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 141, 1);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 144, 1);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 160, 1);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 162, 1);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 168, 1);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 171, 1);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 176, 1);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 181, 1);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 189, 1);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 192, 1);


--2번 과정
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 7, 2);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 40, 2);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 104, 2);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 106, 2);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 107, 2);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 108, 2);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 109, 2);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 110, 2);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 114, 2);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 115, 2);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 119, 2);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 121, 2);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 122, 2);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 124, 2);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 125, 2);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 127, 2);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 129, 2);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 130, 2);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 132, 2);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 133, 2);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 134, 2);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 137, 2);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 139, 2);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 140, 2);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 143, 2);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 146, 2);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 147, 2);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 149, 2);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 150, 2);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 151, 2);


--3번 과정
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 9, 3);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 156, 3);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 157, 3);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 159, 3);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 161, 3);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 164, 3);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 165, 3);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 166, 3);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 169, 3);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 170, 3);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 172, 3);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 174, 3);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 175, 3);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 177, 3);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 178, 3);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 179, 3);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 180, 3);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 182, 3);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 183, 3);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 186, 3);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 187, 3);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 188, 3);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 190, 3);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 191, 3);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 194, 3);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 195, 3);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 196, 3);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 197, 3);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 198, 3);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 199, 3);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 200, 3);


--4번 과정
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 22, 4);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 41, 4);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 201, 4);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 202, 4);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 203, 4);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 205, 4);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 208, 4);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 209, 4);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 211, 4);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 212, 4);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 216, 4);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 217, 4);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 218, 4);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 220, 4);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 221, 4);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 223, 4);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 225, 4);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 226, 4);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 227, 4);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 229, 4);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 230, 4);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 231, 4);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 233, 4);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 235, 4);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 236, 4);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 237, 4);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 238, 4);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 239, 4);


--5번과정
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 24, 5);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 240, 5);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 242, 5);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 243, 5);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 244, 5);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 246, 5);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 247, 5);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 248, 5);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 251, 5);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 253, 5);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 254, 5);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 257, 5);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 259, 5);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 260, 5);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 261, 5);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 262, 5);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 264, 5);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 266, 5);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 267, 5);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 268, 5);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 269, 5);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 270, 5);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 271, 5);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 272, 5);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 273, 5);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 274, 5);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 277, 5);

--7번 과정
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 5, 7);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 12, 7);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 16, 7);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 19, 7);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 21, 7);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 23, 7);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 25, 7);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 26, 7);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 27, 7);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 29, 7);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 31, 7);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 34, 7);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 35, 7);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 46, 7);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 48, 7);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 52, 7);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 53, 7);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 56, 7);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 57, 7);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 59, 7);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 71, 7);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 73, 7);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 85, 7);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 86, 7);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 90, 7);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 92, 7);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 93, 7);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 99, 7);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 101, 7);


--16번 과정
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 1, 16);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 4, 16);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 6, 16);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 8, 16);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 10, 16);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 11, 16);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 14, 16);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 18, 16);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 20, 16);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 28, 16);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 30, 16);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 32, 16);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 38, 16);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 43, 16);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 45, 16);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 47, 16);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 49, 16);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 51, 16);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 58, 16);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 60, 16);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 61, 16);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 64, 16);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 65, 16);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 66, 16);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 67, 16);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 68, 16);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 72, 16);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 78, 16);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 80, 16);
insert into tblclass(CLASSSEQ, STUDENTSEQ, OPENCOURSESEQ)
values (SEQ_TBLCLASS.nextval, 82, 16);

-- 배점등록
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 1);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 2);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 3);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 4);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 5);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 6);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 7);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 8);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 9);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 10);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 11);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 12);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 19);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 20);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 21);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 22);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 23);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 24);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 25);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 26);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 27);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 28);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 29);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 30);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 31);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 32);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 33);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 36);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 37);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 76);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 77);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 78);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 79);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 80);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 81);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 82);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 83);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 84);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 85);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 86);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 87);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 88);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 89);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 90);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 91);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 92);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 93);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 94);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 95);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 96);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 97);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 98);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 99);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 100);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 101);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 102);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 103);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 104);
insert into tblrate(RATESEQ, ATTENDRATE, PERFORMRATE, WRITERATE, OPENSUBJECTSEQ)
VALUES (seq_tblrate.nextval, 20, 40, 40, 105);

-- 시험 파일 등록
insert into tblexamFile(filename)
values ('자바');
insert into tblexamFile(filename)
values ('오라클');
insert into tblexamFile(filename)
values ('JDBC');
insert into tblexamFile(filename)
values ('HTML');
insert into tblexamFile(filename)
values ('CSS');
insert into tblexamFile(filename)
values ('JavaScript');
insert into tblexamFile(filename)
values ('Servlet');
insert into tblexamFile(filename)
values ('JSP');
insert into tblexamFile(filename)
values ('Spring');
insert into tblexamFile(filename)
values ('Mybatis');
insert into tblexamFile(filename)
values ('아두이노');
insert into tblexamFile(filename)
values ('하둡');
insert into tblexamFile(filename)
values ('React');
insert into tblexamFile(filename)
values ('vue');
insert into tblexamFile(filename)
values ('angular');
insert into tblexamFile(filename)
values ('Node.js');

insert into tblexam(examseq, examdate, OPENSUBJECTSEQ)
select seq_tblexam.nextval, subjectend, OPENSUBJECTSEQ
from tblopensubject
where subjectend is not null
  and SUBJECTEND < sysdate;


-- 주말 제외 날짜 계산 - 과목
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

-- 지각 데이터 생성
update testattend
set ATTENDANCE = '지각'
where attendSeq in (select ATTENDSEQ from TESTATTEND where to_char(INTIME, 'hh24') = 09 and to_char(INTIME, 'mi') >= 5);


-- 기타 데이터 생성
begin
    for i in 1..50
        loop
            update testattend
            set --outtime = outtime -  dbms_random.value(120, 180) / (24 * 60),
                attendance = '기타',
                intime     = null,
                outtime    = null

            where attendseq = round(dbms_random.value(0, 11000) + i);
            dbms_output.PUT_LINE(dbms_random.value(0, 11000) + i);
        end loop;
end;



-- 과제 데이터 생성
insert into tbltask(taskseq, TASKSUBMITDATE, OPENSUBJECTSEQ, classseq)
select rownum, t3.SUBJECTEND, t3.OPENSUBJECTSEQ, t.CLASSSEQ
from tblclass T
         inner join TBLOPENCOURSE T2 on t.OPENCOURSESEQ = t2.OPENCOURSESEQ
         inner join TBLOPENSUBJECT T3 on T2.OPENCOURSESEQ = T3.OPENCOURSESEQ;

-- 과제 상태 변경
update tbltask
set taskregist = '제출'
where (substr(tasksubmitdate, 1, 10) < sysdate);


-- 피드백 데이터 생성




-- 프로젝트 데이터 생성
-- insert into tblproject(PROJECTREGIST, PROJECTSUBMITDATE)
-- select distinct t5.SUBJECTNAME || '프로젝트', T3.SUBJECTEND
-- from tblteam t1
--          inner join TBLCLASS t2 on t1.CLASSSEQ = t2.CLASSSEQ
--          inner join TBLOPENCOURSE T on T.OPENCOURSESEQ = t2.OPENCOURSESEQ
--          inner join TBLOPENSUBJECT T3 on T.OPENCOURSESEQ = T3.OPENCOURSESEQ
--          inner join TBLAVAILABLESUBJECT T4 on T4.AVAILABLESUBJECTSEQ = T3.AVAILABLESUBJECTSEQ
--          inner join TBLSUbBJECT T5 on T5.SUBJECTSEQ = T4.SUBJECTSEQ;

-- 취업 데이터 생성
insert into tblempstat
values (1, 176, '취업');
insert into tblempstat
values (2, 177, '취업');
insert into tblempstat
values (3, 178, '취업');
insert into tblempstat
values (4, 179, '취업');
insert into tblempstat
values (5, 180, '취업');
insert into tblempstat
values (6, 181, '취업');
insert into tblempstat
values (7, 182, '취업');
insert into tblempstat
values (8, 183, '취업');
insert into tblempstat
values (9, 184, '취업');
insert into tblempstat
values (10, 185, '취업');
insert into tblempstat
values (11, 186, '취업');
insert into tblempstat
values (12, 187, '취업');
insert into tblempstat
values (13, 188, '취업');
insert into tblempstat
values (14, 189, '취업');
insert into tblempstat
values (15, 190, '취업');
insert into tblempstat
values (16, 191, '취업');
insert into tblempstat
values (17, 192, '취업');
insert into tblempstat
values (18, 193, '취업');
insert into tblempstat
values (19, 194, '취업');
insert into tblempstat
values (20, 195, '취업');
insert into tblempstat
values (21, 196, '취업');
insert into tblempstat
values (22, 197, '취업');
insert into tblempstat
values (23, 198, '취업');
insert into tblempstat
values (24, 199, '취업');
insert into tblempstat
values (25, 200, '취업');
insert into tblempstat
values (26, 201, '취업');
insert into tblempstat
values (27, 202, '취업');
insert into tblempstat
values (28, 203, '취업');
insert into tblempstat
values (29, 204, '취업');
insert into tblempstat
values (30, 205, '취업');



-- 과제 피드백 데이터 생성
select *
from tblteam;
-- 답이안나와 자바로...
insert into TBLTASKFEEDBACK
values (1, '알고리즘을 정말 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (2, '가독성을 매우 잘했어요');
insert into TBLTASKFEEDBACK
values (3, '알고리즘을 정말 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (4, '가독성을 참 칭찬합니다');
insert into TBLTASKFEEDBACK
values (5, '알고리즘을 매우 잘했어요');
insert into TBLTASKFEEDBACK
values (6, '가독성을 매우 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (7, '코딩을 참 잘했어요');
insert into TBLTASKFEEDBACK
values (8, '코딩을 참 잘했어요.');
insert into TBLTASKFEEDBACK
values (9, '가독성을 정말 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (10, '알고리즘을 참 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (11, '가독성을 아주 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (12, '가독성을 정말 잘했어요.');
insert into TBLTASKFEEDBACK
values (13, '가독성을 참 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (14, '코딩을 아주 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (15, '알고리즘을 아주 칭찬합니다');
insert into TBLTASKFEEDBACK
values (16, '코딩을 아주 잘했어요');
insert into TBLTASKFEEDBACK
values (17, '가독성을 참 칭찬합니다');
insert into TBLTASKFEEDBACK
values (18, '알고리즘을 참 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (19, '코딩을 매우 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (20, '알고리즘을 정말 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (21, '가독성을 정말 칭찬합니다');
insert into TBLTASKFEEDBACK
values (22, '알고리즘을 참 잘했어요');
insert into TBLTASKFEEDBACK
values (23, '가독성을 참 잘했어요.');
insert into TBLTASKFEEDBACK
values (24, '가독성을 참 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (25, '가독성을 아주 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (26, '알고리즘을 아주 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (27, '알고리즘을 참 잘했어요');
insert into TBLTASKFEEDBACK
values (28, '알고리즘을 아주 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (29, '알고리즘을 정말 잘했어요.');
insert into TBLTASKFEEDBACK
values (30, '코딩을 매우 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (31, '알고리즘을 아주 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (32, '가독성을 정말 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (33, '코딩을 매우 잘했어요');
insert into TBLTASKFEEDBACK
values (34, '코딩을 참 잘했어요.');
insert into TBLTASKFEEDBACK
values (35, '코딩을 아주 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (36, '알고리즘을 아주 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (37, '가독성을 정말 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (38, '가독성을 아주 잘했어요');
insert into TBLTASKFEEDBACK
values (39, '가독성을 정말 칭찬합니다');
insert into TBLTASKFEEDBACK
values (40, '코딩을 참 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (41, '가독성을 참 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (42, '알고리즘을 아주 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (43, '알고리즘을 정말 잘했어요');
insert into TBLTASKFEEDBACK
values (44, '코딩을 매우 잘했어요');
insert into TBLTASKFEEDBACK
values (45, '코딩을 매우 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (46, '알고리즘을 정말 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (47, '가독성을 참 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (48, '가독성을 아주 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (49, '가독성을 정말 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (50, '코딩을 정말 잘했어요');
insert into TBLTASKFEEDBACK
values (51, '알고리즘을 매우 잘했어요.');
insert into TBLTASKFEEDBACK
values (52, '코딩을 참 잘했어요');
insert into TBLTASKFEEDBACK
values (53, '코딩을 아주 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (54, '알고리즘을 매우 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (55, '가독성을 아주 칭찬합니다');
insert into TBLTASKFEEDBACK
values (56, '알고리즘을 매우 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (57, '알고리즘을 정말 잘했어요');
insert into TBLTASKFEEDBACK
values (58, '코딩을 아주 잘했어요.');
insert into TBLTASKFEEDBACK
values (59, '가독성을 정말 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (60, '코딩을 정말 잘했어요.');
insert into TBLTASKFEEDBACK
values (61, '알고리즘을 참 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (62, '알고리즘을 참 잘했어요');
insert into TBLTASKFEEDBACK
values (63, '가독성을 정말 잘했어요.');
insert into TBLTASKFEEDBACK
values (64, '알고리즘을 매우 칭찬합니다');
insert into TBLTASKFEEDBACK
values (65, '알고리즘을 매우 칭찬합니다');
insert into TBLTASKFEEDBACK
values (66, '알고리즘을 아주 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (67, '가독성을 아주 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (68, '코딩을 아주 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (69, '알고리즘을 정말 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (70, '코딩을 정말 잘했어요');
insert into TBLTASKFEEDBACK
values (71, '가독성을 참 칭찬합니다');
insert into TBLTASKFEEDBACK
values (72, '코딩을 매우 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (73, '가독성을 참 잘했어요');
insert into TBLTASKFEEDBACK
values (74, '가독성을 참 칭찬합니다');
insert into TBLTASKFEEDBACK
values (75, '코딩을 정말 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (76, '가독성을 매우 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (77, '가독성을 매우 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (78, '가독성을 매우 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (79, '코딩을 참 칭찬합니다');
insert into TBLTASKFEEDBACK
values (80, '알고리즘을 매우 칭찬합니다');
insert into TBLTASKFEEDBACK
values (81, '알고리즘을 아주 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (82, '코딩을 정말 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (83, '알고리즘을 매우 칭찬합니다');
insert into TBLTASKFEEDBACK
values (84, '코딩을 참 잘했어요.');
insert into TBLTASKFEEDBACK
values (85, '코딩을 아주 칭찬합니다');
insert into TBLTASKFEEDBACK
values (86, '알고리즘을 정말 잘했어요');
insert into TBLTASKFEEDBACK
values (87, '코딩을 정말 잘했어요');
insert into TBLTASKFEEDBACK
values (88, '가독성을 아주 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (89, '코딩을 매우 잘했어요.');
insert into TBLTASKFEEDBACK
values (90, '가독성을 정말 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (91, '가독성을 아주 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (92, '알고리즘을 정말 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (93, '가독성을 참 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (94, '가독성을 참 잘했어요');
insert into TBLTASKFEEDBACK
values (95, '알고리즘을 매우 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (96, '가독성을 정말 잘했어요.');
insert into TBLTASKFEEDBACK
values (97, '알고리즘을 참 잘했어요');
insert into TBLTASKFEEDBACK
values (98, '가독성을 아주 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (99, '가독성을 아주 잘했어요.');
insert into TBLTASKFEEDBACK
values (100, '알고리즘을 매우 잘했어요');
insert into TBLTASKFEEDBACK
values (101, '알고리즘을 매우 잘했어요');
insert into TBLTASKFEEDBACK
values (102, '알고리즘을 아주 잘했어요');
insert into TBLTASKFEEDBACK
values (103, '코딩을 아주 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (104, '알고리즘을 정말 잘했어요.');
insert into TBLTASKFEEDBACK
values (105, '알고리즘을 아주 잘했어요');
insert into TBLTASKFEEDBACK
values (106, '알고리즘을 정말 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (107, '알고리즘을 아주 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (108, '알고리즘을 아주 잘했어요.');
insert into TBLTASKFEEDBACK
values (109, '코딩을 매우 잘했어요');
insert into TBLTASKFEEDBACK
values (110, '코딩을 매우 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (111, '코딩을 정말 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (112, '가독성을 매우 칭찬합니다');
insert into TBLTASKFEEDBACK
values (113, '알고리즘을 아주 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (114, '코딩을 아주 잘했어요');
insert into TBLTASKFEEDBACK
values (115, '가독성을 아주 잘했어요');
insert into TBLTASKFEEDBACK
values (116, '가독성을 참 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (117, '코딩을 매우 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (118, '가독성을 아주 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (119, '알고리즘을 정말 잘했어요');
insert into TBLTASKFEEDBACK
values (120, '코딩을 정말 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (151, '알고리즘을 아주 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (152, '가독성을 정말 잘했어요');
insert into TBLTASKFEEDBACK
values (153, '코딩을 매우 잘했어요');
insert into TBLTASKFEEDBACK
values (154, '코딩을 매우 잘했어요.');
insert into TBLTASKFEEDBACK
values (155, '코딩을 참 잘했어요.');
insert into TBLTASKFEEDBACK
values (156, '가독성을 정말 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (157, '가독성을 아주 칭찬합니다');
insert into TBLTASKFEEDBACK
values (158, '가독성을 아주 잘했어요');
insert into TBLTASKFEEDBACK
values (159, '가독성을 매우 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (160, '알고리즘을 아주 잘했어요');
insert into TBLTASKFEEDBACK
values (161, '알고리즘을 매우 잘했어요');
insert into TBLTASKFEEDBACK
values (162, '코딩을 참 잘했어요');
insert into TBLTASKFEEDBACK
values (163, '코딩을 아주 칭찬합니다');
insert into TBLTASKFEEDBACK
values (164, '코딩을 정말 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (165, '가독성을 정말 잘했어요.');
insert into TBLTASKFEEDBACK
values (166, '코딩을 아주 잘했어요');
insert into TBLTASKFEEDBACK
values (167, '알고리즘을 매우 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (168, '가독성을 매우 잘했어요');
insert into TBLTASKFEEDBACK
values (169, '알고리즘을 정말 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (170, '코딩을 정말 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (171, '가독성을 참 잘했어요');
insert into TBLTASKFEEDBACK
values (172, '알고리즘을 정말 잘했어요');
insert into TBLTASKFEEDBACK
values (173, '가독성을 매우 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (174, '가독성을 매우 잘했어요');
insert into TBLTASKFEEDBACK
values (175, '알고리즘을 참 잘했어요');
insert into TBLTASKFEEDBACK
values (176, '알고리즘을 참 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (177, '코딩을 참 잘했어요.');
insert into TBLTASKFEEDBACK
values (178, '가독성을 아주 잘했어요');
insert into TBLTASKFEEDBACK
values (179, '코딩을 정말 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (180, '알고리즘을 아주 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (181, '가독성을 정말 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (182, '알고리즘을 매우 잘했어요');
insert into TBLTASKFEEDBACK
values (183, '가독성을 참 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (184, '코딩을 정말 잘했어요');
insert into TBLTASKFEEDBACK
values (185, '알고리즘을 매우 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (186, '가독성을 참 잘했어요');
insert into TBLTASKFEEDBACK
values (187, '코딩을 아주 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (188, '코딩을 정말 잘했어요');
insert into TBLTASKFEEDBACK
values (189, '알고리즘을 아주 칭찬합니다');
insert into TBLTASKFEEDBACK
values (190, '코딩을 아주 칭찬합니다');
insert into TBLTASKFEEDBACK
values (191, '알고리즘을 참 칭찬합니다');
insert into TBLTASKFEEDBACK
values (192, '가독성을 매우 잘했어요');
insert into TBLTASKFEEDBACK
values (193, '알고리즘을 아주 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (194, '알고리즘을 참 잘했어요.');
insert into TBLTASKFEEDBACK
values (195, '가독성을 참 잘했어요');
insert into TBLTASKFEEDBACK
values (196, '가독성을 매우 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (197, '가독성을 매우 잘했어요');
insert into TBLTASKFEEDBACK
values (198, '알고리즘을 정말 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (199, '알고리즘을 참 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (200, '코딩을 참 잘했어요');
insert into TBLTASKFEEDBACK
values (201, '알고리즘을 정말 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (202, '알고리즘을 정말 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (203, '가독성을 매우 잘했어요.');
insert into TBLTASKFEEDBACK
values (204, '가독성을 매우 잘했어요.');
insert into TBLTASKFEEDBACK
values (205, '가독성을 참 칭찬합니다');
insert into TBLTASKFEEDBACK
values (206, '가독성을 매우 잘했어요.');
insert into TBLTASKFEEDBACK
values (207, '알고리즘을 매우 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (208, '코딩을 아주 잘했어요');
insert into TBLTASKFEEDBACK
values (209, '알고리즘을 아주 잘했어요');
insert into TBLTASKFEEDBACK
values (210, '코딩을 참 칭찬합니다');
insert into TBLTASKFEEDBACK
values (211, '알고리즘을 아주 잘했어요');
insert into TBLTASKFEEDBACK
values (212, '가독성을 매우 칭찬합니다');
insert into TBLTASKFEEDBACK
values (213, '코딩을 참 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (214, '가독성을 매우 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (215, '가독성을 정말 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (216, '가독성을 매우 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (217, '코딩을 참 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (218, '알고리즘을 아주 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (219, '코딩을 아주 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (220, '알고리즘을 매우 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (221, '가독성을 정말 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (222, '가독성을 아주 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (223, '알고리즘을 참 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (224, '코딩을 매우 칭찬합니다');
insert into TBLTASKFEEDBACK
values (225, '알고리즘을 매우 칭찬합니다');
insert into TBLTASKFEEDBACK
values (226, '가독성을 정말 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (227, '가독성을 참 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (228, '코딩을 아주 잘했어요');
insert into TBLTASKFEEDBACK
values (229, '가독성을 매우 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (230, '가독성을 아주 잘했어요.');
insert into TBLTASKFEEDBACK
values (231, '가독성을 정말 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (232, '코딩을 참 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (233, '코딩을 참 잘했어요');
insert into TBLTASKFEEDBACK
values (234, '알고리즘을 정말 잘했어요');
insert into TBLTASKFEEDBACK
values (235, '알고리즘을 참 잘했어요');
insert into TBLTASKFEEDBACK
values (236, '코딩을 매우 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (237, '코딩을 매우 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (238, '가독성을 매우 잘했어요');
insert into TBLTASKFEEDBACK
values (239, '알고리즘을 정말 잘했어요');
insert into TBLTASKFEEDBACK
values (240, '코딩을 정말 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (241, '알고리즘을 정말 잘했어요.');
insert into TBLTASKFEEDBACK
values (242, '코딩을 참 잘했어요');
insert into TBLTASKFEEDBACK
values (243, '알고리즘을 아주 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (244, '코딩을 정말 잘했어요');
insert into TBLTASKFEEDBACK
values (245, '코딩을 정말 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (246, '알고리즘을 정말 잘했어요.');
insert into TBLTASKFEEDBACK
values (247, '코딩을 매우 칭찬합니다');
insert into TBLTASKFEEDBACK
values (248, '가독성을 참 칭찬합니다');
insert into TBLTASKFEEDBACK
values (249, '알고리즘을 매우 잘했어요');
insert into TBLTASKFEEDBACK
values (250, '알고리즘을 아주 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (251, '알고리즘을 정말 칭찬합니다');
insert into TBLTASKFEEDBACK
values (252, '코딩을 참 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (253, '알고리즘을 참 칭찬합니다');
insert into TBLTASKFEEDBACK
values (254, '가독성을 매우 잘했어요');
insert into TBLTASKFEEDBACK
values (255, '코딩을 정말 잘했어요');
insert into TBLTASKFEEDBACK
values (256, '알고리즘을 참 잘했어요.');
insert into TBLTASKFEEDBACK
values (257, '알고리즘을 아주 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (258, '코딩을 정말 잘했어요');
insert into TBLTASKFEEDBACK
values (259, '가독성을 정말 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (260, '가독성을 정말 잘했어요');
insert into TBLTASKFEEDBACK
values (261, '코딩을 매우 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (262, '가독성을 참 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (263, '알고리즘을 매우 칭찬합니다');
insert into TBLTASKFEEDBACK
values (264, '가독성을 아주 잘했어요');
insert into TBLTASKFEEDBACK
values (265, '코딩을 매우 칭찬합니다');
insert into TBLTASKFEEDBACK
values (266, '가독성을 정말 칭찬합니다');
insert into TBLTASKFEEDBACK
values (267, '알고리즘을 매우 잘했어요');
insert into TBLTASKFEEDBACK
values (268, '알고리즘을 정말 잘했어요');
insert into TBLTASKFEEDBACK
values (269, '코딩을 아주 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (270, '가독성을 아주 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (271, '알고리즘을 참 칭찬합니다');
insert into TBLTASKFEEDBACK
values (272, '코딩을 참 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (273, '코딩을 정말 잘했어요');
insert into TBLTASKFEEDBACK
values (274, '코딩을 아주 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (275, '가독성을 아주 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (276, '가독성을 정말 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (277, '코딩을 정말 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (278, '코딩을 매우 잘했어요');
insert into TBLTASKFEEDBACK
values (279, '코딩을 매우 칭찬합니다');
insert into TBLTASKFEEDBACK
values (280, '코딩을 참 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (281, '코딩을 정말 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (282, '알고리즘을 아주 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (283, '코딩을 참 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (284, '가독성을 정말 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (285, '코딩을 참 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (286, '코딩을 아주 잘했어요');
insert into TBLTASKFEEDBACK
values (287, '코딩을 정말 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (288, '가독성을 정말 칭찬합니다');
insert into TBLTASKFEEDBACK
values (289, '알고리즘을 아주 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (290, '코딩을 참 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (291, '코딩을 매우 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (292, '알고리즘을 매우 잘했어요.');
insert into TBLTASKFEEDBACK
values (293, '알고리즘을 정말 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (294, '코딩을 매우 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (295, '가독성을 매우 잘했어요.');
insert into TBLTASKFEEDBACK
values (296, '코딩을 참 칭찬합니다');
insert into TBLTASKFEEDBACK
values (297, '알고리즘을 아주 잘했어요');
insert into TBLTASKFEEDBACK
values (298, '알고리즘을 아주 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (299, '가독성을 매우 칭찬합니다');
insert into TBLTASKFEEDBACK
values (300, '가독성을 정말 잘했어요.');
insert into TBLTASKFEEDBACK
values (301, '가독성을 참 잘했어요');
insert into TBLTASKFEEDBACK
values (302, '코딩을 정말 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (303, '가독성을 참 잘했어요');
insert into TBLTASKFEEDBACK
values (304, '코딩을 아주 칭찬합니다');
insert into TBLTASKFEEDBACK
values (305, '코딩을 매우 잘했어요');
insert into TBLTASKFEEDBACK
values (306, '가독성을 참 잘했어요.');
insert into TBLTASKFEEDBACK
values (307, '가독성을 참 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (308, '코딩을 참 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (309, '코딩을 아주 잘했어요');
insert into TBLTASKFEEDBACK
values (310, '알고리즘을 참 잘했어요');
insert into TBLTASKFEEDBACK
values (311, '가독성을 참 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (312, '가독성을 매우 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (313, '코딩을 정말 잘했어요');
insert into TBLTASKFEEDBACK
values (314, '알고리즘을 아주 잘했어요');
insert into TBLTASKFEEDBACK
values (315, '알고리즘을 참 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (316, '가독성을 참 잘했어요');
insert into TBLTASKFEEDBACK
values (317, '가독성을 참 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (318, '가독성을 아주 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (319, '가독성을 참 잘했어요');
insert into TBLTASKFEEDBACK
values (320, '코딩을 매우 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (321, '코딩을 아주 잘했어요');
insert into TBLTASKFEEDBACK
values (322, '알고리즘을 참 칭찬합니다');
insert into TBLTASKFEEDBACK
values (323, '알고리즘을 정말 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (324, '코딩을 아주 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (325, '코딩을 매우 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (326, '알고리즘을 매우 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (327, '알고리즘을 참 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (328, '알고리즘을 매우 잘했어요');
insert into TBLTASKFEEDBACK
values (329, '코딩을 참 잘했어요');
insert into TBLTASKFEEDBACK
values (330, '알고리즘을 아주 잘했어요');
insert into TBLTASKFEEDBACK
values (331, '가독성을 아주 잘했어요');
insert into TBLTASKFEEDBACK
values (332, '알고리즘을 아주 잘했어요.');
insert into TBLTASKFEEDBACK
values (333, '알고리즘을 아주 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (334, '가독성을 매우 잘했어요');
insert into TBLTASKFEEDBACK
values (335, '알고리즘을 정말 잘했어요');
insert into TBLTASKFEEDBACK
values (336, '코딩을 매우 잘했어요');
insert into TBLTASKFEEDBACK
values (337, '알고리즘을 참 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (338, '알고리즘을 참 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (339, '코딩을 매우 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (340, '알고리즘을 매우 잘했어요');
insert into TBLTASKFEEDBACK
values (341, '코딩을 매우 잘했어요');
insert into TBLTASKFEEDBACK
values (342, '알고리즘을 매우 칭찬합니다');
insert into TBLTASKFEEDBACK
values (343, '코딩을 정말 잘했어요.');
insert into TBLTASKFEEDBACK
values (344, '가독성을 매우 잘했어요.');
insert into TBLTASKFEEDBACK
values (345, '가독성을 정말 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (346, '알고리즘을 아주 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (347, '코딩을 참 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (348, '코딩을 참 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (349, '가독성을 매우 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (350, '가독성을 정말 잘했어요');
insert into TBLTASKFEEDBACK
values (351, '코딩을 참 칭찬합니다');
insert into TBLTASKFEEDBACK
values (352, '코딩을 아주 잘했어요.');
insert into TBLTASKFEEDBACK
values (353, '알고리즘을 아주 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (354, '가독성을 참 칭찬합니다');
insert into TBLTASKFEEDBACK
values (355, '가독성을 아주 잘했어요');
insert into TBLTASKFEEDBACK
values (356, '가독성을 정말 잘했어요');
insert into TBLTASKFEEDBACK
values (357, '알고리즘을 아주 잘했어요.');
insert into TBLTASKFEEDBACK
values (358, '코딩을 정말 잘했어요');
insert into TBLTASKFEEDBACK
values (359, '알고리즘을 매우 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (360, '알고리즘을 아주 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (535, '가독성을 아주 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (536, '코딩을 아주 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (537, '가독성을 아주 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (538, '가독성을 매우 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (539, '알고리즘을 아주 잘했어요.');
insert into TBLTASKFEEDBACK
values (540, '가독성을 아주 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (541, '코딩을 참 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (542, '코딩을 아주 잘했어요');
insert into TBLTASKFEEDBACK
values (543, '코딩을 정말 잘했어요');
insert into TBLTASKFEEDBACK
values (544, '가독성을 참 잘했어요');
insert into TBLTASKFEEDBACK
values (545, '코딩을 아주 칭찬합니다');
insert into TBLTASKFEEDBACK
values (546, '알고리즘을 아주 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (547, '알고리즘을 정말 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (548, '코딩을 아주 칭찬합니다');
insert into TBLTASKFEEDBACK
values (549, '알고리즘을 참 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (550, '코딩을 참 잘했어요');
insert into TBLTASKFEEDBACK
values (551, '알고리즘을 매우 잘했어요.');
insert into TBLTASKFEEDBACK
values (552, '코딩을 정말 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (553, '알고리즘을 매우 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (554, '알고리즘을 아주 칭찬합니다');
insert into TBLTASKFEEDBACK
values (555, '알고리즘을 매우 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (556, '가독성을 아주 잘했어요');
insert into TBLTASKFEEDBACK
values (557, '코딩을 정말 잘했어요.');
insert into TBLTASKFEEDBACK
values (558, '알고리즘을 아주 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (559, '알고리즘을 정말 잘했어요');
insert into TBLTASKFEEDBACK
values (560, '코딩을 참 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (561, '코딩을 정말 잘했어요.');
insert into TBLTASKFEEDBACK
values (562, '코딩을 아주 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (563, '가독성을 아주 잘했어요.');
insert into TBLTASKFEEDBACK
values (564, '가독성을 정말 칭찬합니다');
insert into TBLTASKFEEDBACK
values (565, '가독성을 참 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (566, '코딩을 매우 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (567, '가독성을 참 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (568, '코딩을 정말 잘했어요');
insert into TBLTASKFEEDBACK
values (569, '알고리즘을 아주 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (570, '코딩을 참 잘했어요');
insert into TBLTASKFEEDBACK
values (571, '알고리즘을 매우 잘했어요');
insert into TBLTASKFEEDBACK
values (572, '알고리즘을 아주 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (573, '알고리즘을 정말 잘했어요');
insert into TBLTASKFEEDBACK
values (574, '가독성을 매우 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (575, '가독성을 매우 칭찬합니다');
insert into TBLTASKFEEDBACK
values (576, '알고리즘을 아주 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (577, '알고리즘을 정말 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (578, '코딩을 정말 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (579, '가독성을 매우 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (580, '가독성을 참 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (581, '코딩을 아주 잘했어요');
insert into TBLTASKFEEDBACK
values (582, '알고리즘을 정말 칭찬합니다');
insert into TBLTASKFEEDBACK
values (583, '알고리즘을 참 잘했어요');
insert into TBLTASKFEEDBACK
values (584, '코딩을 참 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (585, '코딩을 아주 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (586, '알고리즘을 참 칭찬합니다');
insert into TBLTASKFEEDBACK
values (587, '코딩을 매우 잘했어요.');
insert into TBLTASKFEEDBACK
values (588, '코딩을 정말 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (589, '알고리즘을 아주 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (590, '알고리즘을 아주 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (591, '코딩을 매우 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (592, '코딩을 매우 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (593, '코딩을 매우 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (594, '코딩을 참 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (595, '코딩을 정말 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (596, '코딩을 참 잘했어요');
insert into TBLTASKFEEDBACK
values (597, '알고리즘을 매우 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (598, '가독성을 정말 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (599, '알고리즘을 정말 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (600, '알고리즘을 아주 잘했어요');
insert into TBLTASKFEEDBACK
values (601, '가독성을 정말 잘했어요.');
insert into TBLTASKFEEDBACK
values (602, '가독성을 아주 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (603, '가독성을 매우 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (604, '가독성을 참 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (605, '가독성을 정말 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (606, '알고리즘을 아주 칭찬합니다');
insert into TBLTASKFEEDBACK
values (607, '코딩을 참 칭찬합니다');
insert into TBLTASKFEEDBACK
values (608, '코딩을 매우 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (609, '코딩을 아주 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (610, '알고리즘을 참 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (611, '가독성을 참 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (612, '코딩을 아주 잘했어요');
insert into TBLTASKFEEDBACK
values (613, '알고리즘을 매우 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (614, '가독성을 참 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (615, '알고리즘을 참 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (616, '가독성을 참 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (617, '알고리즘을 참 잘했어요');
insert into TBLTASKFEEDBACK
values (618, '알고리즘을 아주 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (619, '알고리즘을 아주 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (620, '알고리즘을 참 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (621, '가독성을 매우 잘했어요');
insert into TBLTASKFEEDBACK
values (622, '가독성을 참 칭찬합니다');
insert into TBLTASKFEEDBACK
values (623, '코딩을 정말 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (624, '알고리즘을 참 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (715, '가독성을 정말 잘했어요');
insert into TBLTASKFEEDBACK
values (716, '가독성을 정말 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (717, '알고리즘을 정말 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (718, '알고리즘을 아주 잘했어요');
insert into TBLTASKFEEDBACK
values (719, '가독성을 아주 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (720, '코딩을 아주 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (721, '코딩을 아주 칭찬합니다');
insert into TBLTASKFEEDBACK
values (722, '알고리즘을 매우 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (723, '알고리즘을 참 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (724, '가독성을 매우 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (725, '가독성을 아주 잘했어요');
insert into TBLTASKFEEDBACK
values (726, '코딩을 아주 잘했어요');
insert into TBLTASKFEEDBACK
values (727, '코딩을 매우 잘했어요');
insert into TBLTASKFEEDBACK
values (728, '가독성을 정말 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (729, '가독성을 매우 칭찬합니다');
insert into TBLTASKFEEDBACK
values (730, '가독성을 정말 칭찬합니다');
insert into TBLTASKFEEDBACK
values (731, '가독성을 정말 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (732, '코딩을 아주 칭찬합니다');
insert into TBLTASKFEEDBACK
values (733, '가독성을 참 잘했어요');
insert into TBLTASKFEEDBACK
values (734, '가독성을 매우 잘했어요');
insert into TBLTASKFEEDBACK
values (735, '코딩을 정말 잘했어요');
insert into TBLTASKFEEDBACK
values (736, '알고리즘을 아주 잘했어요');
insert into TBLTASKFEEDBACK
values (737, '알고리즘을 참 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (738, '알고리즘을 아주 잘했어요.');
insert into TBLTASKFEEDBACK
values (739, '알고리즘을 참 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (740, '알고리즘을 아주 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (741, '가독성을 아주 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (742, '알고리즘을 아주 잘했어요.');
insert into TBLTASKFEEDBACK
values (743, '가독성을 매우 잘했어요');
insert into TBLTASKFEEDBACK
values (744, '코딩을 매우 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (745, '알고리즘을 정말 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (932, '알고리즘을 정말 잘했어요');
insert into TBLTASKFEEDBACK
values (933, '코딩을 아주 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (934, '코딩을 정말 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (935, '코딩을 매우 칭찬합니다');
insert into TBLTASKFEEDBACK
values (936, '알고리즘을 아주 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (937, '가독성을 아주 잘했어요.');
insert into TBLTASKFEEDBACK
values (938, '가독성을 참 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (939, '가독성을 정말 칭찬합니다');
insert into TBLTASKFEEDBACK
values (940, '코딩을 아주 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (941, '알고리즘을 아주 칭찬합니다');
insert into TBLTASKFEEDBACK
values (942, '코딩을 매우 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (943, '가독성을 아주 칭찬합니다');
insert into TBLTASKFEEDBACK
values (944, '알고리즘을 아주 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (945, '가독성을 참 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (946, '알고리즘을 매우 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (947, '가독성을 아주 잘했어요');
insert into TBLTASKFEEDBACK
values (948, '가독성을 매우 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (949, '코딩을 아주 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (950, '가독성을 아주 칭찬합니다');
insert into TBLTASKFEEDBACK
values (951, '코딩을 참 칭찬합니다');
insert into TBLTASKFEEDBACK
values (952, '가독성을 정말 잘했어요');
insert into TBLTASKFEEDBACK
values (953, '가독성을 매우 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (954, '알고리즘을 정말 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (955, '코딩을 매우 잘했어요');
insert into TBLTASKFEEDBACK
values (956, '코딩을 정말 잘했어요.');
insert into TBLTASKFEEDBACK
values (957, '코딩을 정말 칭찬합니다');
insert into TBLTASKFEEDBACK
values (958, '알고리즘을 정말 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (959, '가독성을 아주 잘했어요');
insert into TBLTASKFEEDBACK
values (960, '코딩을 참 잘했어요');
insert into TBLTASKFEEDBACK
values (961, '코딩을 참 잘했어요');
insert into TBLTASKFEEDBACK
values (962, '코딩을 정말 칭찬합니다');
insert into TBLTASKFEEDBACK
values (963, '가독성을 매우 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (964, '알고리즘을 참 잘했어요.');
insert into TBLTASKFEEDBACK
values (965, '알고리즘을 아주 칭찬합니다');
insert into TBLTASKFEEDBACK
values (966, '알고리즘을 참 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (967, '코딩을 매우 칭찬합니다');
insert into TBLTASKFEEDBACK
values (968, '알고리즘을 참 잘했어요');
insert into TBLTASKFEEDBACK
values (969, '가독성을 매우 잘했어요');
insert into TBLTASKFEEDBACK
values (970, '가독성을 아주 잘했어요.');
insert into TBLTASKFEEDBACK
values (971, '알고리즘을 정말 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (972, '가독성을 아주 칭찬합니다');
insert into TBLTASKFEEDBACK
values (973, '알고리즘을 아주 잘했어요');
insert into TBLTASKFEEDBACK
values (974, '알고리즘을 참 칭찬합니다');
insert into TBLTASKFEEDBACK
values (975, '가독성을 참 잘했어요');
insert into TBLTASKFEEDBACK
values (976, '알고리즘을 아주 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (977, '알고리즘을 참 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (978, '알고리즘을 정말 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (979, '가독성을 아주 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (980, '가독성을 참 잘했어요');
insert into TBLTASKFEEDBACK
values (981, '가독성을 아주 칭찬합니다');
insert into TBLTASKFEEDBACK
values (982, '알고리즘을 참 아쉽습니다.');
insert into TBLTASKFEEDBACK
values (983, '코딩을 아주 멋지게 했습니다.');
insert into TBLTASKFEEDBACK
values (984, '코딩을 아주 잘했어요');
insert into TBLTASKFEEDBACK
values (985, '코딩을 참 칭찬합니다.');
insert into TBLTASKFEEDBACK
values (986, '가독성을 아주 칭찬합니다');
insert into TBLTASKFEEDBACK
values (987, '가독성을 아주 칭찬합니다');


-- 강의가능과목 데이터 생성
insert into TBLAVAILABLESUBJECT
values (111, 4, 6);
insert into TBLAVAILABLESUBJECT
values (112, 4, 10);
insert into TBLAVAILABLESUBJECT
values (113, 4, 49);
insert into TBLAVAILABLESUBJECT
values (114, 4, 50);
insert into TBLAVAILABLESUBJECT
values (115, 4, 24);
insert into TBLAVAILABLESUBJECT
values (116, 4, 38);

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

------------------------------추가-------------------------------------------------------------------------------------------------------------

-- 개설된 과목 추가
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
-- 과정 6

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
--5일

-- 과정 8

insert into TBLOPENSUBJECT
values (13, '2021-07-28', to_date('2021-07-28', 'yyyy-mm-dd') + 29, 84, 8);
insert into TBLOPENSUBJECT
values (14, to_date('2021-07-28', 'yyyy-mm-dd') + 30, to_date('2021-07-28', 'yyyy-mm-dd') + 46, 93, 8);
insert into TBLOPENSUBJECT
values (15, to_date('2021-07-28', 'yyyy-mm-dd') + 47, to_date('2021-07-28', 'yyyy-mm-dd') + 62, 77, 8);
insert into TBLOPENSUBJECT
values (16, to_date('2021-07-28', 'yyyy-mm-dd') + 63, to_date('2021-07-28', 'yyyy-mm-dd') + 90, 80, 8);
insert into TBLOPENSUBJECT
values (17, to_date('2021-07-28', 'yyyy-mm-dd') + 91, to_date('2021-07-28', 'yyyy-mm-dd') + 105, 66, 8); --15일
insert into TBLOPENSUBJECT
values (18, to_date('2021-07-28', 'yyyy-mm-dd') + 107, to_date('2021-07-28', 'yyyy-mm-dd') + 120, 57, 8); -- 15일


insert into TBLOPENSUBJECT
values (6, '2020-05-28', to_date('2020-05-28', 'yyyy-mm-dd') + 29, 26, 16);
insert into TBLOPENSUBJECT
values (7, to_date('2020-05-28', 'yyyy-mm-dd') + 30, to_date('2020-05-28', 'yyyy-mm-dd') + 46, 18, 16);
insert into TBLOPENSUBJECT
values (8, to_date('2020-05-28', 'yyyy-mm-dd') + 47, to_date('2020-05-28', ' yyyy-mm-dd') + 62, 53, 16);
insert into TBLOPENSUBJECT values(9, to_date('2020-05-28', 'yyyy-mm-dd') + 63, to_date('2020-05-28', ' yyyy-mm-dd') + 90, 7, 16);
insert into TBLOPENSUBJECT values(10, to_date('2020-05-28', 'yyyy-mm-dd') + 91, to_date('2020-05-28', ' yyyy-mm-dd') + 110, 13, 16);
insert into TBLOPENSUBJECT values(11, to_date('2020-05-28', 'yyyy-mm-dd') + 111, to_date('2020-05-28', ' yyyy-mm-dd') + 115, 16, 16);
insert into TBLOPENSUBJECT values(12, to_date('2020-05-28', 'yyyy-mm-dd') + 116, to_date('2020-05-28', ' yyyy-mm-dd') + 120, 35, 16);


--9
-- [추가과목]
-- 13	데이터베이스 구현	15
-- 15	Spring 서버기반의 지능형 웹 통합 개발 프로젝트 구축	10
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


--10
-- [추가과목]
-- 31	AWS 기반 통합 프로젝트	7
-- 33	공공 데이터 분석기법을 활용한 데이터 융합 프로젝트	20
insert into TBLOPENSUBJECT
values (SEQ_TBLOPENSUBJECT.nextval, ' 2021-11-02', to_date(' 2021-11-02', 'yyyy-mm-dd') + 29, 88, 10);
insert into TBLOPENSUBJECT
values (SEQ_TBLOPENSUBJECT.nextval, to_date('2021-11-02', 'yyyy-mm-dd') + 30, to_date(' 2021-11-02', 'yyyy-mm-dd') + 46, 76, 10);
insert into TBLOPENSUBJECT
values (SEQ_TBLOPENSUBJECT.nextval, to_date('2021-11-02', 'yyyy-mm-dd') + 47, to_date(' 2021-11-02', 'yyyy-mm-dd') + 62, 79, 10);
insert into TBLOPENSUBJECT
values (SEQ_TBLOPENSUBJECT.nextval, to_date('2021-11-02', 'yyyy-mm-dd') + 63, to_date(' 2021-11-02', 'yyyy-mm-dd') + 90, 87, 10);
insert into TBLOPENSUBJECT
values (SEQ_TBLOPENSUBJECT.nextval, to_date('2021-11-02', 'yyyy-mm-dd') + 91, to_date(' 2021-11-02', 'yyyy-mm-dd') + 98, 73, 10);
insert into TBLOPENSUBJECT
values (SEQ_TBLOPENSUBJECT.nextval, to_date('2021-11-02', 'yyyy-mm-dd') + 99, to_date(' 2021-11-02', 'yyyy-mm-dd') + 118, 13, 10);

--11
-- [추가과목]
-- 3	클라우드 개발을 위한 자바 기초 프로그래밍	22
-- 45	오픈플랫폼(Arduino)을 활용한 Embedded 융합프로젝트	 14
insert into TBLOPENSUBJECT
values (SEQ_TBLOPENSUBJECT.nextval, '2021-12-01', to_date('2021-12-01', 'yyyy-mm-dd') + 29, 26, 11);
insert into TBLOPENSUBJECT
values (SEQ_TBLOPENSUBJECT.nextval, to_date('2021-12-01', 'yyyy-mm-dd') + 30, to_date('2021-12-01', 'yyyy-mm-dd') + 46, 85, 11);
insert into TBLOPENSUBJECT
values (SEQ_TBLOPENSUBJECT.nextval, to_date('2021-12-01', 'yyyy-mm-dd') + 47, to_date('2021-12-01', 'yyyy-mm-dd') + 62, 82, 11);
insert into TBLOPENSUBJECT
values (SEQ_TBLOPENSUBJECT.nextval, to_date('2021-12-01', 'yyyy-mm-dd') + 63, to_date('2021-12-01', 'yyyy-mm-dd') + 90, 42, 11);
insert into TBLOPENSUBJECT
values (SEQ_TBLOPENSUBJECT.nextval, to_date('2021-12-01', 'yyyy-mm-dd') + 91, to_date('2021-12-01', 'yyyy-mm-dd') + 113, 2, 11);
insert into TBLOPENSUBJECT
values (SEQ_TBLOPENSUBJECT.nextval, to_date('2021-12-01', 'yyyy-mm-dd') + 114, to_date('2021-12-01', 'yyyy-mm-dd') + 127, 23, 11);


INSERT INTO TBLCLASSSCHEDULE (classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (1, '강의종료' ,3,1);
INSERT INTO TBLCLASSSCHEDULE (classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (2, '강의종료' ,2,2);
INSERT INTO TBLCLASSSCHEDULE (classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (3, '강의종료' ,6,3);
INSERT INTO TBLCLASSSCHEDULE (classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (4, '강의종료' ,1,4);
INSERT INTO TBLCLASSSCHEDULE (classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (5, '강의중' ,4,5);
INSERT INTO TBLCLASSSCHEDULE (classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (6, '강의종료' ,4,19);
INSERT INTO TBLCLASSSCHEDULE (classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (7, '강의종료' ,5,20);
INSERT INTO TBLCLASSSCHEDULE (classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (8, '강의종료' ,1,21);
INSERT INTO TBLCLASSSCHEDULE (classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (9, '강의종료' ,2,22);
INSERT INTO TBLCLASSSCHEDULE (classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (10, '강의예정' ,5,23);
INSERT INTO TBLCLASSSCHEDULE (classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (11, '강의예정' ,5,24);
INSERT INTO TBLCLASSSCHEDULE (classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (12, '강의종료' ,6,25);
INSERT INTO TBLCLASSSCHEDULE (classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (13, '강의중' ,4,26);
INSERT INTO TBLCLASSSCHEDULE (classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (14, '강의예정' ,2,27);
INSERT INTO TBLCLASSSCHEDULE (classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (15, '강의예정' ,5,28);
INSERT INTO TBLCLASSSCHEDULE (classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (16, '강의예정' ,6,29);
INSERT INTO TBLCLASSSCHEDULE (classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (17, '강의예정' ,6,30);


insert into tblClassSchedule(classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (35, '강의예정', 1, 47);
insert into tblClassSchedule(classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (36, '강의예정', 6, 48);
insert into tblClassSchedule(classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (37, '강의예정', 8, 49);
insert into tblClassSchedule(classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (38, '강의예정', 4, 50);
insert into tblClassSchedule(classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (39, '강의예정', 6, 51);
insert into tblClassSchedule(classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (40, '강의예정', 6, 14);
insert into tblClassSchedule(classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (41, '강의예정', 2, 15);
insert into tblClassSchedule(classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (42, '강의예정', 3, 16);
insert into tblClassSchedule(classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (43, '강의예정', 1, 17);
insert into tblClassSchedule(classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (44, '강의예정', 3, 18);
insert into tblClassSchedule(classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (45, '강의종료', 5, 6);
insert into tblClassSchedule(classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (46, '강의종료', 1, 7);
insert into tblClassSchedule(classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (47, '강의종료', 3, 8);
insert into tblClassSchedule(classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (48, '강의종료', 4, 9);
insert into tblClassSchedule(classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (49, '강의종료', 2, 10);
insert into tblClassSchedule(classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (50, '강의종료', 2, 11);
insert into tblClassSchedule(classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (51, '강의종료', 9, 12);




INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 95, 75, 176, 6);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 90, 75, 177, 6);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 100, 75, 178, 6);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 70, 85, 179, 6);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 75, 75, 180, 6);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 100, 90, 181, 6);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 95, 100, 182, 6);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 75, 80, 183, 6);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 100, 80, 184, 6);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 75, 80, 185, 6);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 100, 75, 186, 6);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 85, 85, 187, 6);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 95, 85, 188, 6);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 80, 75, 189, 6);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 80, 90, 190, 6);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 70, 100, 191, 6);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 75, 85, 192, 6);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 80, 100, 193, 6);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 85, 90, 194, 6);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 90, 100, 195, 6);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 75, 75, 196, 6);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 90, 95, 197, 6);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 70, 85, 198, 6);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 75, 100, 199, 6);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 95, 70, 200, 6);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 80, 85, 201, 6);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 70, 75, 202, 6);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 70, 75, 203, 6);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 95, 70, 204, 6);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 95, 100, 205, 6);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 100, 100, 176, 7);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 90, 100, 177, 7);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 70, 80, 178, 7);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 80, 75, 179, 7);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 100, 80, 180, 7);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 100, 85, 181, 7);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 90, 75, 182, 7);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 80, 100, 183, 7);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 70, 85, 184, 7);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 100, 95, 185, 7);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 80, 85, 186, 7);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 90, 80, 187, 7);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 70, 70, 188, 7);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 80, 75, 189, 7);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 90, 100, 190, 7);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 75, 80, 191, 7);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 90, 80, 192, 7);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 85, 95, 193, 7);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 95, 95, 194, 7);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 95, 70, 195, 7);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 100, 95, 196, 7);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 100, 95, 197, 7);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 100, 70, 198, 7);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 85, 75, 199, 7);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 75, 70, 200, 7);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 100, 80, 201, 7);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 70, 100, 202, 7);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 75, 100, 203, 7);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 75, 70, 204, 7);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 100, 80, 205, 7);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 90, 85, 176, 8);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 90, 90, 177, 8);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 80, 85, 178, 8);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 85, 85, 179, 8);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 95, 75, 180, 8);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 90, 85, 181, 8);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 70, 100, 182, 8);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 95, 100, 183, 8);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 90, 80, 184, 8);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 80, 85, 185, 8);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 80, 90, 186, 8);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 90, 75, 187, 8);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 80, 75, 188, 8);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 80, 80, 189, 8);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 70, 95, 190, 8);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 85, 100, 191, 8);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 95, 80, 192, 8);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 95, 85, 193, 8);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 75, 70, 194, 8);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 85, 70, 195, 8);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 85, 85, 196, 8);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 95, 75, 197, 8);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 70, 75, 198, 8);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 75, 95, 199, 8);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 75, 90, 200, 8);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 75, 95, 201, 8);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 70, 100, 202, 8);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 75, 85, 203, 8);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 75, 70, 204, 8);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 85, 70, 205, 8);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 80, 100, 176, 9);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 100, 80, 177, 9);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 100, 80, 178, 9);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 85, 75, 179, 9);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 85, 80, 180, 9);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 90, 85, 181, 9);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 100, 70, 182, 9);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 95, 85, 183, 9);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 100, 80, 184, 9);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 75, 75, 185, 9);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 85, 85, 186, 9);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 95, 85, 187, 9);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 100, 80, 188, 9);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 95, 80, 189, 9);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 75, 70, 190, 9);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 85, 90, 191, 9);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 75, 85, 192, 9);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 70, 70, 193, 9);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 75, 70, 194, 9);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 90, 85, 195, 9);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 100, 80, 196, 9);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 85, 100, 197, 9);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 85, 100, 198, 9);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 80, 70, 199, 9);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 80, 95, 200, 9);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 85, 95, 201, 9);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 90, 90, 202, 9);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 85, 100, 203, 9);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 90, 100, 204, 9);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 85, 85, 205, 9);


INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,95,75,176,10);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,100,90,177,10);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,80,95,178,10);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,90,70,179,10);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,75,75,180,10);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,85,75,181,10);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,70,80,182,10);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,90,95,183,10);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,85,70,184,10);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,85,95,185,10);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,95,75,186,10);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,85,90,187,10);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,95,95,188,10);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,85,85,189,10);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,90, 100,190,10);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,75, 100,191,10);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,70,70,192,10);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,80, 100,193,10);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,80,90,194,10);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,75,75,195,10);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,85,95,196,10);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,70,70,197,10);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,70, 100,198,10);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,85,70,199,10);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,75,75,200,10);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,90,90,201,10);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,70,90,202,10);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,75,80,203,10);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,70,95,204,10);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,90,70,205,10);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,95,75,176,11);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,100,90,177,11);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,80,95,178,11);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,90,70,179,11);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,75,75,180,11);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,85,75,181,11);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,70,80,182,11);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,90,95,183,11);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,85,70,184,11);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,85,95,185,11);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,95,75,186,11);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,85,90,187,11);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,95,95,188,11);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,85,85,189,11);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,90, 100,190,11);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,75, 100,191,11);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,70,70,192,11);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,80, 100,193,11);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,80,90,194,11);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,75,75,195,11);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,85,95,196,11);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,70,70,197,11);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,70, 100,198,11);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,85,70,199,11);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,75,75,200,11);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,90,90,201,11);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,70,90,202,11);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,75,80,203,11);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,70,95,204,11);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,90,70,205,11);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,95,75,176,12);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,100,90,177,12);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,80,95,178,12);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,90,70,179,12);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,75,75,180,12);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,85,75,181,12);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,70,80,182,12);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,90,95,183,12);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,85,70,184,12);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,85,95,185,12);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,95,75,186,12);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,85,90,187,12);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,95,95,188,12);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,85,85,189,12);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,90, 100,190,12);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,75, 100,191,12);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,70,70,192,12);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,80, 100,193,12);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,80,90,194,12);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,75,75,195,12);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,85,95,196,12);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,70,70,197,12);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,70, 100,198,12);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,85,70,199,12);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,75,75,200,12);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,90,90,201,12);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,70,90,202,12);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,75,80,203,12);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,70,95,204,12);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)  values (seq_tblGrade.nextVal,90,70,205,12);



INSERT INTO tblTeam(teamSeq,classSeq, teamName)  values (seq_tblTeam.nextVal,1,1);
INSERT INTO tblTeam(teamSeq,classSeq, teamName)  values (seq_tblTeam.nextVal,2,1);
INSERT INTO tblTeam(teamSeq,classSeq, teamName)  values (seq_tblTeam.nextVal,3,1);
INSERT INTO tblTeam(teamSeq,classSeq, teamName)  values (seq_tblTeam.nextVal,4,1);
INSERT INTO tblTeam(teamSeq,classSeq, teamName)  values (seq_tblTeam.nextVal,5,1);
INSERT INTO tblTeam(teamSeq,classSeq, teamName)  values (seq_tblTeam.nextVal,6,1);
INSERT INTO tblTeam(teamSeq,classSeq, teamName)  values (seq_tblTeam.nextVal,7,2);
INSERT INTO tblTeam(teamSeq,classSeq, teamName)  values (seq_tblTeam.nextVal,8,2);
INSERT INTO tblTeam(teamSeq,classSeq, teamName)  values (seq_tblTeam.nextVal,9,2);
INSERT INTO tblTeam(teamSeq,classSeq, teamName)  values (seq_tblTeam.nextVal,10,2);
INSERT INTO tblTeam(teamSeq,classSeq, teamName)  values (seq_tblTeam.nextVal,11,2);
INSERT INTO tblTeam(teamSeq,classSeq, teamName)  values (seq_tblTeam.nextVal,12,2);
INSERT INTO tblTeam(teamSeq,classSeq, teamName)  values (seq_tblTeam.nextVal,13,3);
INSERT INTO tblTeam(teamSeq,classSeq, teamName)  values (seq_tblTeam.nextVal,14,3);
INSERT INTO tblTeam(teamSeq,classSeq, teamName)  values (seq_tblTeam.nextVal,15,3);
INSERT INTO tblTeam(teamSeq,classSeq, teamName)  values (seq_tblTeam.nextVal,16,3);
INSERT INTO tblTeam(teamSeq,classSeq, teamName)  values (seq_tblTeam.nextVal,17,3);
INSERT INTO tblTeam(teamSeq,classSeq, teamName)  values (seq_tblTeam.nextVal,18,3);
INSERT INTO tblTeam(teamSeq,classSeq, teamName)  values (seq_tblTeam.nextVal,19,4);
INSERT INTO tblTeam(teamSeq,classSeq, teamName)  values (seq_tblTeam.nextVal,20,4);
INSERT INTO tblTeam(teamSeq,classSeq, teamName)  values (seq_tblTeam.nextVal,21,4);
INSERT INTO tblTeam(teamSeq,classSeq, teamName)  values (seq_tblTeam.nextVal,22,4);
INSERT INTO tblTeam(teamSeq,classSeq, teamName)  values (seq_tblTeam.nextVal,23,4);
INSERT INTO tblTeam(teamSeq,classSeq, teamName)  values (seq_tblTeam.nextVal,24,4);
INSERT INTO tblTeam(teamSeq,classSeq, teamName)  values (seq_tblTeam.nextVal,25,5);
INSERT INTO tblTeam(teamSeq,classSeq, teamName)  values (seq_tblTeam.nextVal,26,5);
INSERT INTO tblTeam(teamSeq,classSeq, teamName)  values (seq_tblTeam.nextVal,27,5);
INSERT INTO tblTeam(teamSeq,classSeq, teamName)  values (seq_tblTeam.nextVal,28,5);
INSERT INTO tblTeam(teamSeq,classSeq, teamName)  values (seq_tblTeam.nextVal,29,5);
INSERT INTO tblTeam(teamSeq,classSeq, teamName)  values (seq_tblTeam.nextVal,30,5);

insert into tblClass values(seq_tblClass.nextVal,84,12);
insert into tblClass values(seq_tblClass.nextVal,89,12);
insert into tblClass values(seq_tblClass.nextVal,91,12);
insert into tblClass values(seq_tblClass.nextVal,97,12);
insert into tblClass values(seq_tblClass.nextVal,100,12);
insert into tblClass values(seq_tblClass.nextVal,105,12);
insert into tblClass values(seq_tblClass.nextVal,112,12);
insert into tblClass values(seq_tblClass.nextVal,113,12);
insert into tblClass values(seq_tblClass.nextVal,116,12);
insert into tblClass values(seq_tblClass.nextVal,118,12);
insert into tblClass values(seq_tblClass.nextVal,120,12);
insert into tblClass values(seq_tblClass.nextVal,126,12);
insert into tblClass values(seq_tblClass.nextVal,128,12);
insert into tblClass values(seq_tblClass.nextVal,131,12);
insert into tblClass values(seq_tblClass.nextVal,135,12);
insert into tblClass values(seq_tblClass.nextVal,136,12);
insert into tblClass values(seq_tblClass.nextVal,142,12);
insert into tblClass values(seq_tblClass.nextVal,145,12);
insert into tblClass values(seq_tblClass.nextVal,148,12);
insert into tblClass values(seq_tblClass.nextVal,152,12);
insert into tblClass values(seq_tblClass.nextVal,154,12);
insert into tblClass values(seq_tblClass.nextVal,158,12);
insert into tblClass values(seq_tblClass.nextVal,163,12);
insert into tblClass values(seq_tblClass.nextVal,167,12);
insert into tblClass values(seq_tblClass.nextVal,173,12);
insert into tblClass values(seq_tblClass.nextVal,184,12);
insert into tblClass values(seq_tblClass.nextVal,185,12);
insert into tblClass values(seq_tblClass.nextVal,193,12);
insert into tblClass values(seq_tblClass.nextVal,204,12);
insert into tblClass values(seq_tblClass.nextVal,206,12);

insert into tblClass values(seq_tblClass.nextVal,153,13);
insert into tblClass values(seq_tblClass.nextVal,155,13);
insert into tblClass values(seq_tblClass.nextVal,296,13);
insert into tblClass values(seq_tblClass.nextVal,297,13);
insert into tblClass values(seq_tblClass.nextVal,298,13);
insert into tblClass values(seq_tblClass.nextVal,300,13);
insert into tblClass values(seq_tblClass.nextVal,301,13);

insert into tblClass values(seq_tblClass.nextVal,207,14);
insert into tblClass values(seq_tblClass.nextVal,210,14);
insert into tblClass values(seq_tblClass.nextVal,213,14);
insert into tblClass values(seq_tblClass.nextVal,214,14);
insert into tblClass values(seq_tblClass.nextVal,215,14);
insert into tblClass values(seq_tblClass.nextVal,219,14);
insert into tblClass values(seq_tblClass.nextVal,222,14);
insert into tblClass values(seq_tblClass.nextVal,224,14);
insert into tblClass values(seq_tblClass.nextVal,228,14);
insert into tblClass values(seq_tblClass.nextVal,232,14);
insert into tblClass values(seq_tblClass.nextVal,234,14);
insert into tblClass values(seq_tblClass.nextVal,241,14);
insert into tblClass values(seq_tblClass.nextVal,245,14);
insert into tblClass values(seq_tblClass.nextVal,249,14);
insert into tblClass values(seq_tblClass.nextVal,250,14);
insert into tblClass values(seq_tblClass.nextVal,252,14);
insert into tblClass values(seq_tblClass.nextVal,255,14);
insert into tblClass values(seq_tblClass.nextVal,256,14);
insert into tblClass values(seq_tblClass.nextVal,258,14);
insert into tblClass values(seq_tblClass.nextVal,263,14);
insert into tblClass values(seq_tblClass.nextVal,265,14);
insert into tblClass values(seq_tblClass.nextVal,275,14);
insert into tblClass values(seq_tblClass.nextVal,276,14);
insert into tblClass values(seq_tblClass.nextVal,280,14);
insert into tblClass values(seq_tblClass.nextVal,287,14);
insert into tblClass values(seq_tblClass.nextVal,288,14);
insert into tblClass values(seq_tblClass.nextVal,289,14);
insert into tblClass values(seq_tblClass.nextVal,290,14);
insert into tblClass values(seq_tblClass.nextVal,291,14);
insert into tblClass values(seq_tblClass.nextVal,295,14);


-- 수빈
--31 45까지
update tblstudent
set FAILDATE = add_months(retdate, 1)
where STUDENTSEQ = 199;

-- 12,강의완료,등록,30,2020-01-05 00:00:00,2020-07-05 00:00:00,1,1
--13,강의완료,등록,26,2020-02-08 00:00:00,2020-07-23 00:00:00,7,4
--14,강의완료,등록,30,2020-03-29 00:00:00,2020-10-29 00:00:00,10,2

-- Java OpenJDK Programming, 29
--오라클을 사용한 RDBMS의 SQL과 PL/SQL, 17
--Front-end 클라이언트 화면설계 및 구현, 16
--Back-end 서버프로그래밍 설계 및 구현, 28


-- 12,강의완료,등록,30,2020-01-05 00:00:00,2020-07-05 00:00:00,1,1
--AWS 기반 통합 프로젝트, 7    -> subjectseq -> 31
--임베디드 애플리케이션 구현, 5 ->    32

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


--13,강의완료,등록,26,2020-02-08 00:00:00,2020-07-23 00:00:00,7,4
--콘텐츠 추천 알고리즘 기법, 5 -> 39
--아두이노를 활용한 임베디드 프로그래밍, 23 -> 40

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


--14,강의완료,등록,30,2020-03-29 00:00:00,2020-10-29 00:00:00,10,2
--멀티 플랫폼 기반 융합 실무 프로젝트, 7 -> 41
--임베디드 애플리케이션 구현, 9 -> 42

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

-- gradeSeq	writeGrade	 performGrade	 attendGrade	  classSeq	examSeq
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 95, 75, 1, 1);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 90, 75, 2, 1);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 100, 75, 3, 1);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 70, 85, 4, 1);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 75, 75, 5, 1);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 100, 90, 6, 1);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 95, 100, 7, 1);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 75, 80, 8, 1);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 100, 80, 9, 1);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 75, 80, 10, 1);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 100, 75, 11, 1);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 85, 85, 12, 1);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 95, 85, 13, 1);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 80, 75, 14, 1);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 80, 90, 15, 1);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 70, 100, 16, 1);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 75, 85, 17, 1);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 80, 100, 18, 1);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 85, 90, 19, 1);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 90, 100, 20, 1);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 75, 75, 21, 1);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 90, 95, 22, 1);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 70, 85, 23, 1);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 75, 100, 24, 1);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 95, 70, 25, 1);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 80, 85, 26, 1);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 70, 75, 27, 1);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 70, 75, 28, 1);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 95, 70, 29, 1);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 95, 100, 30, 1);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 100, 100, 1, 2);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 90, 100, 2, 2);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 70, 80, 3, 2);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 80, 75, 4, 2);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 100, 80, 5, 2);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 100, 85, 6, 2);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 90, 75, 7, 2);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 80, 100, 8, 2);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 70, 85, 9, 2);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 100, 95, 10, 2);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 80, 85, 11, 2);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 90, 80, 12, 2);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 70, 70, 13, 2);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 80, 75, 14, 2);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 90, 100, 15, 2);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 75, 80, 16, 2);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 90, 80, 17, 2);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 85, 95, 18, 2);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 95, 95, 19, 2);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 95, 70, 20, 2);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 100, 95, 21, 2);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 100, 95, 22, 2);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 100, 70, 23, 2);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 85, 75, 24, 2);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 75, 70, 25, 2);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 100, 80, 26, 2);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 70, 100, 27, 2);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 75, 100, 28, 2);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 75, 70, 29, 2);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 100, 80, 30, 2);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 90, 85, 1, 3);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 90, 90, 2, 3);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 80, 85, 3, 3);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 85, 85, 4, 3);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 95, 75, 5, 3);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 90, 85, 6, 3);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 70, 100, 7, 3);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 95, 100, 8, 3);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 90, 80, 9, 3);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 80, 85, 10, 3);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 80, 90, 11, 3);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 90, 75, 12, 3);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 80, 75, 13, 3);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 80, 80, 14, 3);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 70, 95, 15, 3);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 85, 100, 16, 3);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 95, 80, 17, 3);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 95, 85, 18, 3);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 75, 70, 19, 3);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 85, 70, 20, 3);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 85, 85, 21, 3);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 95, 75, 22, 3);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 70, 75, 23, 3);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 75, 95, 24, 3);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 75, 90, 25, 3);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 75, 95, 26, 3);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 70, 100, 27, 3);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 75, 85, 28, 3);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 75, 70, 29, 3);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 85, 70, 30, 3);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 80, 100, 1, 4);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 100, 80, 2, 4);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 100, 80, 3, 4);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 85, 75, 4, 4);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 85, 80, 5, 4);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 90, 85, 6, 4);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 100, 70, 7, 4);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 95, 85, 8, 4);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 100, 80, 9, 4);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 75, 75, 10, 4);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 85, 85, 11, 4);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 95, 85, 12, 4);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 100, 80, 13, 4);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 95, 80, 14, 4);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 75, 70, 15, 4);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 85, 90, 16, 4);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 75, 85, 17, 4);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 70, 70, 18, 4);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 75, 70, 19, 4);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 90, 85, 20, 4);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 100, 80, 21, 4);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 85, 100, 22, 4);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 85, 100, 23, 4);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 80, 70, 24, 4);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 80, 95, 25, 4);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 85, 95, 26, 4);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 90, 90, 27, 4);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 85, 100, 28, 4);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 90, 100, 29, 4);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 85, 85, 30, 4);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 95, 75, 1, 5);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 100, 90, 2, 5);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 80, 95, 3, 5);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 90, 70, 4, 5);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 75, 75, 5, 5);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 85, 75, 6, 5);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 70, 80, 7, 5);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 90, 95, 8, 5);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 85, 70, 9, 5);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 85, 95, 10, 5);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 95, 75, 11, 5);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 85, 90, 12, 5);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 95, 95, 13, 5);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 85, 85, 14, 5);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 90, 100, 15, 5);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 75, 100, 16, 5);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 70, 70, 17, 5);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 80, 100, 18, 5);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 80, 90, 19, 5);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 75, 75, 20, 5);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 85, 95, 21, 5);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 70, 70, 22, 5);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 70, 100, 23, 5);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 85, 70, 24, 5);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 75, 75, 25, 5);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 90, 90, 26, 5);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 70, 90, 27, 5);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 75, 80, 28, 5);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 70, 95, 29, 5);
INSERT INTO tblGrade(gradeseq, writeGrade, performGrade, classSeq, examSeq)
values (seq_tblGrade.nextVal, 90, 70, 30, 5);

-- INSERT INTO tblClassSchedule(classScheduleSeq, classState, teacherSeq, openSubjectSeq)  values (seq_tblGrade.nextVal,90,70,30,5);

INSERT INTO TBLCLASSSCHEDULE (classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (1, '강의종료' ,3,1);
INSERT INTO TBLCLASSSCHEDULE (classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (2, '강의종료' ,2,2);
INSERT INTO TBLCLASSSCHEDULE (classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (3, '강의종료' ,6,3);
INSERT INTO TBLCLASSSCHEDULE (classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (4, '강의종료' ,1,4);
INSERT INTO TBLCLASSSCHEDULE (classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (5, '강의중' ,4,5);
INSERT INTO TBLCLASSSCHEDULE (classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (6, '강의종료' ,4,19);
INSERT INTO TBLCLASSSCHEDULE (classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (7, '강의종료' ,5,20);
INSERT INTO TBLCLASSSCHEDULE (classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (8, '강의종료' ,1,21);
INSERT INTO TBLCLASSSCHEDULE (classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (9, '강의종료' ,2,22);
INSERT INTO TBLCLASSSCHEDULE (classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (10, '강의예정' ,5,23);
INSERT INTO TBLCLASSSCHEDULE (classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (11, '강의예정' ,5,24);
INSERT INTO TBLCLASSSCHEDULE (classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (12, '강의종료' ,6,25);
INSERT INTO TBLCLASSSCHEDULE (classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (13, '강의중' ,4,26);
INSERT INTO TBLCLASSSCHEDULE (classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (14, '강의예정' ,2,27);
INSERT INTO TBLCLASSSCHEDULE (classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (15, '강의예정' ,5,28);
INSERT INTO TBLCLASSSCHEDULE (classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (16, '강의예정' ,6,29);
INSERT INTO TBLCLASSSCHEDULE (classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (17, '강의예정' ,6,30);


INSERT INTO tblClassSchedule(classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (18, '강의예정', 6, 31);
INSERT INTO tblClassSchedule(classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (19, '강의종료', 1, 32);
INSERT INTO tblClassSchedule(classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (20, '강의종료', 6, 33);
INSERT INTO tblClassSchedule(classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (21, '강의중', 2, 34);
INSERT INTO tblClassSchedule(classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (22, '강의예정', 4, 35);
INSERT INTO tblClassSchedule(classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (23, '강의예정', 5, 36);
INSERT INTO tblClassSchedule(classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (24, '강의예정', 5, 37);
INSERT INTO tblClassSchedule(classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (25, '강의중', 5, 38);
INSERT INTO tblClassSchedule(classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (26, '강의예정', 3, 39);
INSERT INTO tblClassSchedule(classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (27, '강의예정', 3, 40);
INSERT INTO tblClassSchedule(classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (28, '강의예정', 5, 41);
INSERT INTO tblClassSchedule(classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (29, '강의예정', 2, 42);
INSERT INTO tblClassSchedule(classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (30, '강의예정', 9, 43);
INSERT INTO tblClassSchedule(classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (31, '강의예정', 5, 44);
INSERT INTO tblClassSchedule(classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (32, '강의예정', 2, 13);
INSERT INTO tblClassSchedule(classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (33, '강의중', 5, 45);
INSERT INTO tblClassSchedule(classScheduleSeq, classState, teacherSeq, openSubjectSeq)
values (34, '강의예정', 5, 46);


--성적 출결 점수
DECLARE
    VSCORE NUMBER := 20;
    vstart date   := to_date('2020-10-30', 'YYYY-MM-DD');
    vend   date   := to_date('2020-11-05', 'YYYY-MM-DD');
    vstate varchar2(10);
    CURSOR VCURSOR IS SELECT ATTENDANCE
                      FROM TBLATTEND
                      WHERE CLASSSEQ = 205
                        AND INTIME BETWEEN VSTART AND VEND;
BEGIN
    OPEN VCURSOR;
    LOOP
        FETCH VCURSOR INTO VSTATE;
        EXIT WHEN VCURSOR%NOTFOUND;
        IF VSTATE = '기타'
        THEN
            VSCORE := VSCORE - 3;
        ELSIF VSTATE = '지각'
        THEN
            VSCORE := VSCORE - 1;
        ELSIF VSTATE = '조퇴'
        THEN
            VSCORE := VSCORE - 1;
        END IF;
        EXIT WHEN VCURSOR%NOTFOUND;
    END LOOP;
    CLOSE VCURSOR;
    UPDATE TBLGRADE SET ATTENDGRADE = VSCORE WHERE GRADESEQ = 210;
END;

-- 교육생 추가
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '길택헌',2725934,'010-2042-5683','2020-07-08',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '정춘솔',1562272,'010-9272-1973','2020-07-08',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '신근모',1732496,'010-1799-3148','2020-07-08',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '현시해',1702701,'010-7025-9354','2020-07-08',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '추량철',1899243,'010-8980-4313','2020-07-08',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '권랑예',1044679,'010-7914-0952','2020-07-08',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '심남윤',2671024,'010-9451-7088','2020-07-08',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '설란항',1648789,'010-5988-6778','2020-07-08',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '원세한',2192339,'010-2187-1644','2020-07-08',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '유옥식',1513772,'010-4075-5051','2020-07-08',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '추민타',1602534,'010-2589-2347','2020-07-08',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '석혁웅',1290228,'010-0425-5522','2020-07-08',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '도오광',2907019,'010-4368-1144','2020-07-08',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '맹형혼',2459430,'010-0282-6497','2020-07-08',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '장사오',2127349,'010-9897-8304','2020-07-08',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '방부래',1595801,'010-3525-5806','2020-07-08',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '박정휘',2459531,'010-3679-5732','2020-07-08',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '전권면',2753596,'010-9329-6639','2020-07-08',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '서헌견',1375075,'010-4736-3609','2020-07-08',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '백시휴',2980822,'010-8197-5322','2020-04-12',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '엄치길',1342938,'010-9849-2579','2020-04-12',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '전배헌',2075966,'010-9266-0378','2020-04-12',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '오노반',1937513,'010-8941-4366','2020-04-12',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '권용서',1873746,'010-1831-0087','2020-04-12',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '조찬세',1074897,'010-6546-3622','2020-04-12',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '장정부',1599175,'010-3374-7788','2020-04-12',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '전택배',2890522,'010-7009-6909','2020-04-12',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '허곤늘',2215513,'010-7053-5904','2020-04-12',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '허누비',1777262,'010-0282-7068','2020-04-12',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '황철후',1774541,'010-8418-1323','2020-04-12',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '조이솜',2557551,'010-7202-7172','2020-04-12',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '윤잔명',1636339,'010-6907-4259','2020-04-12',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '맹판연',2785013,'010-0088-7597','2020-04-12',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '신유영',1707786,'010-5650-9265','2020-04-12',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '안면리',2473734,'010-3267-9298','2020-04-12',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '오비민',1667618,'010-6982-6953','2020-04-12',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '기헌광',1011728,'010-6308-1975','2020-04-12',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '강완인',1824022,'010-6271-5241','2020-04-12',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '엄마봉',2714700,'010-3042-5569','2020-04-12',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '방더규',2387498,'010-9684-7175','2020-04-12',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '차누무',1836077,'010-7962-7954','2020-04-12',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '공종잔',2834076,'010-2788-3715','2020-04-12',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '방남장',2230487,'010-8866-7672','2020-04-12',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '허옥배',2854722,'010-1553-8060','2020-04-12',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '신권헌',1049051,'010-7009-5810','2020-04-12',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '석소술',2212586,'010-1794-0770','2020-04-12',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '진학안',1783535,'010-6223-6695','2020-04-12',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '은린마',2945803,'010-2298-9117','2020-04-12',1,'수강완료','수료');
insert into tblStudent (studentseq, name, password, tel, retdate, classcount, status, completionStatus) values(seq_tblStudent.nextVal, '기익란',2440832,'010-1140-3537','2020-04-12',1,'수강완료','수료');

-- 취업처
INSERT INTO tblCompany VALUES (seq_tblCompany.nextVal, '주성엔지니어링㈜', 3500, '대기업','서울','비정규직');
INSERT INTO tblCompany VALUES (seq_tblCompany.nextVal, '에듀베이션(주)', 2500, '중소기업', '서울','정규직');
INSERT INTO tblCompany VALUES (seq_tblCompany.nextVal, '아이티메세지', 2400, '중소기업', '구로','정규직');
INSERT INTO tblCompany VALUES (seq_tblCompany.nextVal, '(주)모바일엔트로피', 2460, '중소기업','판교','정규직');
INSERT INTO tblCompany VALUES (seq_tblCompany.nextVal, '디케이아이테크놀러지', 2500, '중소기업',  '서울','정규직');
INSERT INTO tblCompany VALUES (seq_tblCompany.nextVal, '바이텍시스템', 2500, '중소기업', '서울','정규직');
INSERT INTO tblCompany VALUES (seq_tblCompany.nextVal, '(주)퓨처젠', 2600, '중소기업', '판교','비정규직');
INSERT INTO tblCompany VALUES (seq_tblCompany.nextVal, '크리니티', 2600, '중소기업',  '구로','정규직');
INSERT INTO tblCompany VALUES (seq_tblCompany.nextVal, '유알피시스템', 2700, '중견기업',  '서울','정규직');
INSERT INTO tblCompany VALUES (seq_tblCompany.nextVal, '엠씨에스텍', 2400, '중소기업', '서울','비정규직');
INSERT INTO tblCompany VALUES (seq_tblCompany.nextVal, '㈜아이디룩', 2400, '중소기업', '가산','정규직');
INSERT INTO tblCompany VALUES (seq_tblCompany.nextVal, '에이비씨솔루션', 2400, '중소기업', '서울','정규직');
INSERT INTO tblCompany VALUES (seq_tblCompany.nextVal, '보고정보시스템', 2400, '중소기업', '구로','비정규직');
INSERT INTO tblCompany VALUES (seq_tblCompany.nextVal, '(주)슈피겐코리아', 2800, '중견기업','구로','정규직');
INSERT INTO tblCompany VALUES (seq_tblCompany.nextVal, '코레일네트웍스(주)', 3300, '대기업',  '서울','비정규직');
INSERT INTO tblCompany VALUES (seq_tblCompany.nextVal, '쥬비스그룹', 2600, '중소기업', '구로','정규직');
INSERT INTO tblCompany VALUES (seq_tblCompany.nextVal, '더존비즈온', 3000, '중견기업', '판교','정규직');
INSERT INTO tblCompany VALUES (seq_tblCompany.nextVal, '직방', 2800, '중소기업', '판교','비정규직');
INSERT INTO tblCompany VALUES (seq_tblCompany.nextVal, '전주비전대학교', 2600, '중소기업', '구로','정규직');
INSERT INTO tblCompany VALUES (seq_tblCompany.nextVal, '오픈에스지', 3000, '중견기업', '가산','정규직');
INSERT INTO tblCompany VALUES (seq_tblCompany.nextVal, '서현커뮤니케이션', 2800, '중소기업', '가산','비정규직');
INSERT INTO tblCompany VALUES (seq_tblCompany.nextVal, 'idoogen', 2800, '중견기업', '판교','정규직');
INSERT INTO tblCompany VALUES (seq_tblCompany.nextVal, '엔백', 2800, '중소기업','가산','비정규직');
INSERT INTO tblCompany VALUES (seq_tblCompany.nextVal, '해커스어학원', 2600, '중소기업','구로','정규직');
INSERT INTO tblCompany VALUES (seq_tblCompany.nextVal, '(주)SAF반도체', 3000, '대기업', '판교','정규직');





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


-- [현재]
-- 1 체제원 1 3 7 11 13 16 50 25 30 42
-- 2 곽우신 1 3 4 33 24 12 44 23  10
-- 3 이응수 10  1  21 11 18 16 2 6
-- 4 이창익 32 8 16 24 27 35 37 42 48 12
-- 5 박세인 7 11 16 29 32  50 24 22 14
-- 6 이규미 23 2 5 9 14 18 23  49
--
-- [대기] 강의가능과목에만 들어가면 된다.
-- 김호진 42 12 18 23 40
-- 김현룡 22 11 13 15 43
-- 김대기 16 24 28 35 39
-- 한장희 12 16 23 29 31

-- 1 체제원 1 3 7 11 13 16 50 25 30 42
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 1, 1);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 1, 3);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 1, 7);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 1, 11);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 1, 13);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 1, 16);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 1, 50);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 1, 25);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 1, 30);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 1, 42);

-- 2 곽우신 1 3 4 33 24 12 44 23  10
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 2, 3);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 2, 4);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 2, 33);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 2, 24);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 2, 12);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 2, 44);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 2, 23);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 2, 10);


-- 3 이응수 10  1  21 11 18 16 2 6
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 3, 10);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 3, 1);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 3, 21);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 3, 11);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 3, 18);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 3, 16);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 3, 2);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 3, 6);

-- 4 이창익 32 8 16 24 27 36 37 42 48 12
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 4, 32);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 4, 8);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 4, 16);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 4, 24);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 4, 27);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 4, 36);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 4, 37);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 4, 42);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 4, 48);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 4, 12);
-- 5 박세인 7 11 16 29 32  50 24 22 14
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 5, 7);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 5, 11);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 5, 16);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 5, 29);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 5, 32);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 5, 50);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 5, 24);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 5, 22);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 5, 14);
-- 6 이규미 23 2 5 9 14 18 23  49
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 6, 23);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 6, 2);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 6, 5);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 6, 9);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 6, 14);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 6, 18);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 6, 23);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 6, 49);
--
-- [대기] 강의가능과목에만 들어가면 된다.
-- 김호진 42 12 18 23 40
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 7, 42);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 7, 12);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 7, 18);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 7, 23);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 7, 40);
-- 김현룡 22 11 13 15 43
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 8, 22);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 8, 11);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 8, 13);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 8, 15);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 8, 43);
-- 김대기 16 24 28 35 39
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 9, 16);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 9, 24);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 9, 28);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 9, 35);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 9, 39);
-- 한장희 12 16 23 29 31
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 10, 12);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 10, 16);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 10, 23);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 10, 29);
insert into TBLAVAILABLESUBJECT values (SEQ_TBLAVAILABLESUBJECT.nextval, 10, 31);

insert into tblopensubject values (SEQ_TBLOPENSUBJECT.nextval, to_date('2021-01-05', 'yyyy-mm-dd'),
                                   to_date('2021-01-05', 'yyyy-mm-dd')+29, 6, 1);
insert into tblopensubject values (SEQ_TBLOPENSUBJECT.nextval, to_date('2021-01-05', 'yyyy-mm-dd')+30,
                                   to_date('2021-01-05', 'yyyy-mm-dd')+46, 10, 1);
insert into tblopensubject values (SEQ_TBLOPENSUBJECT.nextval, to_date('2021-01-05', 'yyyy-mm-dd')+47,
                                   to_date('2021-01-05', 'yyyy-mm-dd')+63, 49, 1);
insert into tblopensubject values (SEQ_TBLOPENSUBJECT.nextval, to_date('2021-01-05', 'yyyy-mm-dd')+64,
                                   to_date('2021-01-05', 'yyyy-mm-dd')+91, 50, 1);
insert into tblopensubject values (SEQ_TBLOPENSUBJECT.nextval, to_date('2021-01-05', 'yyyy-mm-dd')+92,
                                   to_date('2021-01-05', 'yyyy-mm-dd')+120, 36, 1);


-- 과목 변경
update tblsubject set bookseq=4 where SUBJECTSEQ=2;
update tblsubject set bookseq=1 where SUBJECTSEQ=3;
update tblsubject set bookseq=1 where SUBJECTSEQ=4;
update tblsubject set bookseq=4 where SUBJECTSEQ=5;
update tblsubject set bookseq=1 where SUBJECTSEQ=6;
update tblsubject set bookseq=1 where SUBJECTSEQ=7;
update tblsubject set bookseq=4 where SUBJECTSEQ=8;

update tblsubject set bookseq=2 where SUBJECTSEQ=9;
update tblsubject set bookseq=2 where SUBJECTSEQ=10;
update tblsubject set bookseq=2 where SUBJECTSEQ=11;
update tblsubject set bookseq=2 where SUBJECTSEQ=12;
update tblsubject set bookseq=2 where SUBJECTSEQ=13;
update tblsubject set bookseq=2 where SUBJECTSEQ=14;
update tblsubject set bookseq=16 where SUBJECTSEQ=15;

update tblsubject set bookseq=25 where SUBJECTSEQ=16;
update tblsubject set bookseq=10 where SUBJECTSEQ=17;
update tblsubject set bookseq=17 where SUBJECTSEQ=18;
update tblsubject set bookseq=13 where SUBJECTSEQ=19;
update tblsubject set bookseq=19 where SUBJECTSEQ=20;
update tblsubject set bookseq=12 where SUBJECTSEQ=21;
update tblsubject set bookseq=14 where SUBJECTSEQ=22;
update tblsubject set bookseq=17 where SUBJECTSEQ=23;
update tblsubject set bookseq=13 where SUBJECTSEQ=24;
update tblsubject set bookseq=19 where SUBJECTSEQ=25;
update tblsubject set bookseq=18 where SUBJECTSEQ=26;
update tblsubject set bookseq=10 where SUBJECTSEQ=27;
update tblsubject set bookseq=10 where SUBJECTSEQ=28;
update tblsubject set bookseq=10 where SUBJECTSEQ=29;
update tblsubject set bookseq=7 where SUBJECTSEQ=30;
update tblsubject set bookseq=7 where SUBJECTSEQ=31;
update tblsubject set bookseq=22 where SUBJECTSEQ=32;
update tblsubject set bookseq=26 where SUBJECTSEQ=33;
update tblsubject set bookseq=22 where SUBJECTSEQ=34;
update tblsubject set bookseq=8 where SUBJECTSEQ=35;
update tblsubject set bookseq=7 where SUBJECTSEQ=36;
update tblsubject set bookseq=20 where SUBJECTSEQ=37;
update tblsubject set bookseq=13 where SUBJECTSEQ=38;
update tblsubject set bookseq=15 where SUBJECTSEQ=39;
update tblsubject set bookseq=22 where SUBJECTSEQ=40;
update tblsubject set bookseq=25 where SUBJECTSEQ=41;
update tblsubject set bookseq=22 where SUBJECTSEQ=42;
update tblsubject set bookseq=15 where SUBJECTSEQ=43;
update tblsubject set bookseq=15 where SUBJECTSEQ=44;
update tblsubject set bookseq=22 where SUBJECTSEQ=45;
update tblsubject set bookseq=9 where SUBJECTSEQ=46;
update tblsubject set bookseq=17 where SUBJECTSEQ=47;
update tblsubject set bookseq=15 where SUBJECTSEQ=48;
update tblsubject set bookseq=18 where SUBJECTSEQ=49;
update tblsubject set bookseq=10 where SUBJECTSEQ=50;
update tblsubject set bookseq=1 where SUBJECTSEQ=1;

-- 교육생번호 교욱생이름 교육생주민뒷자리 교육생전화번호 교육생등록날짜 교육생수강횟수 수강상태 수료여부 수료날짜 중도탈락날짜
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'하여번',1695125,'010-2220-2087','2020-9-24',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'최운병',1365010,'010-5862-3458','2018-10-21',0,'수강중','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'차효태',2462724,'010-7282-9472','2020-2-16',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'반린문',1898467,'010-1401-6419','2020-12-23',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'고흔길',2438336,'010-6211-7410','2021-7-24',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'남설누',2428246,'010-2629-5780','2021-3-11',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'전산화',1256694,'010-0840-5425','2017-9-3',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'진실공',2641057,'010-4855-5965','2017-2-21',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'김리달',2960343,'010-6651-3131','2016-7-25',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'선박훈',2767838,'010-1588-7491','2021-7-16',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'남출숙',2293432,'010-2556-2129','2021-6-30',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'유만다',1603309,'010-3152-4501','2018-6-20',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'남바래',1862634,'010-8788-9002','2019-1-7',0,'수강중','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'방치식',2746178,'010-0437-4917','2021-4-14',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'노항세',2189989,'010-1707-6685','2019-2-14',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'임준주',2716444,'010-1551-5417','2018-11-9',0,'수강중','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'추강시',2976588,'010-6297-1474','2018-8-7',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'임반배',2422175,'010-7033-2726','2021-11-22',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'노더곤',2253373,'010-1500-0966','2020-8-23',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'나춘시',1734856,'010-2827-7667','2018-4-24',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'마월노',1101128,'010-3840-3847','2020-3-26',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'변백한',1483734,'010-1749-2224','2021-5-9',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'연가루',2750524,'010-9234-4454','2016-1-30',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'지나량',1216215,'010-4074-1414','2019-4-16',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'공다직',2172495,'010-3313-1823','2019-3-4',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'옥모인',1917404,'010-3588-5629','2020-9-11',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'하번마',2192993,'010-8137-5172','2018-9-23',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'명강수',2972582,'010-9777-6087','2020-7-23',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'탁을삼',1289524,'010-8419-9033','2017-9-27',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'은면로',1594103,'010-2246-1185','2019-8-22',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'금늘직',1622974,'010-7448-9860','2017-8-4',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'안만온',2564308,'010-7903-3609','2020-2-15',0,'수강중','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'진견빈',1899907,'010-1104-8992','2016-1-5',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'하수충',2892683,'010-3277-2661','2018-12-23',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'송혁곤',2458562,'010-3030-6963','2019-9-2',0,'수강중','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'엄솜으',1656964,'010-8328-9136','2016-6-15',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'심지종',1830720,'010-8734-7191','2019-10-25',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'은휴상',2462619,'010-2126-9587','2016-8-26',0,'수강중','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'조환웅',1550989,'010-4318-2168','2021-9-11',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'권보창',2922723,'010-5765-0701','2020-3-18',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'인상영',2346746,'010-5327-3658','2017-1-6',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'민래개',1938216,'010-8895-5495','2017-10-21',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'권민남',2795738,'010-5762-5929','2019-9-28',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'손이실',2896484,'010-1857-4370','2017-11-19',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'왕자중',2521683,'010-7927-0315','2021-12-10',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'방섭웅',1192313,'010-8658-2027','2021-10-21',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'진태중',1389113,'010-6468-5697','2018-7-24',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'권늘혁',2465726,'010-7116-0601','2021-5-21',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'류승으',2547132,'010-2571-6457','2016-10-5',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'나복택',1149896,'010-3740-1764','2020-6-13',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'손후온',1480649,'010-3962-1927','2021-8-6',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'유병요',2500587,'010-5856-6360','2017-1-17',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'육삼량',1172142,'010-1750-4272','2020-8-5',0,'수강중','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'고명구',2775484,'010-7961-9028','2016-7-29',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'임숙승',1840849,'010-6106-5448','2018-10-12',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'모판주',2950455,'010-5072-0487','2019-7-17',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'소상으',2567471,'010-7049-2697','2019-3-12',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'옥견천',2815662,'010-3215-3194','2021-10-5',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'한재직',1744286,'010-0299-2879','2018-11-15',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'석라영',2619977,'010-6253-9387','2017-6-13',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'표식춘',1838181,'010-6573-3202','2017-11-3',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'주라인',1508512,'010-5974-1577','2017-10-14',0,'수강중','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'강견하',2100616,'010-4266-4712','2020-2-4',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'전단한',1796524,'010-9308-2208','2021-7-24',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'박예애',1095121,'010-5746-4577','2018-11-1',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'진루병',1717811,'010-8562-9856','2021-11-29',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'허초권',2851610,'010-0936-4253','2020-8-13',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'방누공',2402293,'010-3741-9196','2018-6-10',0,'수강중','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'천미덕',1730184,'010-5178-4157','2021-12-29',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'유욱소',2389893,'010-8060-1096','2017-5-2',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'명비일',1706127,'010-2489-1258','2021-9-1',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'채으원',2918672,'010-0618-4719','2016-10-25',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'강해공',1807534,'010-8579-0100','2018-3-22',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'왕다찬',2450546,'010-1902-9141','2020-6-11',0,'수강중','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'고익송',1799429,'010-0805-4601','2016-8-23',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'배누송',2433385,'010-3571-2775','2020-10-2',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'주늘더',2327497,'010-3826-9734','2018-4-1',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'육가산',2960675,'010-1360-8898','2016-10-29',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'채준량',2934423,'010-9805-2379','2017-11-26',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'주잔개',2376385,'010-5147-1264','2020-1-7',0,'수강중','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'정손삼',1160001,'010-8696-2873','2017-9-15',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'장면준',1863169,'010-9735-8993','2017-6-2',0,'수강중','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'구무의',1024009,'010-5652-0464','2021-10-23',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'박식범',2397403,'010-9042-2885','2020-4-25',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'노회식',1942033,'010-7509-9711','2019-12-13',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'옥안범',2412839,'010-3018-3012','2020-1-16',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'송황추',2848255,'010-5973-8734','2019-9-17',0,'수강중','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'성대식',1762007,'010-5724-8287','2020-5-19',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'신솜황',2296392,'010-8018-7506','2020-11-11',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'전환담',2730377,'010-4807-3444','2021-11-18',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'변빈진',2065592,'010-8926-6900','2017-1-3',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'천기웅',2063166,'010-3109-7794','2019-9-14',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'왕욱휴',1922934,'010-1443-9519','2021-7-7',0,'수강중','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'홍번로',2379461,'010-9772-4138','2017-1-17',0,'수강중','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'양담치',2637530,'010-5341-9167','2017-9-1',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'남후모',1313533,'010-0160-3399','2020-6-2',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'엄담휴',2850857,'010-2891-7222','2017-11-20',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'남리경',1275115,'010-0661-3325','2020-12-8',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'하로봉',1879136,'010-8694-7367','2017-6-14',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'육휘반',1592423,'010-9769-1365','2017-5-15',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'방신가',2432422,'010-7944-1028','2016-3-25',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'길배윤',1351243,'010-9422-8794','2016-12-9',0,'수강중','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'신로휴',2177276,'010-4099-3139','2016-11-13',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'금손회',1288220,'010-6354-0448','2017-9-20',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'전하담',1725520,'010-8158-7383','2020-2-13',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'석후석',2696860,'010-6063-2145','2016-1-9',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'구리노',1486269,'010-0480-3192','2017-2-27',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'김중여',1702399,'010-3555-5209','2019-9-13',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'송단린',2159153,'010-2184-7733','2018-10-4',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'방무문',1358904,'010-7173-5276','2020-5-22',0,'수강중','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'신솜규',1532108,'010-2696-8656','2020-12-17',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'우반영',1915322,'010-7113-9743','2018-10-2',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'맹린오',2557139,'010-9660-1180','2019-11-18',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'배더혁',1175797,'010-6193-0607','2020-8-30',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'지견춘',1972427,'010-0934-3457','2020-4-11',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'문열배',1367321,'010-2295-5420','2021-8-4',0,'수강중','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'여향섭',2905487,'010-7514-8286','2016-1-3',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'우은찬',2898226,'010-0262-1815','2018-7-11',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'정실이',2230156,'010-9312-3494','2019-12-5',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'유혁자',2058211,'010-5084-1068','2020-4-22',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'황홍남',2085261,'010-8294-4292','2018-5-8',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'기새옥',2911684,'010-0982-2099','2019-3-25',0,'수강중','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'장준인',2496895,'010-6583-0320','2016-1-23',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'임백도',2190739,'010-2934-6193','2019-11-3',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'유석웅',1369397,'010-7407-5924','2021-8-16',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'허용운',2484216,'010-6036-0999','2018-6-12',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'구주미',2900770,'010-0077-8921','2017-11-21',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'왕애동',1634680,'010-7889-2146','2017-9-30',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'엄추우',1727617,'010-4974-7541','2021-6-12',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'심손태',1414611,'010-5186-5046','2019-2-20',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'전두연',2177907,'010-6480-0007','2016-1-16',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'마회달',1122008,'010-8104-4140','2018-6-26',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'주하구',1874227,'010-3632-3461','2020-1-16',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'류자기',1102285,'010-2826-2547','2020-3-3',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'왕새한',1656351,'010-7965-7333','2021-5-25',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'심완은',1007981,'010-0283-1538','2021-2-1',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'공설초',2773999,'010-9502-1320','2017-6-16',0,'수강중','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'신원더',1914405,'010-8478-1535','2021-7-18',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'반희호',1677516,'010-0188-2074','2016-10-4',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'공희원',1227828,'010-7473-1856','2020-8-22',0,'수강중','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'강성철',1339851,'010-4605-3171','2016-7-2',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'남길효',1576514,'010-1048-0269','2019-6-24',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'강술근',2925568,'010-9031-1501','2018-4-14',0,'수강중','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'주건헌',1188155,'010-0335-7312','2017-7-26',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'전연혜',2283593,'010-2401-5340','2019-12-25',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'진안세',2281944,'010-3867-1442','2020-7-23',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'변철소',2577897,'010-8608-7803','2016-4-29',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'남분부',1944170,'010-1292-8192','2018-12-5',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'손희요',1026985,'010-0293-4183','2021-1-28',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'양가천',1576837,'010-2549-3038','2021-7-21',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'연항고',2077759,'010-7053-7300','2018-11-16',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'심치후',1661129,'010-7216-9057','2020-12-9',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'이단으',2938780,'010-3169-5232','2018-1-29',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'강형회',2633423,'010-3109-1226','2017-4-16',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'진으시',2239607,'010-7473-0193','2020-6-22',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'설공혁',2231781,'010-0676-0824','2018-7-12',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'신이월',2297448,'010-3590-2302','2017-12-17',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'도인경',2159465,'010-7508-7041','2021-4-18',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'석동산',2047215,'010-8926-6630','2016-10-28',0,'수강중','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'우형면',2476885,'010-9428-1171','2021-11-6',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'나휘신',2016797,'010-6886-5729','2018-7-5',0,'수강중','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'옥출치',1091875,'010-9553-9775','2021-7-15',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'진이연',2092409,'010-3576-5414','2017-2-10',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'유성늘',2299889,'010-8205-8956','2019-6-26',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'정늘판',1571092,'010-7995-1758','2019-6-27',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'선항관',1289424,'010-0966-3863','2019-5-29',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'장항환',1748391,'010-2833-7471','2016-9-8',0,'수강중','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'한가애',1991263,'010-5600-5583','2016-8-16',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'민대노',2811383,'010-1074-5119','2020-5-26',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'명충덕',1057580,'010-6501-3099','2017-2-7',0,'수강중','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'조효빈',1731142,'010-9898-1754','2019-8-1',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'남부예',2720613,'010-0918-0260','2018-7-7',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'엄린솜',2726951,'010-7656-7444','2018-7-7',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'성솜성',2951699,'010-1727-1296','2016-12-24',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'조휘효',2710568,'010-6255-8671','2021-7-2',0,'수강중','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'변기황',1512134,'010-4870-2262','2016-10-23',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'정권은',2216697,'010-3677-0350','2020-4-11',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'차분견',2542909,'010-2056-0531','2019-5-4',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'명빈남',1234943,'010-4194-8003','2020-10-29',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'신병호',1959425,'010-5238-7809','2019-8-29',0,'수강중','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'방디헌',1181757,'010-0372-9696','2019-7-24',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'홍철수',2091024,'010-4926-7082','2016-9-29',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'모창후',1807258,'010-2605-0075','2018-2-12',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'채신의',2686160,'010-0188-1882','2021-10-5',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'선슬홍',1931638,'010-9531-9412','2016-8-6',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'강식상',1188131,'010-0169-4744','2018-10-4',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'배형빈',2974173,'010-0544-8533','2016-2-24',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'김새제',2702461,'010-9043-6094','2017-9-8',0,'수강중','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'추수광',2222679,'010-6276-1267','2020-3-30',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'은서삼',1512729,'010-4161-1823','2020-1-10',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'남진산',1607221,'010-0190-2623','2016-9-9',0,'수강중','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'곽번양',2177671,'010-3450-9258','2021-12-11',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'윤란향',2868434,'010-9139-9656','2016-5-22',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'차미이',2254358,'010-6067-6607','2019-9-5',0,'수강중','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'오공엄',2903199,'010-1180-1048','2020-7-7',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'구석규',2548979,'010-0505-6151','2016-6-30',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'고예권',1776265,'010-9601-8776','2017-5-28',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'진고예',2468383,'010-2208-4961','2018-4-2',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'인라익',1763495,'010-7869-0635','2018-3-7',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'백준성',1748320,'010-7505-8980','2019-11-27',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'전주근',2058924,'010-8308-1220','2021-1-8',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'차누숭',2793695,'010-6471-5453','2017-9-2',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'천라고',1613007,'010-2336-4379','2021-6-18',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'신숙시',2564472,'010-3917-4673','2016-1-4',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'김견은',2922665,'010-6281-5346','2018-4-15',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'오무명',1152792,'010-4403-9606','2021-4-14',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'백슬장',2128356,'010-9886-0538','2019-4-20',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'서세술',2710781,'010-9960-8031','2018-7-6',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'류로량',2775318,'010-2964-0294','2016-9-28',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'현길화',2757550,'010-1233-4430','2021-11-20',0,'수강중','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'김손부',2683996,'010-7259-4798','2020-4-16',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'백가장',2227725,'010-2273-3032','2016-4-21',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'유노으',1539107,'010-4054-7457','2021-8-11',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'백한판',1859345,'010-3404-7749','2016-12-1',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'명웅다',1124699,'010-2037-6001','2019-2-8',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'고옥잔',1458229,'010-9928-4293','2021-6-8',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'금자삼',2205036,'010-4414-7109','2021-9-19',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'곽자인',2865146,'010-9818-1734','2018-4-12',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'한소마',1315302,'010-7961-3236','2017-7-30',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'천홍선',1055644,'010-7711-9257','2017-11-5',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'성래화',1268457,'010-2812-7243','2017-12-9',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'진새래',2518307,'010-5907-9653','2020-1-3',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'전민홍',2323351,'010-9430-4040','2021-4-29',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'민리완',2513338,'010-0960-3721','2020-5-18',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'채전서',2534437,'010-5507-3229','2016-7-21',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'방담솔',1845623,'010-1076-8730','2016-5-10',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'신도섭',1679893,'010-9052-0055','2020-7-24',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'반을욱',1383350,'010-4244-4349','2021-1-7',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'원예바',1443181,'010-9834-1503','2019-12-15',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'방예빈',1653872,'010-4840-2475','2018-11-20',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'장건고',1774928,'010-5372-4033','2019-6-23',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'고홍미',1712560,'010-9140-0548','2017-4-16',0,'수강중','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'강설오',1573929,'010-5667-5616','2020-8-18',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'선익타',1897434,'010-4775-7017','2020-2-13',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'강하이',2500886,'010-4161-3119','2021-3-29',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'곽솔재',2564248,'010-4870-8628','2016-12-5',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'강으전',1822173,'010-8953-6335','2017-11-26',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'전하찬',1986744,'010-6905-9318','2017-2-10',0,'수강중','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'안송미',2946360,'010-1451-7094','2016-9-23',0,'수강중','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'노춘모',1883966,'010-0889-6552','2018-8-13',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'장일석',1608240,'010-4616-0435','2016-7-7',0,'수강중','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'주라오',2712013,'010-1225-4001','2019-11-19',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'홍미승',2171180,'010-4902-7283','2018-1-16',0,'수강중','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'선상무',2631271,'010-3422-2027','2019-5-22',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'윤율래',2349779,'010-1705-6162','2016-9-9',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'염안태',1415308,'010-8183-0712','2018-8-7',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'류운엄',2285554,'010-8832-6512','2018-9-27',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'지열환',2958852,'010-6538-7668','2020-7-11',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'유솔면',2224291,'010-8721-8973','2016-12-17',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'홍린익',1922913,'010-5590-8783','2021-3-7',0,'수강중','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'우항직',1482986,'010-3344-9217','2019-6-30',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'기완탁',2246349,'010-7858-3517','2016-3-8',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'성완타',2529160,'010-4901-8125','2019-1-25',0,'수강중','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'신예전',1043065,'010-6767-6277','2021-4-8',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'조주개',2595563,'010-4094-7846','2018-10-1',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'설으로',1854052,'010-0254-8311','2020-2-4',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'기술명',1011667,'010-2747-8753','2021-9-19',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'임경열',1452985,'010-8907-7337','2018-6-24',0,'수강중','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'전초동',2950962,'010-7610-2698','2020-9-7',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'허담운',2388917,'010-4288-0171','2019-11-22',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'유섭건',1582811,'010-9322-6379','2017-9-26',0,'수강중','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'하견효',1400002,'010-8723-5789','2021-6-29',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'염연담',1859382,'010-7568-8734','2017-5-5',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'성슬월',2581921,'010-1491-5086','2021-6-15',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'문대무',1226324,'010-9566-7458','2019-1-23',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'허다아',1210695,'010-4535-9048','2021-5-11',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'윤월구',2640685,'010-5916-4655','2019-12-15',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'엄욱탁',2555778,'010-0429-2868','2018-6-12',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'엄인혁',1030807,'010-8308-8189','2021-8-18',0,'수강중','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'방휘제',2605335,'010-5271-2155','2021-6-23',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'마자관',2789630,'010-9161-9144','2017-9-6',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'고애전',1242383,'010-7070-3985','2018-12-21',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'정별원',1575375,'010-3511-6497','2018-2-14',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'왕두복',1312319,'010-2447-4159','2021-10-3',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'나운충',1366490,'010-6845-7651','2021-4-5',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'박양민',1089389,'010-9292-2042','2016-5-6',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'전규항',2916633,'010-6573-1344','2020-10-9',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'탁가병',2226303,'010-1837-7629','2016-8-1',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'홍헌원',2326011,'010-2758-5609','2019-11-25',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'남양온',1291589,'010-3109-7337','2016-7-29',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'강판익',2236076,'010-6594-8713','2021-2-8',0,'수강중','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'왕으경',1974822,'010-1202-6003','2016-2-17',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'민설전',2261081,'010-8656-8609','2017-10-6',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'전나리',2824790,'010-7665-2216','2018-6-22',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'민아늘',1808037,'010-3889-4805','2018-11-8',0,'수강중','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'진가장',1462180,'010-3548-5838','2017-1-18',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'도정래',2125565,'010-2549-8033','2018-3-26',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'육비사',2324153,'010-3978-8414','2020-8-10',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'신익오',2394357,'010-7040-2733','2018-6-25',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'구후윤',2874488,'010-0055-2702','2020-12-4',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'유복걸',2468968,'010-1146-2385','2019-10-21',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'강세향',2321781,'010-1806-6726','2018-4-25',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'심남별',2222633,'010-4841-2083','2016-12-14',0,'수강중','중도탈락');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'탁견단',1506178,'010-6861-8494','2020-3-20',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'신마회',2474982,'010-0360-5702','2017-11-23',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'남공희',1521119,'010-9902-5233','2018-2-2',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'도리삼',1561482,'010-3144-1979','2021-5-25',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'임솜현',2054807,'010-0557-4826','2016-12-12',0,'수강신청','미수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'변중근',2762821,'010-4688-2106','2020-4-21',1,'수강완료','수료');
insert into TBLSTUDENT(STUDENTSEQ, NAME, PASSWORD, TEL,RETDATE, CLASSCOUNT, STATUS, COMPLETIONSTATUS) VALUES(SEQ_TBLSTUDENT.nextval,'진성건',2295885,'010-5232-8791','2016-2-19',1,'수강완료','수료');

-- 중도 포기 추가
update tblstudent set FAILDATE = add_months(retdate, 1) where STUDENTSEQ = 7;
update tblstudent set FAILDATE = add_months(retdate, 1) where STUDENTSEQ = 9;
update tblstudent set FAILDATE = add_months(retdate, 1) where STUDENTSEQ = 22;
update tblstudent set FAILDATE = add_months(retdate, 1) where STUDENTSEQ = 24;
update tblstudent set FAILDATE = add_months(retdate, 1) where STUDENTSEQ = 37;
update tblstudent set FAILDATE = add_months(retdate, 1) where STUDENTSEQ = 40;
update tblstudent set FAILDATE = add_months(retdate, 1) where STUDENTSEQ = 41;
update tblstudent set FAILDATE = add_months(retdate, 1) where STUDENTSEQ = 42;
update tblstudent set FAILDATE = add_months(retdate, 1) where STUDENTSEQ = 44;
update tblstudent set FAILDATE = add_months(retdate, 1) where STUDENTSEQ = 50;
update tblstudent set FAILDATE = add_months(retdate, 1) where STUDENTSEQ = 55;
update tblstudent set FAILDATE = add_months(retdate, 1) where STUDENTSEQ = 62;
update tblstudent set FAILDATE = add_months(retdate, 1) where STUDENTSEQ = 70;
update tblstudent set FAILDATE = add_months(retdate, 1) where STUDENTSEQ = 74;
update tblstudent set FAILDATE = add_months(retdate, 1) where STUDENTSEQ = 76;

-- 개설된 과정 추가
insert into TBLOPENCOURSE values (1, '강의중', '등록', 30, TO_DATE('2021-01-05', 'YYYY-MM-DD'), ADD_MONTHS(TO_DATE('2021-01-05', 'YYYY-MM-DD'), 6), 1, 1);
insert into TBLOPENCOURSE values (2, '강의중', '등록', 26, TO_DATE('2021-02-08', 'YYYY-MM-DD'), ADD_MONTHS(TO_DATE('2021-02-08', 'YYYY-MM-DD'), 5)+15, 7, 4);
insert into TBLOPENCOURSE values (3, '강의중', '등록', 30, TO_DATE('2021-03-29', 'YYYY-MM-DD'), ADD_MONTHS(TO_DATE('2021-03-29', 'YYYY-MM-DD'), 7), 10, 2);
insert into TBLOPENCOURSE values (4, '강의중', '등록', 26, TO_DATE('2021-04-12', 'YYYY-MM-DD'), ADD_MONTHS(TO_DATE('2021-04-12', 'YYYY-MM-DD'), 5)+15, 8, 5);
insert into TBLOPENCOURSE values (5, '강의중', '등록', 30, TO_DATE('2021-05-28', 'YYYY-MM-DD'), ADD_MONTHS(TO_DATE('2021-05-28', 'YYYY-MM-DD'), 6), 3, 3);
insert into TBLOPENCOURSE values (6, '강의중', '등록', 26, TO_DATE('2021-06-01', 'YYYY-MM-DD'), ADD_MONTHS(TO_DATE('2021-06-01', 'YYYY-MM-DD'), 6), 9, 6);
insert into TBLOPENCOURSE values (7, '강의예정', '미등록', 30, TO_DATE('2021-07-08', 'YYYY-MM-DD'), ADD_MONTHS(TO_DATE('2021-07-08', 'YYYY-MM-DD'), 6), 2, 1);
insert into TBLOPENCOURSE values (8, '강의예정', '미등록', 30, TO_DATE('2021-07-28', 'YYYY-MM-DD'), ADD_MONTHS(TO_DATE('2021-07-28', 'YYYY-MM-DD'), 7), 4, 2);
insert into TBLOPENCOURSE values (9, '강의예정', '미등록', 26, TO_DATE('2021-09-30', 'YYYY-MM-DD'), ADD_MONTHS(TO_DATE('2021-09-30', 'YYYY-MM-DD'), 5)+15, 11, 4);
insert into TBLOPENCOURSE values (10, '강의예정', '미등록', 30, TO_DATE('2021-11-02', 'YYYY-MM-DD'), ADD_MONTHS(TO_DATE('2021-11-02', 'YYYY-MM-DD'), 6), 3, 3);
insert into TBLOPENCOURSE values (11, '강의예정', '미등록', 26, TO_DATE('2021-12-01', 'YYYY-MM-DD'), ADD_MONTHS(TO_DATE('2021-12-01', 'YYYY-MM-DD'), 6), 1, 5);
insert into TBLOPENCOURSE values (12, '강의완료', '등록', 30, TO_DATE('2020-01-05', 'YYYY-MM-DD'), ADD_MONTHS(TO_DATE('2020-01-05', 'YYYY-MM-DD'), 6), 1, 1);
insert into TBLOPENCOURSE values (13, '강의완료', '등록', 26, TO_DATE('2020-02-08', 'YYYY-MM-DD'), ADD_MONTHS(TO_DATE('2020-02-08', 'YYYY-MM-DD'), 5)+15, 7, 4);
insert into TBLOPENCOURSE values (14, '강의완료', '등록', 30, TO_DATE('2020-03-29', 'YYYY-MM-DD'), ADD_MONTHS(TO_DATE('2020-03-29', 'YYYY-MM-DD'), 7), 10, 2);
insert into TBLOPENCOURSE values (15, '강의완료', '등록', 26, TO_DATE('2020-04-12', 'YYYY-MM-DD'), ADD_MONTHS(TO_DATE('2020-04-12', 'YYYY-MM-DD'), 5)+15, 8, 5);
insert into TBLOPENCOURSE values (16, '강의완료', '등록', 30, TO_DATE('2020-05-28', 'YYYY-MM-DD'), ADD_MONTHS(TO_DATE('2020-05-28', 'YYYY-MM-DD'), 6), 3, 3);
insert into TBLOPENCOURSE values (17, '강의완료', '등록', 26, TO_DATE('2020-06-01', 'YYYY-MM-DD'), ADD_MONTHS(TO_DATE('2020-06-01', 'YYYY-MM-DD'), 6), 9, 6);

-- 개설된 과목추가
insert into TBLOPENSUBJECT values(6, '2020-05-28',  to_date('2020-05-28','yyyy-mm-dd') + 29, 26, 16);
insert into TBLOPENSUBJECT values(7, to_date('2020-05-28','yyyy-mm-dd') + 30,  to_date('2020-05-28','yyyy-mm-dd') + 46, 18, 16);
insert into TBLOPENSUBJECT values(8, to_date('2020-05-28','yyyy-mm-dd') + 47,  to_date('2020-05-28','yyyy-mm-dd') + 62, 53, 16);
insert into TBLOPENSUBJECT values(9, to_date('2020-05-28','yyyy-mm-dd') + 63,  to_date('2020-05-28','yyyy-mm-dd') + 90, 7, 16);
insert into TBLOPENSUBJECT values(10, to_date('2020-05-28','yyyy-mm-dd') + 91,  to_date('2020-05-28','yyyy-mm-dd') + 110, 13, 16);
insert into TBLOPENSUBJECT values(11, to_date('2020-05-28','yyyy-mm-dd') + 111,  to_date('2020-05-28','yyyy-mm-dd') + 115, 16, 16);
insert into TBLOPENSUBJECT values(12, to_date('2020-05-28','yyyy-mm-dd') + 116,  to_date('2020-05-28','yyyy-mm-dd') + 120, 35, 16);
insert into TBLOPENSUBJECT values(13, '2021-07-08',  to_date('2021-07-08','yyyy-mm-dd') + 29, 26, 7);
insert into TBLOPENSUBJECT values(14, to_date('2021-07-08','yyyy-mm-dd') + 30,  to_date('2021-07-08','yyyy-mm-dd') + 46, 18, 7);
insert into TBLOPENSUBJECT values(15, to_date('2021-07-08','yyyy-mm-dd') + 47,  to_date('2021-07-08','yyyy-mm-dd') + 62, 53, 7);
insert into TBLOPENSUBJECT values(16, to_date('2021-07-08','yyyy-mm-dd') + 63,  to_date('2021-07-08','yyyy-mm-dd') + 90, 7, 7);
insert into TBLOPENSUBJECT values(17, to_date('2021-07-08','yyyy-mm-dd') + 91,  to_date('2021-07-08','yyyy-mm-dd') + 113, 58, 7);
insert into TBLOPENSUBJECT values(18, to_date('2021-07-08','yyyy-mm-dd') + 114,  to_date('2021-07-08','yyyy-mm-dd') + 120, 74, 7);

-- 강의가능과목 추가
insert into TBLAVAILABLESUBJECT values( seq_tblavailablesubject.nextval, 1, 6 );
insert into TBLAVAILABLESUBJECT values( seq_tblavailablesubject.nextval, 1, 10 );
insert into TBLAVAILABLESUBJECT values( seq_tblavailablesubject.nextval, 1, 49 );
insert into TBLAVAILABLESUBJECT values( seq_tblavailablesubject.nextval, 1, 50 );

insert into TBLAVAILABLESUBJECT values( seq_tblavailablesubject.nextval, 2, 6 );
insert into TBLAVAILABLESUBJECT values( seq_tblavailablesubject.nextval, 2, 49 );
insert into TBLAVAILABLESUBJECT values( seq_tblavailablesubject.nextval, 2, 50 );

insert into TBLAVAILABLESUBJECT values( seq_tblavailablesubject.nextval, 3, 10 );
insert into TBLAVAILABLESUBJECT values( seq_tblavailablesubject.nextval, 3, 49 );
insert into TBLAVAILABLESUBJECT values( seq_tblavailablesubject.nextval, 3, 50 );

insert into TBLAVAILABLESUBJECT values( seq_tblavailablesubject.nextval, 4, 6 );
insert into TBLAVAILABLESUBJECT values( seq_tblavailablesubject.nextval, 4, 10 );
insert into TBLAVAILABLESUBJECT values( seq_tblavailablesubject.nextval, 4, 49 );
insert into TBLAVAILABLESUBJECT values( seq_tblavailablesubject.nextval, 4, 50 );

insert into TBLAVAILABLESUBJECT values( seq_tblavailablesubject.nextval, 5, 6 );
insert into TBLAVAILABLESUBJECT values( seq_tblavailablesubject.nextval, 5, 10 );
insert into TBLAVAILABLESUBJECT values( seq_tblavailablesubject.nextval, 5, 49 );
insert into TBLAVAILABLESUBJECT values( seq_tblavailablesubject.nextval, 5, 50 );

insert into TBLAVAILABLESUBJECT values( seq_tblavailablesubject.nextval, 6, 6 );
insert into TBLAVAILABLESUBJECT values( seq_tblavailablesubject.nextval, 6, 10 );
insert into TBLAVAILABLESUBJECT values( seq_tblavailablesubject.nextval, 6, 50 );

insert into TBLAVAILABLESUBJECT values( seq_tblavailablesubject.nextval, 7, 6 );
insert into TBLAVAILABLESUBJECT values( seq_tblavailablesubject.nextval, 7, 10 );
insert into TBLAVAILABLESUBJECT values( seq_tblavailablesubject.nextval, 7, 49 );
insert into TBLAVAILABLESUBJECT values( seq_tblavailablesubject.nextval, 7, 50 );

insert into TBLAVAILABLESUBJECT values( seq_tblavailablesubject.nextval, 8, 6 );
insert into TBLAVAILABLESUBJECT values( seq_tblavailablesubject.nextval, 8,10 );
insert into TBLAVAILABLESUBJECT values( seq_tblavailablesubject.nextval, 8, 49 );
insert into TBLAVAILABLESUBJECT values( seq_tblavailablesubject.nextval, 8, 50 );

insert into TBLAVAILABLESUBJECT values( seq_tblavailablesubject.nextval, 9, 6 );
insert into TBLAVAILABLESUBJECT values( seq_tblavailablesubject.nextval, 9,10 );
insert into TBLAVAILABLESUBJECT values( seq_tblavailablesubject.nextval, 9, 49 );
insert into TBLAVAILABLESUBJECT values( seq_tblavailablesubject.nextval, 9, 50 );

insert into TBLAVAILABLESUBJECT values( seq_tblavailablesubject.nextval, 10, 6 );
insert into TBLAVAILABLESUBJECT values( seq_tblavailablesubject.nextval, 10,10 );
insert into TBLAVAILABLESUBJECT values( seq_tblavailablesubject.nextval, 10, 49 );
insert into TBLAVAILABLESUBJECT values( seq_tblavailablesubject.nextval, 10, 50 );

-- 개설된 과목 추가
insert into TBLOPENSUBJECT values(seq_tblOpenSubject.nextval, to_date('2020-02-28','yyyy-mm-dd') + 37,  to_date('2020-02-28','yyyy-mm-dd') + 46, 84, 2);
insert into TBLOPENSUBJECT values(seq_tblOpenSubject.nextval, to_date('2020-02-28','yyyy-mm-dd') + 47,  to_date('2020-02-28','yyyy-mm-dd') + 92, 93, 2);
insert into TBLOPENSUBJECT values(seq_tblOpenSubject.nextval, to_date('2020-02-28','yyyy-mm-dd') + 64,  to_date('2020-02-28','yyyy-mm-dd') + 90, 77, 2);
insert into TBLOPENSUBJECT values(seq_tblOpenSubject.nextval, to_date('2020-02-28','yyyy-mm-dd') + 91,  to_date('2020-02-28','yyyy-mm-dd') + 97, 80, 2);
insert into TBLOPENSUBJECT values(seq_tblOpenSubject.nextval, to_date('2020-02-28','yyyy-mm-dd') + 98,  to_date('2020-02-28','yyyy-mm-dd') + 108, 38, 2);
insert into TBLOPENSUBJECT values(seq_tblOpenSubject.nextval, to_date('2020-02-28','yyyy-mm-dd') + 109,  to_date('2020-02-28','yyyy-mm-dd') + 113, 44, 2);

insert into TBLOPENSUBJECT values(seq_tblOpenSubject.nextval, to_date('2020-03-29','yyyy-mm-dd') + 37,  to_date('2020-03-29','yyyy-mm-dd') + 46, 89, 3);
insert into TBLOPENSUBJECT values(seq_tblOpenSubject.nextval, to_date('2020-03-29','yyyy-mm-dd') + 47,  to_date('2020-03-29','yyyy-mm-dd') + 92, 85, 3);
insert into TBLOPENSUBJECT values(seq_tblOpenSubject.nextval, to_date('2020-03-29','yyyy-mm-dd') + 64,  to_date('2020-03-29','yyyy-mm-dd') + 90, 79, 3);
insert into TBLOPENSUBJECT values(seq_tblOpenSubject.nextval, to_date('2020-03-29','yyyy-mm-dd') + 91,  to_date('2020-03-29','yyyy-mm-dd') + 97, 45, 3);
insert into TBLOPENSUBJECT values(seq_tblOpenSubject.nextval, to_date('2020-03-29','yyyy-mm-dd') + 96,  to_date('2020-03-29','yyyy-mm-dd') + 111, 47, 3);
insert into TBLOPENSUBJECT values(seq_tblOpenSubject.nextval, to_date('2020-03-29','yyyy-mm-dd') + 110,  to_date('2020-03-29','yyyy-mm-dd') + 135, 46, 3);
insert into TBLOPENSUBJECT values(seq_tblOpenSubject.nextval, to_date('2020-03-29','yyyy-mm-dd') + 134,  to_date('2020-03-29','yyyy-mm-dd') + 140, 46, 3);

insert into TBLOPENSUBJECT values(SEQ_TBLOPENSUBJECT.nextval, '2021-04-12',  to_date('2021-04-12','yyyy-mm-dd') + 29, 75, 4);
insert into TBLOPENSUBJECT values(SEQ_TBLOPENSUBJECT.nextval, to_date('2021-04-12','yyyy-mm-dd') + 30,  to_date('2021-04-12','yyyy-mm-dd') + 46, 90, 4);
insert into TBLOPENSUBJECT values(SEQ_TBLOPENSUBJECT.nextval, to_date('2021-04-12','yyyy-mm-dd') + 47,  to_date('2021-04-12','yyyy-mm-dd') + 62, 79, 4);
insert into TBLOPENSUBJECT values(SEQ_TBLOPENSUBJECT.nextval, to_date('2021-04-12','yyyy-mm-dd') + 63,  to_date('2021-04-12','yyyy-mm-dd') + 90, 87, 4);
insert into TBLOPENSUBJECT values(seq_tblOpenSubject.nextval, to_date('2020-03-29','yyyy-mm-dd') + 91,  to_date('2020-03-29','yyyy-mm-dd') + 104, 45, 4);
insert into TBLOPENSUBJECT values(seq_tblOpenSubject.nextval, to_date('2020-03-29','yyyy-mm-dd') + 105,  to_date('2020-03-29','yyyy-mm-dd') + 109, 48, 4);



insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval, '2021-05-28',  to_date('2021-05-28','yyyy-mm-dd') + 29, 88, 5);
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval, to_date('2021-05-28','yyyy-mm-dd') + 30,  to_date('2021-05-28','yyyy-mm-dd') + 46, 19, 5);
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval, to_date('2021-05-28','yyyy-mm-dd') + 47,  to_date('2021-05-28','yyyy-mm-dd') + 62, 82, 5);
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval, to_date('2021-05-28','yyyy-mm-dd') + 63,  to_date('2021-05-28','yyyy-mm-dd') + 90, 42, 5);
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval, to_date('2021-05-28','yyyy-mm-dd') + 91,  to_date('2021-05-28','yyyy-mm-dd') + 110, 13, 5); --20일
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval, to_date('2021-05-28','yyyy-mm-dd') + 111,  to_date('2021-05-28','yyyy-mm-dd') + 115, 68, 5);--5일
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval, to_date('2021-05-28','yyyy-mm-dd') + 116,  to_date('2021-05-28','yyyy-mm-dd') + 120, 45, 5);

insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval, '2021-06-01',  to_date('2021-06-01','yyyy-mm-dd') + 29, 78, 6);
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval, to_date('2021-06-01','yyyy-mm-dd') + 30,  to_date('2021-06-01','yyyy-mm-dd') + 46, 93, 6);
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval, to_date('2021-06-01','yyyy-mm-dd') + 47,  to_date('2021-06-01','yyyy-mm-dd') + 62, 77, 6);
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval, to_date('2021-06-01','yyyy-mm-dd') + 63,  to_date('2021-06-01','yyyy-mm-dd') + 90, 91, 6);
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval, to_date('2021-06-01','yyyy-mm-dd') + 91,  to_date('2021-06-01','yyyy-mm-dd') + 109, 63, 6); --19일
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval, to_date('2021-06-01','yyyy-mm-dd') + 110,  to_date('2021-06-01','yyyy-mm-dd') + 115, 33, 6); -- 6일
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval, to_date('2021-06-01','yyyy-mm-dd') + 116,  to_date('2021-06-01','yyyy-mm-dd') + 120, 50, 6); --5일

insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval, '2021-07-28',  to_date('2021-07-28','yyyy-mm-dd') + 29, 84, 8);
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval, to_date('2021-07-28','yyyy-mm-dd') + 30,  to_date('2021-07-28','yyyy-mm-dd') + 46, 93, 8);
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval, to_date('2021-07-28','yyyy-mm-dd') + 47,  to_date('2021-07-28','yyyy-mm-dd') + 62, 77, 8);
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval, to_date('2021-07-28','yyyy-mm-dd') + 63,  to_date('2021-07-28','yyyy-mm-dd') + 90, 80, 8);
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval, to_date('2021-07-28','yyyy-mm-dd') + 91,  to_date('2021-07-28','yyyy-mm-dd') + 105, 66, 8); --15일
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval, to_date('2021-07-28','yyyy-mm-dd') + 107,  to_date('2021-07-28','yyyy-mm-dd') + 120, 57, 8); -- 15일

insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval , '2021-09-30',  to_date('2021-09-30','yyyy-mm-dd') + 29, 78, 9);
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval , to_date('2021-09-30','yyyy-mm-dd') + 30,  to_date('2021-09-30','yyyy-mm-dd') + 46, 90, 9);
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval , to_date('2021-09-30','yyyy-mm-dd') + 47,  to_date('2021-09-30','yyyy-mm-dd') + 62, 77, 9);
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval , to_date('2021-09-30','yyyy-mm-dd') + 63,  to_date('2021-09-30','yyyy-mm-dd') + 90, 83, 9);
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval , to_date('2021-09-30','yyyy-mm-dd') + 91,  to_date('2021-09-30','yyyy-mm-dd') + 105, 5, 9);
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval , to_date('2021-09-30','yyyy-mm-dd') + 106,  to_date('2021-09-30','yyyy-mm-dd') + 115, 62, 9);

insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval,  ' 2021-11-02',  to_date(' 2021-11-02','yyyy-mm-dd') + 29, 88, 10);
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval,  to_date('2021-11-02','yyyy-mm-dd') + 30,  to_date(' 2021-11-02','yyyy-mm-dd') + 46, 76, 10);
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval,  to_date('2021-11-02','yyyy-mm-dd') + 47,  to_date(' 2021-11-02','yyyy-mm-dd') + 62, 79, 10);
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval,  to_date('2021-11-02','yyyy-mm-dd') + 63,  to_date(' 2021-11-02','yyyy-mm-dd') + 90, 87, 10);
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval,  to_date('2021-11-02','yyyy-mm-dd') + 91,  to_date(' 2021-11-02','yyyy-mm-dd') + 98, 73, 10);
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval,  to_date('2021-11-02','yyyy-mm-dd') + 99,  to_date(' 2021-11-02','yyyy-mm-dd') + 118, 13, 10);

insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval,  '2021-12-01',  to_date('2021-12-01','yyyy-mm-dd') + 29, 26, 11);
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval,  to_date('2021-12-01','yyyy-mm-dd') + 30,  to_date('2021-12-01','yyyy-mm-dd') + 46, 85, 11);
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval,  to_date('2021-12-01','yyyy-mm-dd') + 47,  to_date('2021-12-01','yyyy-mm-dd') + 62, 82, 11);
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval,  to_date('2021-12-01','yyyy-mm-dd') + 63,  to_date('2021-12-01','yyyy-mm-dd') + 90, 42, 11);
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval,  to_date('2021-12-01','yyyy-mm-dd') + 91,  to_date('2021-12-01','yyyy-mm-dd') + 113, 2, 11);
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval,  to_date('2021-12-01','yyyy-mm-dd') + 114,  to_date('2021-12-01','yyyy-mm-dd') + 127, 23, 11);

insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval, '2020-01-05',  to_date('2020-01-05','yyyy-mm-dd') + 29, 75, 12);
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval, to_date('2020-01-05','yyyy-mm-dd') + 30,  to_date('2020-01-05','yyyy-mm-dd') + 46, 93, 12);
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval, to_date('2020-01-05','yyyy-mm-dd') + 47,  to_date('2020-01-05','yyyy-mm-dd') + 62, 86, 12);
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval, to_date('2020-01-05','yyyy-mm-dd') + 63,  to_date('2020-01-05','yyyy-mm-dd') + 90, 91, 12);
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval, to_date('2020-01-05','yyyy-mm-dd') + 91,  to_date('2020-01-05','yyyy-mm-dd') + 97, 73, 12);
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval, to_date('2020-01-05','yyyy-mm-dd') + 98,  to_date('2020-01-05','yyyy-mm-dd') + 102, 41, 12);

insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval, '2020-02-08',  to_date('2020-02-08','yyyy-mm-dd') + 29, 89, 13);
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval, to_date('2020-02-08','yyyy-mm-dd') + 30,  to_date('2020-02-08','yyyy-mm-dd') + 46, 18, 13);
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval, to_date('2020-02-08','yyyy-mm-dd') + 47,  to_date('2020-02-08','yyyy-mm-dd') + 62, 82, 13);
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval, to_date('2020-02-08','yyyy-mm-dd') + 63,  to_date('2020-02-08','yyyy-mm-dd') + 90, 7, 13);
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval, to_date('2020-02-08','yyyy-mm-dd') + 91,  to_date('2020-02-08','yyyy-mm-dd') + 95, 68, 13);
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval, to_date('2020-02-08','yyyy-mm-dd') + 96,  to_date('2020-02-08','yyyy-mm-dd') + 118, 58, 13);

insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval, '2020-03-29',  to_date('2020-03-29','yyyy-mm-dd') + 29, 84, 14);
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval, to_date('2020-03-29','yyyy-mm-dd') + 30,  to_date('2020-03-29','yyyy-mm-dd') + 46, 76, 14);
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval, to_date('2020-03-29','yyyy-mm-dd') + 47,  to_date('2020-03-29','yyyy-mm-dd') + 62, 92, 14);
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval, to_date('2020-03-29','yyyy-mm-dd') + 63,  to_date('2020-03-29','yyyy-mm-dd') + 90, 80, 14);
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval, to_date('2020-03-29','yyyy-mm-dd') + 91,  to_date('2020-03-29','yyyy-mm-dd') + 97, 74, 14);
insert into TBLOPENSUBJECT values(seq_tblopensubject.nextval, to_date('2020-03-29','yyyy-mm-dd') + 98,  to_date('2020-03-29','yyyy-mm-dd') + 106, 10, 14);

insert into TBLOPENSUBJECT values(SEQ_TBLOPENSUBJECT.nextval, '2020-04-12',  to_date('2020-04-12','yyyy-mm-dd') + 29, 78, 15);
insert into TBLOPENSUBJECT values(SEQ_TBLOPENSUBJECT.nextval, to_date('2020-04-12','yyyy-mm-dd') + 30,  to_date('2020-04-12','yyyy-mm-dd') + 46, 90, 15);
insert into TBLOPENSUBJECT values(SEQ_TBLOPENSUBJECT.nextval, to_date('2020-04-12','yyyy-mm-dd') + 47,  to_date('2020-04-12','yyyy-mm-dd') + 62, 77, 15);
insert into TBLOPENSUBJECT values(SEQ_TBLOPENSUBJECT.nextval, to_date('2020-04-12','yyyy-mm-dd') + 63,  to_date('2020-04-12','yyyy-mm-dd') + 90, 83, 15);
insert into TBLOPENSUBJECT values(SEQ_TBLOPENSUBJECT.nextval, to_date('2020-04-12','yyyy-mm-dd') + 91,  to_date('2020-04-12','yyyy-mm-dd') + 109, 63, 15);
insert into TBLOPENSUBJECT values(SEQ_TBLOPENSUBJECT.nextval, to_date('2020-04-12','yyyy-mm-dd') + 110,  to_date('2020-04-12','yyyy-mm-dd') + 139, 32, 15);

insert into TBLOPENSUBJECT values(SEQ_TBLOPENSUBJECT.nextval, '2020-06-01',  to_date('2020-04-01','yyyy-mm-dd') + 29, 75, 17);
insert into TBLOPENSUBJECT values(SEQ_TBLOPENSUBJECT.nextval, to_date('2020-06-01','yyyy-mm-dd') + 30,  to_date('2020-06-01','yyyy-mm-dd') + 46, 19, 17);
insert into TBLOPENSUBJECT values(SEQ_TBLOPENSUBJECT.nextval, to_date('2020-06-01','yyyy-mm-dd') + 47,  to_date('2020-06-01','yyyy-mm-dd') + 62, 86, 17);
insert into TBLOPENSUBJECT values(SEQ_TBLOPENSUBJECT.nextval, to_date('2020-06-01','yyyy-mm-dd') + 63,  to_date('2020-06-01','yyyy-mm-dd') + 90, 42, 17);
insert into TBLOPENSUBJECT values(SEQ_TBLOPENSUBJECT.nextval, to_date('2020-06-01','yyyy-mm-dd') + 91,  to_date('2020-06-01','yyyy-mm-dd') + 103, 55, 17);
insert into TBLOPENSUBJECT values(SEQ_TBLOPENSUBJECT.nextval, to_date('2020-06-01','yyyy-mm-dd') + 104,  to_date('2020-06-01','yyyy-mm-dd') + 118, 23, 17);


-- 추가 sql...
select * from tblbook;
INSERT INTO tblBook(bookseq,bookname,publishername) VALUES (seq_tblBook.nextval,'이것이 자바다','한빛미디어');												-- 객체지향과 Java SE
INSERT INTO tblBook(bookseq,bookname,publishername) VALUES (seq_tblBook.nextval,'오라클 SQL과 PL/SQL','생능출판사');											-- 관계형 데이터베이스
INSERT INTO tblBook(bookseq,bookname,publishername) VALUES (seq_tblBook.nextval,'최범균의 JSP 2.3 웹 프로그래밍 : 기초부터 중급까지','가메출판사');						-- 웹 개발 프로그래밍
INSERT INTO tblBook(bookseq,bookname,publishername) VALUES (seq_tblBook.nextval,'Java의 정석 3rd Edition','도우출판');										-- Java Testing
INSERT INTO tblBook(bookseq,bookname,publishername) VALUES (seq_tblBook.nextval,'요구사항 확인 모듈교재','한국출판사');											-- 요구사항 분석 및 설계
INSERT INTO tblBook(bookseq,bookname,publishername) VALUES (seq_tblBook.nextval,'UI구현 및 테스트 모듈교재','한국출판사');										-- UI설계 및 구현
INSERT INTO tblBook(bookseq,bookname,publishername) VALUES (seq_tblBook.nextval,'애플리케이션 통합구현 모듈교재','한국출판사');										-- 애플리케이션 구현
INSERT INTO tblBook(bookseq,bookname,publishername) VALUES (seq_tblBook.nextval,'애플리케이션 테스트 수행 모듈교재','한국출판사');									-- 애플리케이션 테스트
INSERT INTO tblBook(bookseq,bookname,publishername) VALUES (seq_tblBook.nextval,'애플리케이션 배포 모듈교재','한국출판사');										-- 애플리케이션 배포
INSERT INTO tblBook(bookseq,bookname,publishername) VALUES (seq_tblBook.nextval,'깔끔한 파이썬 탄탄한 백엔드','비제이퍼블릭');										-- Back-end 개발
INSERT INTO tblBook(bookseq,bookname,publishername) VALUES (seq_tblBook.nextval,'Do it! 점프 투 파이썬','이지스퍼블리싱');										-- python 프로그래밍
INSERT INTO tblBook(bookseq,bookname,publishername) VALUES (seq_tblBook.nextval,'모던 웹을 위한 JavaScript + jQuery 입문','한빛미디어');						-- Server/Client side 프로젝트, 제이쿼리 모바일
INSERT INTO tblBook(bookseq,bookname,publishername) VALUES (seq_tblBook.nextval,'Do it! HTML5+CSS3 웹 표준의 정석','이지스퍼블리싱');							-- 웹 서버 구축 실무(HTML5, CSS5), 웹 클라이언트 프로그래밍(HTML5, CSS)
INSERT INTO tblBook(bookseq,bookname,publishername) VALUES (seq_tblBook.nextval,'오준석의 안드로이드 생존코딩 코틀린 편','한빛미디어');								-- 코틀린 프로그래밍, 코틀린 안드로이드 프로그램 구현
INSERT INTO tblBook(bookseq,bookname,publishername) VALUES (seq_tblBook.nextval,'지능형 웹 알고리즘','워커북스');												-- 지능형 웹 개발, 지능형 웹과 빅데이터 통합 프로젝트
INSERT INTO tblBook(bookseq,bookname,publishername) VALUES (seq_tblBook.nextval,'초보 웹 개발자를 위한 스프링5 프로그래밍 입문','가메출판사');							-- Spring 개발, Spring Framework 통합 구현, framework(myBATIS, Spring)
INSERT INTO tblBook(bookseq,bookname,publishername) VALUES (seq_tblBook.nextval,'Do it! 반응형 웹 만들기 실무자가 꼭 알아야 할 최신 반응형 웹 기술을 한 권에!','이지스퍼블리싱');	-- 반응형 웹 사이트 만들기, 반응형 웹 개발기법
INSERT INTO tblBook(bookseq,bookname,publishername) VALUES (seq_tblBook.nextval,'차세대 웹 프로그래밍 : HTML5+CSS3+JavaScript','한빛아카데미');					-- front-end 개발(HTML5, CSS3, JavaScript, JQuery), 웹 클라이언트 프로그래밍 (HTML, CSS3, JavaScript, JQuery)
INSERT INTO tblBook(bookseq,bookname,publishername) VALUES (seq_tblBook.nextval,'JSP WEB PROGRAMMING MASTER','북스홀릭');								-- 웹 서버 프로그램 구현, 융합기반 웹표준 프로젝트
INSERT INTO tblBook(bookseq,bookname,publishername) VALUES (seq_tblBook.nextval,'UML로 배우는 시스템 분석 설계','생능출판사');										-- UML을 사용한 시스템 분석, 데스크탑 UI/UX 설계, 웹킷 계열 브라우저 반응형 웹 UI/UX 설계
INSERT INTO tblBook(bookseq,bookname,publishername) VALUES (seq_tblBook.nextval,'텐서플로를 활용한 머신러닝','한빛미디어');										-- 파이썬을 이용한 머신러닝 분석 기술
INSERT INTO tblBook(bookseq,bookname,publishername) VALUES (seq_tblBook.nextval,'하둡 완벽 가이드','한빛미디어');												-- R Fundamentals Application(hadoop, Linux, R(데이터마이닝))
INSERT INTO tblBook(bookseq,bookname,publishername) VALUES (seq_tblBook.nextval,'데이터 분석을 위한 파이썬 철저 입문[개정판]','워커북스');								-- 빅데이터 수집, 빅데이터 분석, 빅데이터 관리와 통계, Python과 tensorflow를 사용한 데이터 분석
INSERT INTO tblBook(bookseq,bookname,publishername) VALUES (seq_tblBook.nextval,'잡아라! 텍스트 마이닝 with 파이썬','비제이퍼블릭');								-- 텍스트 마이닝 요구사항 분석, 텍스트 마이닝, Open API 프로젝트
INSERT INTO tblBook(bookseq,bookname,publishername) VALUES (seq_tblBook.nextval,'스프링 5.0 마이크로서비스 2/e','에이콘출판');									-- Spring 서버 기반의 지능형 웹과 앱 통합개발 및 구현
INSERT INTO tblBook(bookseq,bookname,publishername) VALUES (seq_tblBook.nextval,'정보시스템 이행 모듈교재','한국출판사');

select * from TBLCOURSE;
INSERT INTO TBLCOURSE (courseseq,coursename,courseTerm) VALUES (SEQ_TBLCOURSE.nextval,'JAVA 기반의 스마트 웹 앱콘텐츠 양성과정',6);								--7
INSERT INTO TBLCOURSE (courseseq,coursename,courseTerm) VALUES (SEQ_TBLCOURSE.nextval,'Python & Java 응용SW실무개발자 양성과정',6);							--1
INSERT INTO TBLCOURSE (courseseq,coursename,courseTerm) VALUES (SEQ_TBLCOURSE.nextval,'Framework 기반의 빅데이터 활용 응용프로그래머 양성과정',6);					--5
INSERT INTO TBLCOURSE (courseseq,coursename,courseTerm) VALUES (SEQ_TBLCOURSE.nextval,'자바 기반 융합형 SW개발자 양성과정',7);
INSERT INTO TBLCOURSE (courseseq,coursename,courseTerm) VALUES (SEQ_TBLCOURSE.nextval,'Python And Java를 활용한 AI 텍스트마이닝 개발자 양성과정',7);				--8
INSERT INTO TBLCOURSE (courseseq,coursename,courseTerm) VALUES (SEQ_TBLCOURSE.nextval,'빅데이터를 활용한 지능형 웹 콘텐츠 개발자 양성과정',6);						--10
INSERT INTO TBLCOURSE (courseseq,coursename,courseTerm) VALUES (SEQ_TBLCOURSE.nextval,'Java And JavaScript library를 활용한 반응형 웹 개발자 양성과정',5.5);		--9
INSERT INTO TBLCOURSE (courseseq,coursename,courseTerm) VALUES (SEQ_TBLCOURSE.nextval,'Java를 활용한 웹 응용SW개발자 양성과정',5.5);								--4
INSERT INTO TBLCOURSE (courseseq,coursename,courseTerm) VALUES (SEQ_TBLCOURSE.nextval,'파이썬과 자바를 연계한 머신러닝 활용 개발자 양성과정',5.5);						--2
INSERT INTO TBLCOURSE (courseseq,coursename,courseTerm) VALUES (SEQ_TBLCOURSE.nextval,'웹기반 빅데이터 분석 응용SW개발자 양성과정',7);							--3
INSERT INTO TBLCOURSE (courseseq,coursename,courseTerm) VALUES (SEQ_TBLCOURSE.nextval,'Java And Python 기반 응용SW개발자 양성과정',5.5);
select * from tblcourse;

select * from TBLCLASSROOM;
insert into tblclassroom values (SEQ_TBLCLASSROOM.nextval, '1강의실', 30);
insert into tblclassroom values (SEQ_TBLCLASSROOM.nextval, '2강의실', 30);
insert into tblclassroom values (SEQ_TBLCLASSROOM.nextval, '3강의실', 30);
insert into tblclassroom values (SEQ_TBLCLASSROOM.nextval, '4강의실', 26);
insert into tblclassroom values (SEQ_TBLCLASSROOM.nextval, '5강의실', 26);
insert into tblclassroom values (SEQ_TBLCLASSROOM.nextval, '6강의실', 26);

insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, 'Java 객체지향 프로그래밍 기초 및 활용', 22);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, 'Java SE 기초 및 Network Programming', 28);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, '클라우드 개발을 위한 자바 기초 프로그래밍', 22);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, 'Java Network Programming', 21);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, '객체지향과 Java SE', 9);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, 'Java OpenJDK Programming', 29);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, 'JAVA 애플리케이션 구현', 18);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, '객체지향 프로그래밍', 15);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, 'database Programming', 10);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, '오라클을 사용한 RDBMS의 SQL과 PL/SQL', 15);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, '데이터베이스 구조 설계 및 활용', 15);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, '데이터베이스 설계 및 구축', 13);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, '데이터베이스 구현', 15);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, '데이터 분석기법 및 활용', 5);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, 'Spring 서버기반의 지능형 웹 통합 개발 프로젝트 구축', 10);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, 'Spring Framework 기반 백엔드 설계 및 구축', 13);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, 'Back-End Server Programming', 26);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, '반응형 웹 프로젝트', 15);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, 'Web Publishing을 위한 Front-End 설계 및 구현', 20);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, '웹 애플리케이션 프로그래밍', 18);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, 'Front_end UI/UX 구현', 13);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, 'Server Side 프로그래밍', 15);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, '지능형 웹을 위한 애플리케이션 구축', 15);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, 'Front-end 애플리케이션 구현', 15);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, 'Spring Framework 기반 back-end 설계 및 구축', 38);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, '프론트엔드 개발 기법', 15);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, '벡엔드 개발 기법', 29);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, '반응형 웹 개발기법Back-end', 15);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, 'Back-end 웹 애플리케이션 구현', 12);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, 'AWS 클라우드 등록 설정 및 구축', 6);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, 'AWS 기반 통합 프로젝트', 7);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, '임베디드 애플리케이션 구현', 5);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, '공공 데이터 분석기법을 활용한 데이터 융합 프로젝트', 20);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, '임베디드 애플리케이션 구현', 5);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, '결함 식별을 위한 애플리케이션 테스트', 3);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, '클라우드 시스템 개요 및 AWS 서비스 요소', 30);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, 'UML을 사용한 시스템 분석', 6);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, '데스크탑 UI/UX 설계', 11);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, '콘텐츠 추천 알고리즘 기법', 5);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, '아두이노를 활용한 임베디드 프로그래밍', 23);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, '멀티 플랫폼 기반 융합 실무 프로젝트', 7);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, '임베디드 애플리케이션 구현', 9);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, '풀스택 융합 프로젝트', 19);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, 'Full-stack Framework 구현', 5);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, '오픈플랫폼(Arduino)을 활용한 Embedded 융합프로젝트', 14);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, '애플리케이션 배포', 5);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, '융합기반 웹표준 프로젝트', 24);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, '콘텐츠 추천 알고리즘 기법', 5);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, 'Front-end 클라이언트 화면설계 및 구현', 16);
insert into TBLSUBJECT values(SEQ_TBLSUBJECT.nextval, 'Back-end 서버프로그래밍 설계 및 구현', 28);