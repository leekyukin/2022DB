-- 1.
create table teacher (
    id INT(8) primary key,
    first varchar(225),
    second varchar(225),
    class_number INT(8) references class(id)
);

create table class (
  id INT(8) primary key,
  grade INT(8),
  class_number INT(8),
  teacher_id INT(8) references teacher(id)
);

drop table student;
create table student (
    id INT(8) primary key,
    name VARCHAR(225),
    sex VARCHAR(225),
    number INT(8),
    major varchar(225),
    grade INT(8),
    class_number INT(8) references class(class_number),
    teacher_id INT(8) references teacher(id)
);

select * from teacher;
insert into teacher (id, first, second, class_number) values (1, '구*영', '이*숙', 1);
insert into teacher (id, first, second, class_number) values (2, '조*겸', '진*빈', 2);
insert into teacher (id, first, second, class_number) values (3, '김*영', '김*정', 3);
insert into teacher (id, first, second, class_number) values (4, '유*찬', '김*필', 4);

insert into teacher (id, first, second, class_number) values (5, '차*민', '이*영', 5);
insert into teacher (id, first, second, class_number) values (6, '박*현', '최*준', 6);
insert into teacher (id, first, second, class_number) values (7, '김*태', '정*진', 7);
insert into teacher (id, first, second, class_number) values (8, '김*봉', '서*희', 8);

select * from class;
insert into class (id, grade, class_number, teacher_id) values (1, 1, 1, 1);
insert into class (id, grade, class_number, teacher_id) values (2, 1, 2, 2);
insert into class (id, grade, class_number, teacher_id) values (3, 1, 3, 3);
insert into class (id, grade, class_number, teacher_id) values (4, 1, 4, 4);

insert into class (id, grade, class_number, teacher_id) values (5, 2, 1, 5);
insert into class (id, grade, class_number, teacher_id) values (6, 2, 2, 6);
insert into class (id, grade, class_number, teacher_id) values (7, 2, 3, 7);
insert into class (id, grade, class_number, teacher_id) values (8, 2, 4, 8);

select * from student;
insert into student (id, name, sex, number, major, grade, class_number, teacher_id) values (1, '강*석', '남', 1, '-', 1 , 1, 1);
insert into student (id, name, sex, number, major, grade, class_number, teacher_id) values (2, '김*민', '남', 2, '-', 1 , 1, 1);
insert into student (id, name, sex, number, major, grade, class_number, teacher_id) values (3, '김*찬', '남', 3, '-', 1 , 1, 1);
insert into student (id, name, sex, number, major, grade, class_number, teacher_id) values (4, '강*제', '남', 1, '-', 1 , 2, 2);
insert into student (id, name, sex, number, major, grade, class_number, teacher_id) values (5, '강*훈', '남', 2, '-', 1 , 2, 2);
insert into student (id, name, sex, number, major, grade, class_number, teacher_id) values (6, '권*빈', '남', 3, '-', 1 , 2, 2);

insert into student (id, name, sex, number, major, grade, class_number, teacher_id) values (7, '고*영', '여', 1, '-', 1 , 3, 3);
insert into student (id, name, sex, number, major, grade, class_number, teacher_id) values (8, '김*건', '남', 2, '-', 1 , 3, 3);
insert into student (id, name, sex, number, major, grade, class_number, teacher_id) values (9, '김*우', '남', 3, '-', 1 , 3, 3);
insert into student (id, name, sex, number, major, grade, class_number, teacher_id) values (10, '강*빈', '남', 1, '-', 1 , 4, 4);
insert into student (id, name, sex, number, major, grade, class_number, teacher_id) values (11, '구*하', '여', 2, '-', 1 , 4, 4);
insert into student (id, name, sex, number, major, grade, class_number, teacher_id) values (12, '권*원', '남', 3, '-', 1 , 4, 4);

insert into student (id, name, sex, number, major, grade, class_number, teacher_id) values (13, '김*서', '남', 1, '소프트웨어개발과', 2 , 1, 5);
insert into student (id, name, sex, number, major, grade, class_number, teacher_id) values (14, '김*울', '여', 2, '소프트웨어개발과', 2 , 1, 5);
insert into student (id, name, sex, number, major, grade, class_number, teacher_id) values (15, '박*은', '여', 3, '소프트웨어개발과', 2 , 1, 5);
insert into student (id, name, sex, number, major, grade, class_number, teacher_id) values (16, '권*서', '남', 1, '소프트웨어개발과', 2 , 2, 6);
insert into student (id, name, sex, number, major, grade, class_number, teacher_id) values (17, '김*민', '남', 2, '소프트웨어개발과', 2 , 2, 6);
insert into student (id, name, sex, number, major, grade, class_number, teacher_id) values (18, '김*현', '남', 3, '소프트웨어개발과', 2 , 2, 6);

insert into student (id, name, sex, number, major, grade, class_number, teacher_id) values (19, '권*욱', '남', 1, '임베디드소프트웨어과', 2 , 3, 7);
insert into student (id, name, sex, number, major, grade, class_number, teacher_id) values (20, '김*형', '남', 2, '임베디드소프트웨어과', 2 , 3, 7);
insert into student (id, name, sex, number, major, grade, class_number, teacher_id) values (21, '김*현', '남', 3, '임베디드소프트웨어과', 2 , 3, 7);
insert into student (id, name, sex, number, major, grade, class_number, teacher_id) values (22, '김*수', '남', 1, '임베디드소프트웨어과', 2 , 4, 8);
insert into student (id, name, sex, number, major, grade, class_number, teacher_id) values (23, '김*진', '여', 2, '임베디드소프트웨어과', 2 , 4, 8);
insert into student (id, name, sex, number, major, grade, class_number, teacher_id) values (24, '김*은', '여', 3, '임베디드소프트웨어과', 2 , 4, 8);



-- 2.
create view vw_school_db
AS select student.grade, student.class_number, number, name, sex, major, first, second
from student
join class c on c.class_number = student.class_number
join teacher t on  student.teacher_id = t.id;

select * from vw_school_db;
