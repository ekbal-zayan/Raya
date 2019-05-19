Create database conectData;
use conectData;
create table conectlogin ( username varchar(50) , pass varchar(50)) ;
INSERT INTO conectlogin (username , pass) VALUES ('mona','123');
INSERT INTO conectlogin (username , pass) VALUES ('mohamed','abc');
select * from conectlogin;