create database assessment;

use assessment;

create table user
     (
     u_id int NOT NULL,
     user_name varchar(255) NOT NULL,
    password varchar(255) NOT NULL,
     u_type boolean,
    PRIMARY KEY(u_id)
    );







create table question  ( q_id int NOT NULL AUTO_INCREMENT, question varchar(255), PRIMARY KEY(q_id) );



create table options ( id int(11) NOT NULL AUTO_INCREMENT, q_id int(11) , options varchar(255) NOT NULL, is_correct boolean, option_no char(1) NOT NULL, PRIMARY KEY(id), FOREIGN KEY(q_id) REFERENCES question(q_id));

create table test  ( id int NOT NULL AUTO_INCREMENT, test_id int NOT NULL, que_id int, PRIMARY KEY(ID),FOREIGN KEY (que_id)
 REFERENCES question(q_id) );



create table answer_log ( a_id int(11) NOT NULL AUTO_INCREMENT, u_id int(11) NOT NULL, t_id int (11) NOT NULL, choosen_ans int(11) , time int(11), PRIMARY KEY(a_id), FOREIGN KEY(u_id) REFERENCES user(u_id), FOREIGN KEY(t_id) REFERENCES test(id));







insert into user(u_id,user_name,password,u_type) value(1,"admin","admin",1);


insert into user(u_id,user_name,password,u_type) value(2,"pallavi","password",0);


insert into user(u_id,user_name,password,u_type) value(3,"abc","password",0);


insert into user(u_id,user_name,password,u_type) value(4,"hrishikesh","password",1);



insert into question(question) value("WWW stands for?");





insert into question(question) value("Which of the following are components of Central Processing Unit (CPU) ?");
 

insert into question(question) value("Which among following first generation of computers had ?");


insert into question(question) value("Where is RAM located ?");


insert into question(question) value("If a computer has more than one processor then it is known as ?");


insert into question(question) value(" If a computer provides database services to other, then it will be known as ?");



insert into question(question) value("Full form of URL is ?");


insert into question(question) value("In which of the following form, data is stored in computer ?");


insert into question(question) value("Technology used to provide internet by transmitting data over wires of telephone network is ?");


insert into question(question) value("Which level language is Assembly Language ?");


insert into question(question) value("Documents, Movies, Images and Photographs etc are stored at a ?");

insert into question(question) value("Which of following is used in RAM ?");



insert into question(question) value("What is full form of GUI?");






 insert into options(q_id,options,is_correct,option_no) values (1,"Wide World Web",0,'a');



insert into options(q_id,options,is_correct,option_no) values (1,"World wide Web",1,'b');


insert into options(q_id,options,is_correct,option_no) values (2,"Arithmetic logic unit, Mouse",0,'a');


 insert into options(q_id,options,is_correct,option_no) values (2,"Arithmetic logic unit, Control unit",1,'b');


insert into options(q_id,options,is_correct,option_no) values (3,"Vaccum Tubes and Magnetic Drum",1,'a');



 insert into options(q_id,options,is_correct,option_no) values (3,"Integrated Circuits",0,'b');


insert into options(q_id,options,is_correct,option_no) values (4,"mother board",0,'a');


insert into options(q_id,options,is_correct,option_no) values (4,"Expansion Board",0,'b');


insert into options(q_id,options,is_correct,option_no) values (5,"Uniprocess",0,'a');


insert into options(q_id,options,is_correct,option_no) values (5,"multiprocess",0,'b'),(5,"multiprocessor",1,'c');

insert into options(q_id,options,is_correct,option_no) values (6,"Web server",0,'a'),(6,"Application server",0,'b'),(6,"database server",1,'c');

insert into options(q_id,options,is_correct,option_no) values (7,"universal remote locator",0,'a'),(7,"universal locator",0,'b'),(7,"Uniform Resource Locator",1,'c');

 

insert into options(q_id,options,is_correct,option_no) values (8,"Binary",1,'a'),(8,"Decimal",0,'b');

insert into options(q_id,options,is_correct,option_no) values (9,"diodes",0,'a'),(9,"dsl",1,'b');


insert into options(q_id,options,is_correct,option_no) values (10,"high level prog",0,'a'),(10,"low level programming",1,'b');


 insert into options(q_id,options,is_correct,option_no) values (11,"web server",0,'a'),(11,"file server",1,'b');

 
insert into options(q_id,options,is_correct,option_no) values (12,"semi conductor",1,'a'),(12,"conductor",0,'b');


insert into options(q_id,options,is_correct,option_no) values (13,"graphical user interface",1,'a'),(13,"graphical use interface",0,'b');







insert into test (test_id,que_id) values (2,9),(2,10),(2,11),(2,12),(2,13);



insert into test(test_id,que_id) values (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8);









 insert into answer_log (u_id,t_id,choosen_ans,time) values (3,1,1,15),(3,2,3,26),(3,3,5,87), (3,4,7,50), (3,5,9,15), (3,6,12,41), (3,7,16,21), (3,8,19,9);

insert into answer_log (u_id,t_id,choosen_ans,time) values (3,9,21,15),(3,10,22,26),(3,11,24,87), (3,12,27,50), (3,13,29,15);



insert into answer_log (u_id,t_id,choosen_ans,time) values (2,9,20,15),(2,10,22,26),(2,11,24,87), (2,12,26,50), (2,13,29,15);









