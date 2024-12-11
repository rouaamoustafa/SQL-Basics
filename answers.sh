
### Basic Queries
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






### Creating Table
CREATE TABLE graduates(
ID INTEGER NOT NULL PRIMARY Key AUTOINCREMENT,
name TEXT NOT NULL,
Age INTEGER,
Gender TEXT,
Points INTEGER,
Graduation TEXT
);

#10. Copy Layal's data from **students** to **graduates**
INSERT INTO graduates (name ,Age,Gender,Points)
SELECT Name ,age,Gender ,Points From students WHERE Name ='Layal';

#11. Add the graduation date previously mentioned to Layal's record in **graduates**
UPDATE graduates SET Graduation ='2020-2-8' WHERE Name ='Layal';

#12. Remove Layal's record from **students**
DELETE FROM students WHERE Name='Layal';

#14. Produce a table that contains, for each employee, his/her name, company name, and company date.
SELECT employees.Name AS Employee, companies.Name AS Company, companies.Date AS Date
FROM employees
JOIN companies ON employees.Company = companies.name;

#15. Find the name of **employees** that work in companies made before 2000.
SELECT employees.Name
FROM employees
JOIN companies ON employees.Company = companies.Name
WHERE companies.Date < 2000;

#16. Find the name of company that has a graphic designer.
SELECT companies.Name
FROM companies
JOIN employees ON companies.Name = employees.Company
WHERE employees.Role = 'Graphic Designer';





### Joins