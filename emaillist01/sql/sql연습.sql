use webdb;

desc emaillist;

-- insert
insert into emaillist values(null, '안', '대혁', 'kickscar@gamil.com');

-- insert
insert into emaillist values(null, '둘', '리', 'doolyr@gamil.com');

-- select
select no, first_name, last_name, email from emaillist order by no desc;