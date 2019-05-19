Create database empData
use empData
create table emloye ( hrid int , name varchar(50) ,hireDate varchar(50) ,salary decimal(18,2)) ;
INSERT INTO emloye (hrid , name, hireDate ,salary) VALUES (22 , 'mona','11/10/2019' ,3000);
INSERT INTO emloye (hrid , name, hireDate ,salary) VALUES (12 , 'kmal', '01/01/2009' ,1000);
INSERT INTO emloye (hrid , name, hireDate ,salary) VALUES (2 , 'eman', '31/9/2013' ,3000);
INSERT INTO emloye (hrid , name, hireDate ,salary) VALUES (6 , 'youssif', '15/07/2019' ,5000);
INSERT INTO emloye (hrid , name, hireDate ,salary) VALUES (5 , 'eman kmal', '31/9/2013' ,3000);
INSERT INTO emloye (hrid , name, hireDate ,salary) VALUES (6 , 'mohamed', '15/07/2019' ,5000);
select * from emloye