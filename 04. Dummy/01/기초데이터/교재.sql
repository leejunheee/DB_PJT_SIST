-- 교재 tblBook

-- 교재번호 bookSeq
-- 교재명 bookName
-- 출판사명 publisherName

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
VALUES (seq_tblBook.nextval, 'Do it! 반응형 웹 만들기 실무자가 꼭 알아야 할 최신 반응형 웹 기술을 한 권에!', '이지스퍼블리싱'); -- 반응형 웹 사이트 만들기, 반응형 웹 개발기법
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
VALUES (seq_tblBook.nextval, '정보시스템 이행 모듈교재', '한국출판사'); -- 시스템 사용자 교육