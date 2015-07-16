create or replace view Marksheet as select u_id,t.test_id,count(o.id) as marks  from options as o , test as t , answer_log a where a.t_id=t.id and o.is_correct=1 and o.id=a.choosen_ans group by a.u_id,t.test_id;


select * from Marksheet;

delimiter //

create or replace procedure pivot1()

begin
create or replace  view tempDetails as select u.user_name,q.q_id questionId, u.u_id userID,t.test_id, q.question, o.option_no from user as u, options as o, answer_log as a, test as t,question as q where o.id=a.choosen_ans and t.id=a.t_id and q.q_id=t.que_id and u.u_id =2 and u.u_id=a.u_id and q.q_id=t.que_id;

SET @sql = NULL;

 select group_concat(distinct concat('max(if(td.questionId = ''',questionId,''',option_no,NULL)) as', quote(questionId))) into @sql from tempDetails td;
 set @sql = concat('select userID,user_name,',@sql,' from tempDetails td');
prepare statement from @sql;
execute statement;

end



