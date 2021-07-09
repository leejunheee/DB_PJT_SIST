
-- 교사 ----------------------------------------------------------------------

CREATE TABLE "tblTeacher"
(
    "teacherSeq"     number       NOT NULL,     -- 교사번호
    "teacherName"    varchar2(15) NOT NULL,     -- 교사이름
    "password"       number       NOT NULL,     -- 주민번호뒷자리
    "teacherTel"     number       NOT NULL,     -- 전화번호
    "openSubjectSeq" number       NOT NULL      -- 강의진행상태
);

CREATE SEQUENCE seq_tblTeacher;

ALTER TABLE "tblTeacher"
    ADD CONSTRAINT "PK_TBLTEACHER" PRIMARY KEY (
                                                "teacherSeq"
        );


-- 강의실 ----------------------------------------------------------------------

CREATE TABLE "tblClassRoom"
(
    "classRoomSeq"       number       NOT NULL,     -- 강의실번호
    "classRoomName"      varchar2(15) NOT NULL,     -- 강의실이름
    "classRoomPersonnel" number       NOT NULL      -- 강의실정원
);

CREATE SEQUENCE seq_tblClassRoom

ALTER TABLE "tblClassRoom"
    ADD CONSTRAINT "PK_TBLCLASSROOM" PRIMARY KEY (
                                                  "classRoomSeq"
        );

-- 교재 ----------------------------------------------------------------------

CREATE TABLE "tblBook"
(
    "bookSeq"       number       NOT NULL,      -- 교재번호
    "bookName"      varchar2(50) NOT NULL,      -- 교재명
    "publisherName" varchar2(50) NOT NULL       -- 출판사명
);

CREATE SEQUENCE seq_tblBook;

ALTER TABLE "tblBook"
    ADD CONSTRAINT "PK_TBLBOOK" PRIMARY KEY (
                                             "bookSeq"
        );


-- 과목 ----------------------------------------------------------------------

CREATE TABLE "tblSubject"
(
    "subjectSeq"  number       NOT NULL,    -- 과목번호
    "subjectName" varchar2(20) NOT NULL,    -- 과목명
    "period"      number       NOT NULL,    -- 과목기간
    "bookseq"     varchar2(100)NOT NULL     -- 교재번호
);

CREATE SEQUENCE seq_tblSubject;

ALTER TABLE "tblSubject"
    ADD CONSTRAINT "PK_TBLSUBJECT" PRIMARY KEY (
                                                "subjectSeq"
        );

ALTER TABLE "tblSubject" ADD CONSTRAINT "FK_tblBook_TO_tblSubject_1" FOREIGN KEY (
	"bookSeq"
)
REFERENCES "tblBook" (
	"bookSeq"
);

-- 과정 ----------------------------------------------------------------------

CREATE TABLE "tblCourse"
(
    "courseSeq"  number       NOT NULL,    -- 과정번호
    "courseName" varchar2(50) NOT NULL,    -- 과정명
    "courseTerm" number       NOT NULL     -- 과정기간
);

CREATE SEQUENCE seq_tblCourse

ALTER TABLE "tblCourse"
    ADD CONSTRAINT "PK_TBLCOURSE" PRIMARY KEY (
                                               "courseSeq"
        );


-- 기초정보 ----------------------------------------------------------------------

-- CREATE TABLE "tblBasicInfo"
-- (
--     "basicInfoSeq" number NOT NULL,
--     "courseSeq"    number NOT NULL,
--     "subjectSeq"   number NOT NULL,
--     "classRoomSeq" number NOT NULL,
--     "bookSeq"      number NOT NULL
-- );

-- ALTER TABLE "tblBasicInfo"
--     ADD CONSTRAINT "PK_TBLBASICINFO" PRIMARY KEY (
--                                                   "basicInfoSeq"
--         );

-- 개설된 과정 ----------------------------------------------------------------------
CREATE TABLE "tblOpenCourse"
(
    "openCourseSeq"       number       NOT NULL,    -- 개설된과정번호
    "courseState"         varchar2(10) NOT NULL,    -- 과정상태
    "openSubjectRegister" varchar2(10) NULL,        -- 개설과목등록여부
    "studentRegister"     varchar2(10) NOT NULL,    -- 교육생등록인원
    "courseStart"         date         NOT NULL,    -- 과정시작일
    "courseEnd"           date         NOT NULL,    -- 과정종료일
    "courseSeq"           number       NOT NULL,    -- 과정번호
    "classRoomSeq"        number       NOT NULL     -- 강의실번호
);

