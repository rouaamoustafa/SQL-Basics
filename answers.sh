#1. Get all the names of students in the database
select Name From students;

#2. Get all the data of students above 30 years old
select * From students WHERE Age>30;

#3. Get the names of the females who are 30 years old
select name From students WHERE Gender = "F" AND Age>30;

#4. Get the number of Points of **Alex**
select Points From students WHERE name = "Alex";

#5. Add yourself as a new student (your name, your age...)
INSERT INTO students VALUES (NULL,'Rouaa',28,'F',100);

#6. Increase the points of **Basma** because she solved a new exercise
UPDATE students SET Points = Points + 50 WHERE name ='Basma';

#7. Decrease the points of **Alex** because he's late today
UPDATE students SET Points = Points - 20 WHERE name ='Alex';

