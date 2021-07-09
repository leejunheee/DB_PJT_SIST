-- 과제 데이터 생성
insert into tbltask(taskseq, TASKSUBMITDATE, OPENSUBJECTSEQ, classseq)
select rownum, t3.SUBJECTEND, t3.OPENSUBJECTSEQ, t.CLASSSEQ
from tblclass T
         inner join TBLOPENCOURSE T2 on t.OPENCOURSESEQ = t2.OPENCOURSESEQ
         inner join TBLOPENSUBJECT T3 on T2.OPENCOURSESEQ = T3.OPENCOURSESEQ;