CREATE SEQUENCE seq_tblOpenCourse

ALTER TABLE "tblOpenCourse"
    ADD CONSTRAINT "PK_TBLOPENCOURSE" PRIMARY KEY (
                                                   "openCourseSeq"
        );

ALTER TABLE "tblOpenCourse" ADD CONSTRAINT "FK_tblCourse_TO_tblOpenCourse_1" FOREIGN KEY (
	"courseSeq"
)
REFERENCES "tblCourse" (
	"courseSeq"
);

ALTER TABLE "tblOpenCourse" ADD CONSTRAINT "FK_tblClassRoom_TO_tblOpenCourse_1" FOREIGN KEY (
	"classRoomSeq"
)
REFERENCES "tblClassRoom" (
	"classRoomSeq"
);

-- 개설된 과목 ----------------------------------------------------------------------
CREATE TABLE "tblOpenSubject"
(
    "openSubjectSeq" number NOT NULL,    -- 개설된과목번호
    "subjectStart"   date   NOT NULL,    -- 과목시작일
    "subjectEnd"     date   NOT NULL,    -- 과목종료일
    "subjectSeq"     number NOT NULL     -- 개설된과정번호
);

CREATE SEQUENCE seq_tblOpenSubject

ALTER TABLE "tblOpenSubject"
    ADD CONSTRAINT "PK_TBLOPENSUBJECT" PRIMARY KEY (
                                                    "openSubjectSeq"
        );

ALTER TABLE "tblOpenSubject" ADD CONSTRAINT "FK_tblAvailableSubject_TO_tblOpenSubject_1" FOREIGN KEY (
	"availableSubjectSeq"
)
REFERENCES "tblAvailableSubject" (
	"availableSubjectSeq"
);

ALTER TABLE "tblOpenSubject" ADD CONSTRAINT "FK_tblOpenCourse_TO_tblOpenSubject_1" FOREIGN KEY (
	"openCourseSeq"
)
REFERENCES "tblOpenCourse" (
	"openCourseSeq"
);


-- 강의 가능 과목
CREATE TABLE "tblAvailableSubject"
(
    "availableSubjectSeq" number NOT NULL,    -- 강의가능과목번호
    "teacherSeq"          number NOT NULL,    -- 교사번호
    "subjectSeq"          number NOT NULL     -- 과목번호
);

CREATE SEQUENCE seq_tblAvailableSubject

ALTER TABLE "tblAvailableSubject"
    ADD CONSTRAINT "PK_TBLAVAILABLESUBJECT" PRIMARY KEY (
                                                         "availableSubjectSeq"
        );

ALTER TABLE "tblAvailableSubject" ADD CONSTRAINT "FK_tblTeacher_TO_tblAvailableSubject_1" FOREIGN KEY (
	"teacherSeq"
)
REFERENCES "tblTeacher" (
	"teacherSeq"
);

ALTER TABLE "tblAvailableSubject" ADD CONSTRAINT "FK_tblSubject_TO_tblAvailableSubject_1" FOREIGN KEY (
	"subjectSeq"
)
REFERENCES "tblSubject" (
	"subjectSeq"
);

-- 수강생 ----------------------------------------------------------------------
CREATE TABLE "tblClass"
(
    "classSeq"      number NOT NULL,    -- 수강번호
    "studentSeq"    number NOT NULL,    -- 교육생번호
    "openCourseSeq" number NOT NULL     -- 개설된과정번호 
);

CREATE SEQUENCE seq_tblClass

ALTER TABLE "tblClass"
    ADD CONSTRAINT "PK_TBLCLASS" PRIMARY KEY (
                                              "classSeq"
        );

ALTER TABLE "tblClass" ADD CONSTRAINT "FK_tblStudent_TO_tblClass_1" FOREIGN KEY (
	"studentSeq"
)
REFERENCES "tblStudent" (
	"studentSeq"
);


ALTER TABLE "tblClass" ADD CONSTRAINT "FK_tblOpenCourse_TO_tblClass_1" FOREIGN KEY (
	"openCourseSeq"
)
REFERENCES "tblOpenCourse" (
	"openCourseSeq"
);


-- 시험 ----------------------------------------------------------------------
CREATE TABLE "tblExam"
(
    "examSeq"        number        NOT NULL,    -- 시험번호
    "gradeEnter"     varchar2(10)  NULL,        -- 성적등록여부
    "examFile"       varchar2(100) NULL,        -- 시험문제등록
    "examDate"       date          NULL,        -- 시험날짜
    "openSubjectSeq" number        NOT NULL     -- 개설된과목번호
);

