create table student (
id number(3) not null,
name varchar2(20) not null,
age number(3) not null,
sex varchar2(3) not null,
primary key (id));

create table subject(
id number(4) not null,
subject varchar2(20) not null,
teacher varchar2(20) not null,
description varchar2(150) not null,
primary key(id));

create table score(
id number(11) not null,
student_id number(3) not null,
subject_id number(4) not null,
score number(3,1) not null,
primary key (id));

insert all
into student(id, name, age, sex) values (1, '张三', 18, '男')
into student(id, name, age, sex) values (2, '李四', 20, '女')
select * from dual;

insert all
into subject values(1001, '语文', '王老师','本次考试比较简单')
into subject values(1002, '数学', '刘老师','本次考试比较难')
select * from dual;

insert all
into score values(1, 1, 1001, 80)
into score values(2, 2, 1002, 60)
into score values(3, 1, 1001, 70)
into score values(4, 1, 1002, 60.5)
select * from dual;

select table_name from all_tables a where a.OWNER = upper('student_examination_sys');

select lpad(id,3,'0') as id, name,age,sex from student;
select * from subject;
select id,lpad(student_id,3,'0') as student_id,subject_id,score from score;
