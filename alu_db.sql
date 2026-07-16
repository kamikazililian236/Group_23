CREATE  DATABASE Group_23;
create table classroom(
    classroom_id int primary key,
    room_number varchar(10),
    building varchar(50),
    capacity int
);


insert into classroom(classroom_id,room_number,building,capacity)
values
(001,03,'South East',50),
(002,04,'Ilinios Chamber',45),
(003,05,'Social Commons',25),
(004,06,'Berlin corner',76),
(005,07,'Frederick rooms',37),
(006,08,'Leadership center',22)

UPDATE classroom
SET capacity = 30
WHERE classroom_id = 006;

DELETE FROM classroom
WHERE classroom_id = 005;

SELECT *
FROM classroom
WHERE capacity > 40;