CREATE SEQUENCE seq_tblExam

ALTER TABLE "tblExam"
    ADD CONSTRAINT "PK_TBLEXAM" PRIMARY KEY (
                                             "examSeq"
        );

ALTER TABLE "tblExam" ADD CONSTRAINT "FK_tblOpenSubject_TO_tblExam_1" FOREIGN KEY (
	"openSubjectSeq"
)
REFERENCES "tblOpenSubject" (
	"openSubjectSeq"
);


-- 출결 ----------------------------------------------------------------------
CREATE TABLE "tblAttend"
(
    "attendSeq"  number       NOT NULL,     -- 출결번호
    "inTime"     date         NULL,         -- 입실시간
    "outTime"    date         NULL,         -- 퇴실시간 
    "attendance" varchar2(10) NOT NULL,     -- 출결상황 
    "classSeq"   number       NOT NULL      -- 수강번호
);
 
CREATE SEQUENCE seq_tblAttend

ALTER TABLE "tblAttend"
    ADD CONSTRAINT "PK_TBLATTEND" PRIMARY KEY (
                                               "attendSeq"
        );

ALTER TABLE "tblAttend" ADD CONSTRAINT "FK_tblClass_TO_tblAttend_1" FOREIGN KEY (
	"classSeq"
)
REFERENCES "tblClass" (
	"classSeq"
);

-- 채용 ----------------------------------------------------------------------
CREATE TABLE "tblHire"
(
    "companySeq"          number       NOT NULL,     -- 회사번호
    "companyName"         varchar2(50) NOT NULL,     -- 회사이름
    "conpanyAnnualSalary" number       NULL,         -- 연봉
    "companyScale"        varchar2(20) NOT NULL,     -- 규모
    "companyArea"         varchar2(30) NOT NULL,     -- 근무지역
    "workingType"         varchar2(20) NOT NULL,     -- 근무형태
    "career"              varchar2(10) NOT NULL      -- 경력
);

CREATE SEQUENCE seq_tblHire

ALTER TABLE "tblHire"
    ADD CONSTRAINT "PK_TBLHIRE" PRIMARY KEY (
                                             "companySeq"
        );

-- 취업현황 ----------------------------------------------------------------------
CREATE TABLE "tblEmpStat"
(
    "empMangSeq" number NOT NULL,     -- 취업관리번호
    "companySeq" number NOT NULL,     -- 수강번호
    "classSeq"   number NOT NULL      -- 취업여부
);

CREATE SEQUENCE seq_tblEmpStat

ALTER TABLE "tblEmpStat"
    ADD CONSTRAINT "PK_TBLEMPSTAT" PRIMARY KEY (
                                                "empMangSeq"
        );

ALTER TABLE "tblEmpStat" ADD CONSTRAINT "FK_tblClass_TO_tblEmpStat_1" FOREIGN KEY (
	"classSeq"
)
REFERENCES "tblClass" (
	"classSeq"
);
-- 강의 스케쥴 ---------------------------------------------------------------------- 
CREATE TABLE "tblClassSchedule"
(
    "classScheduleSeq" number       NOT NULL,     -- 스케쥴번호
    "classState"       varchar2(15) NOT NULL,     -- 강의상태
    "teacherSeq"       number       NOT NULL      -- 교사번호
    "openSubjectSeq"   number       NOT NULL      -- 개설된과목번호
);

CREATE SEQUENCE seq_tblClassSchedule;

ALTER TABLE "tblClassSchedule"
    ADD CONSTRAINT "PK_TBLCLASSSCHEDULE" PRIMARY KEY (
                                                      "classScheduleSeq"
        );

ALTER TABLE "tblClassSchedule" ADD CONSTRAINT "FK_tblOpenSubject_TO_tblClassSchedule_1" FOREIGN KEY (
	"openSubjectSeq"
)
REFERENCES "tblOpenSubject" (
	"openSubjectSeq"
);

ALTER TABLE "tblClassSchedule" ADD CONSTRAINT "FK_tblTeacher_TO_tblClassSchedule_1" FOREIGN KEY (
	"teacherSeq"
)
REFERENCES "tblTeacher" (
	"teacherSeq"
);

-- 배점 ----------------------------------------------------------------------

CREATE TABLE "tblRate"
(
    "rateSeq"        number NOT NULL,     -- 배점번호
    "attendRate"     number NOT NULL,     -- 출결배점
    "performRate"    number NOT NULL,     -- 실기배점
    "writeRate"      number NOT NULL,     -- 필기배점
    "openSubjectSeq" number NOT NULL      -- 개설된과목번호
);

CREATE SEQUENCE seq_tblRate;

ALTER TABLE "tblRate"
    ADD CONSTRAINT "PK_TBLRATE" PRIMARY KEY (
                                             "rateSeq"
        );

ALTER TABLE "tblRate" ADD CONSTRAINT "FK_tblOpenSubject_TO_tblRate_1" FOREIGN KEY (
	"openSubjectSeq"
)
REFERENCES "tblOpenSubject" (
	"openSubjectSeq"
);


-- 진도관리 ----------------------------------------------------------------------

CREATE TABLE "tblProgress"
(
    "progressSeq"    number NOT NULL,     -- 진도관리번호
    "regDate"        date   NOT NULL,     -- 진도평가등록일
    "understand"     number NOT NULL,     -- 과목이해도점수
    "speed"          number NOT NULL,     -- 체감속도점수
    "openSubjectSeq" number NOT NULL,     -- 개설된과목번호
    "classSeq"       number NOT NULL      -- 수강번호
);

CREATE SEQUENCE seq_tblProgress;

ALTER TABLE "tblProgress"
    ADD CONSTRAINT "PK_TBLPROGRESS" PRIMARY KEY (
                                                 "progressSeq"
        );


ALTER TABLE "tblProgress" ADD CONSTRAINT "FK_tblOpenSubject_TO_tblProgress_1" FOREIGN KEY (
	"openSubjectSeq"
)
REFERENCES "tblOpenSubject" (
	"openSubjectSeq"
);

ALTER TABLE "tblProgress" ADD CONSTRAINT "FK_tblClass_TO_tblProgress_1" FOREIGN KEY (
	"classSeq"
)
REFERENCES "tblClass" (
	"classSeq"
);

-- 프로젝트 ----------------------------------------------------------------------

CREATE TABLE "tblProject"
(
    "projectSeq"        number        NOT NULL,     -- 프로젝트번호
    "projectRegist"     varchar2(300) NULL,         -- 프로젝트등록
    "projectSubmitDate" date          NULL,         -- 프로젝트제출일
    "teamSeq2"          number        NOT NULL      -- 팀번호 
);

CREATE SEQUENCE seq_tblProject;

ALTER TABLE "tblProject"
    ADD CONSTRAINT "PK_TBLPROJECT" PRIMARY KEY (
                                                "projectSeq"
        );

ALTER TABLE "tblProject" ADD CONSTRAINT "FK_tblTeam_TO_tblProject_1" FOREIGN KEY (
	"teamSeq2"
)
REFERENCES "tblTeam" (
	"teamSeq"
);

ALTER TABLE "tblProject" ADD CONSTRAINT "FK_tblTeam_TO_tblProject_2" FOREIGN KEY (
	"teamName"
)
REFERENCES "tblTeam" (
	"teamName"
);


-- 팀 ----------------------------------------------------------------------

CREATE TABLE "tblTeam" -- TODO 
(
    "teamSeq"  number NOT NULL,     -- 팀번호     
    "classSeq" number NOT NULL      -- 수강번호 
);

CREATE SEQUENCE seq_tblTeam;

ALTER TABLE "tblTeam"
    ADD CONSTRAINT "PK_TBLTEAM" PRIMARY KEY (
                                             "teamSeq"
        );

ALTER TABLE "tblTeam" ADD CONSTRAINT "FK_tblClass_TO_tblTeam_1" FOREIGN KEY (
	"classSeq"
)
REFERENCES "tblClass" (
	"classSeq"
);


-- 과제피드백 ----------------------------------------------------------------------

CREATE TABLE "tblTaskFeedback"
(
    "taskSeq2"            number        NOT NULL,       -- 과제번호
    "taskFeedbackContent" varchar2(200) NULL            -- 피드백내용
);

CREATE SEQUENCE seq_tblTaskFeedback;

ALTER TABLE "tblTaskFeedback"
    ADD CONSTRAINT "PK_TBLTASKFEEDBACK" PRIMARY KEY (
                                                     "taskSeq2"
        );

ALTER TABLE "tblTaskFeedback"
    ADD CONSTRAINT "FK_tblTask_TO_tblTaskFeedback_1" FOREIGN KEY (
                                                                  "taskSeq2"
        )
        REFERENCES "tblTask" (
                              "taskSeq"
            );



-- 프로젝트피드백 ----------------------------------------------------------------------

CREATE TABLE "tblProjectFeedback"
(
    "projectSeq2"            number        NOT NULL,    -- 프로젝트번호
    "teamName"               number        NOT NULL,    -- 팀이름
    "projectFeedbackContent" varchar2(200) NULL         -- 피드백내용
);

CREATE SEQUENCE seq_tblTaskFeedback;

ALTER TABLE "tblProjectFeedback"
    ADD CONSTRAINT "PK_TBLPROJECTFEEDBACK" PRIMARY KEY (
                                                        "projectSeq2"
        );



ALTER TABLE "tblProjectFeedback" ADD CONSTRAINT "FK_tblProject_TO_tblProjectFeedback_1" FOREIGN KEY (
	"projectSeq2"
)
REFERENCES "tblProject" (
	"projectSeq"
);

ALTER TABLE "tblProjectFeedback" ADD CONSTRAINT "FK_tblProject_TO_tblProjectFeedback_2" FOREIGN KEY (
	"teamName"
)
REFERENCES "tblProject" (
	"teamName"
);

-- 성적 ----------------------------------------------------------------------

CREATE TABLE "tblGrade"
(
    "gradeSeq"     number NOT NULL,     -- 성적번호
    "writeGrade"   number NULL,         -- 필기점수
    "performGrade" number NULL,         -- 실기점수
    "attendGrade"  number NULL,         -- 출결점수
    "classSeq"     number NOT NULL,     -- 수강번호 
    "examSeq"      number NOT NULL      -- 시험번호 
);

CREATE SEQUENCE seq_tblGrade;

ALTER TABLE "tblGrade"
    ADD CONSTRAINT "PK_TBLGRADE" PRIMARY KEY (
                                              "gradeSeq"
        );

ALTER TABLE "tblGrade" ADD CONSTRAINT "FK_tblExam_TO_tblGrade_1" FOREIGN KEY (
	"examSeq"
)
REFERENCES "tblExam" (
	"examSeq"
);

ALTER TABLE "tblGrade" ADD CONSTRAINT "FK_tblClass_TO_tblGrade_1" FOREIGN KEY (
	"classSeq"
)
REFERENCES "tblClass" (
	"classSeq"
);

-- 교육생 ----------------------------------------------------------------------

CREATE TABLE "tblStudent"
(
    "studentSeq"       number       NOT NULL,       -- 교육생번호
    "name"             varchar2(15) NOT NULL,       -- 교육생이름
    "password"         number       NOT NULL,       -- 교육생주민번호뒷자리
    "tel"              varchar2(50) NOT NULL,       -- 교육생전화번호
    "retdate"          date         NULL,           -- 교육생등록날짜
    "classCount"       number       NULL,           -- 교육생수강횟수
    "status"           varchar2(50) NOT NULL,       -- 수강상태
    "completionStatus" varchar2(50) NULL,           -- 수료여부
    "completeDate"     date         NULL,           -- 수료날짜
    "faildate"         date         NULL            -- 중도탈락날짜 
);

CREATE SEQUENCE seq_tblStudent;

ALTER TABLE "tblStudent"
    ADD CONSTRAINT "PK_TBLSTUDENT" PRIMARY KEY (
                                                "studentSeq"
        );



-- 과제 ----------------------------------------------------------------------

CREATE TABLE "tblTask"
(
    "taskSeq"        number        NOT NULL,    -- 과제번호
    "taskRegist"     varchar2(200) NULL,        -- 과제제출여부   
    "taskSubmitDate" date          NULL,        -- 과제제출일
    "openSubjectSeq" number        NOT NULL,    -- 개설된과목번호
    "classSeq"       number        NOT NULL     -- 수강번호
);

CREATE SEQUENCE seq_tblTask;

ALTER TABLE "tblTask"
    ADD CONSTRAINT "PK_TBLTASK" PRIMARY KEY (
                                             "taskSeq"
        );
        
ALTER TABLE "tblTask" ADD CONSTRAINT "FK_tblOpenSubject_TO_tblTask_1" FOREIGN KEY (
	"openSubjectSeq"
)
REFERENCES "tblOpenSubject" (
	"openSubjectSeq"
);

ALTER TABLE "tblTask" ADD CONSTRAINT "FK_tblClass_TO_tblTask_1" FOREIGN KEY (
	"classSeq"
)
REFERENCES "tblClass" (
	"classSeq"
);
















