DROP DATABASE IF EXISTS `gradebook`;
CREATE DATABASE `gradebook`;
USE `gradebook`;

CREATE TABLE `students`(
`student_id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT, 
`first_name` VARCHAR(50) NOT NULL, 
`last_name` VARCHAR(50) NOT NULL
);

CREATE TABLE `courses`(
`course_id` INT PRIMARY KEY AUTO_INCREMENT, 
`department` VARCHAR(50) NOT NULL, 
`course_number` VARCHAR(50) NOT NULL,
`course_name` VARCHAR(50) NOT NULL,
`semester` VARCHAR(50) DEFAULT 'Fall', 
`year` INT DEFAULT 2024
);

CREATE TABLE `categories`(
`category_id` INT PRIMARY KEY AUTO_INCREMENT, 
`course_id` INT NOT NULL, 
`name` VARCHAR(50) NOT NULL,
`weight` DECIMAL(5, 2) NOT NULL,
FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`)
);

CREATE TABLE `assignments`(
`assignment_id` INT PRIMARY KEY AUTO_INCREMENT, 
`category_id` INT, 
`name` VARCHAR(50),
`weight` DECIMAL(5, 2),
FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) 
);

CREATE TABLE `scores`(
`score_id` INT PRIMARY KEY AUTO_INCREMENT, 
`student_id` INT, 
`assignment_id` INT,
`score` DECIMAL(5, 2),
FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`), 
FOREIGN KEY (`assignment_id`) REFERENCES `assignments` (`assignment_id`)
);

CREATE TABLE `grades`(
`grade_id` INT PRIMARY KEY AUTO_INCREMENT,
`student_id` INT, 
`course_id` INT,
`score` DECIMAL(5, 2),
FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`), 
FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`)
);

INSERT INTO `students` (`first_name`, `last_name`) VALUES ('Diana', 'Roberts');
INSERT INTO `students` (`first_name`, `last_name`) VALUES ('Hassan', 'Riley');
INSERT INTO `students` (`first_name`, `last_name`) VALUES ('Wanda', 'Harris');
INSERT INTO `students` (`first_name`, `last_name`) VALUES ('Nicholas', 'Winters');
INSERT INTO `students` (`first_name`, `last_name`) VALUES ('Reggie', 'Quinton');
INSERT INTO `students` (`first_name`, `last_name`) VALUES ('Marissa', 'Quincy');

INSERT INTO `courses` (`department`, `course_number`, `course_name`) VALUES ('Statistics', 100, 'Statistical Theory');
INSERT INTO `courses` (`department`, `course_number`, `course_name`) VALUES ('History', 101, 'Ancient History');
INSERT INTO `courses` (`department`, `course_number`, `course_name`) VALUES ('Engineering', 102, 'Computer Science');
INSERT INTO `courses` (`department`, `course_number`, `course_name`) VALUES ('Music', 103, 'Piano');
INSERT INTO `courses` (`department`, `course_number`, `course_name`) VALUES ('Mathematics', 104, 'Calculus');

INSERT INTO `categories` (`course_id`, `name`, `weight`) VALUES (1, 'Participation', 10);
INSERT INTO `categories` (`course_id`, `name`, `weight`) VALUES (1, 'Homework', 20);
INSERT INTO `categories` (`course_id`, `name`, `weight`) VALUES (1, 'Tests', 50);
INSERT INTO `categories` (`course_id`, `name`, `weight`) VALUES (1, 'Projects', 20);
INSERT INTO `categories` (`course_id`, `name`, `weight`) VALUES (2, 'Participation', 10);
INSERT INTO `categories` (`course_id`, `name`, `weight`) VALUES (2, 'Homework', 20);
INSERT INTO `categories` (`course_id`, `name`, `weight`) VALUES (2, 'Tests', 50);
INSERT INTO `categories` (`course_id`, `name`, `weight`) VALUES (2, 'Projects', 20);
INSERT INTO `categories` (`course_id`, `name`, `weight`) VALUES (3, 'Participation', 10);
INSERT INTO `categories` (`course_id`, `name`, `weight`) VALUES (3, 'Homework', 20);
INSERT INTO `categories` (`course_id`, `name`, `weight`) VALUES (3, 'Tests', 50);
INSERT INTO `categories` (`course_id`, `name`, `weight`) VALUES (3, 'Projects', 20);
INSERT INTO `categories` (`course_id`, `name`, `weight`) VALUES (4, 'Participation', 10);
INSERT INTO `categories` (`course_id`, `name`, `weight`) VALUES (4, 'Homework', 20);
INSERT INTO `categories` (`course_id`, `name`, `weight`) VALUES (4, 'Tests', 50);
INSERT INTO `categories` (`course_id`, `name`, `weight`) VALUES (4, 'Projects', 20);
INSERT INTO `categories` (`course_id`, `name`, `weight`) VALUES (5, 'Participation', 10);
INSERT INTO `categories` (`course_id`, `name`, `weight`) VALUES (5, 'Homework', 20);
INSERT INTO `categories` (`course_id`, `name`, `weight`) VALUES (5, 'Tests', 50);
INSERT INTO `categories` (`course_id`, `name`, `weight`) VALUES (5, 'Projects', 20);

INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (1, 'Participation 1', 5);
INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (1, 'Participation 2', 5);
INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (2, 'HW 1', 10);
INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (2, 'HW 2', 10);
INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (3, 'Test 1', 25);
INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (3, 'Test 2', 25);
INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (4, 'Project 1', 10);
INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (4, 'Project 2', 10);
INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (5, 'Participation 1', 10);
INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (6, 'HW 1', 20);
INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (7, 'Test 1', 50);
INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (8, 'Project 1', 20);
INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (9, 'Participation 1', 5);
INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (9, 'Participation 2', 5);
INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (10, 'HW 1', 5);
INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (10, 'HW 2', 5);
INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (10, 'HW 3', 5);
INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (10, 'HW 4', 5);
INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (11, 'Test 1', 10);
INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (11, 'Test 2', 10);
INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (11, 'Test 3', 10);
INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (11, 'Test 4', 10);
INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (11, 'Test 5', 10);
INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (12, 'Project 1', 5);
INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (12, 'Project 2', 5);
INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (12, 'Project 3', 5);
INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (12, 'Project 4', 5);
INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (13, 'Participation 1', 10);
INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (14, 'HW 1', 4);
INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (14, 'HW 2', 4);
INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (14, 'HW 3', 4);
INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (14, 'HW 4', 4);
INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (14, 'HW 5', 4);
INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (15, 'Test 1', 25);
INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (15, 'Test 2', 25);
INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (16, 'Project 1', 5);
INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (16, 'Project 2', 5);
INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (16, 'Project 3', 5);
INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (16, 'Project 4', 5);
INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (17, 'Participation 1', 5);
INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (17, 'Participation 2', 5);
INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (18, 'HW 1', 10);
INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (18, 'HW 2', 10);
INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (19, 'Test 1', 50);
INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (20, 'Project 1', 10);
INSERT INTO `assignments` (`category_id`, `name`, `weight`) VALUES (20, 'Project 2', 10);

-- student 1 scores
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (1, 1, 69);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (1, 2, 88);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (1, 3, 63);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (1, 4, 72);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (1, 5, 51);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (1, 6, 66);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (1, 7, 88);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (1, 8, 80);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (1, 9, 75);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (1, 10, 69);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (1, 11, 71);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (1, 12, 85);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (1, 13, 91);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (1, 14, 61);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (1, 15, 64);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (1, 16, 89);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (1, 17, 53);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (1, 18, 66);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (1, 19, 76);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (1, 10, 88);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (1, 21, 88);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (1, 22, 55);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (1, 23, 62);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (1, 24, 57);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (1, 25, 86);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (1, 26, 70);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (1, 27, 74);

-- student 2 scores
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (2, 1, 83);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (2, 2, 88);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (2, 3, 91);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (2, 4, 85);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (2, 5, 80);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (2, 6, 97);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (2, 7, 80);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (2, 8, 74);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (2, 28, 80);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (2, 29, 78);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (2, 30, 67);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (2, 31, 71);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (2, 32, 67);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (2, 33, 73);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (2, 34, 84);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (2, 35, 87);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (2, 36, 79);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (2, 37, 89);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (2, 38, 74);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (2, 39, 73);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (2, 40, 65);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (2, 41, 96);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (2, 42, 99);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (2, 43, 65);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (2, 44, 95);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (2, 45, 64);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (2, 46, 62);

-- student 3 scores 
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (3, 1, 83);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (3, 2, 85);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (3, 3, 68);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (3, 4, 82);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (3, 5, 79);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (3, 6, 92);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (3, 7, 89);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (3, 8, 83);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (3, 13, 68);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (3, 14, 83);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (3, 15, 68);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (3, 16, 73);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (3, 17, 68);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (3, 18, 84);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (3, 19, 95);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (3, 20, 65);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (3, 21, 75);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (3, 22, 86);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (3, 23, 67);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (3, 24, 74);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (3, 25, 90);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (3, 26, 79);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (3, 27, 71);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (3, 28, 77);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (3, 29, 74);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (3, 30, 87);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (3, 31, 75);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (3, 32, 74);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (3, 33, 89);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (3, 34, 68);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (3, 35, 74);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (3, 36, 65);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (3, 37, 75);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (3, 38, 98);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (3, 39, 70);

-- student 4 scores
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (4, 9, 78);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (4, 10, 76);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (4, 11, 83);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (4, 12, 99);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (4, 13, 100);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (4, 14, 89);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (4, 15, 75);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (4, 16, 85);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (4, 17, 79);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (4, 18, 95);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (4, 19, 91);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (4, 20, 74);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (4, 21, 77);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (4, 22, 70);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (4, 23, 72);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (4, 24, 81);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (4, 25, 73);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (4, 26, 78);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (4, 27, 99);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (4, 40, 76);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (4, 41, 82);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (4, 42, 83);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (4, 43, 70);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (4, 44, 81);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (4, 45, 92);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (4, 46, 100);

-- student 5 scores 
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (5, 9, 77);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (5, 10, 90);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (5, 11, 92);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (5, 12, 100);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (5, 28, 85);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (5, 29, 87);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (5, 30, 89);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (5, 31, 82);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (5, 32, 84);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (5, 33, 90);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (5, 34, 83);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (5, 35, 86);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (5, 36, 97);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (5, 37, 98);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (5, 38, 93);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (5, 39, 84);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (5, 40, 86);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (5, 41, 97);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (5, 42, 89);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (5, 43, 100);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (5, 44, 84);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (5, 45, 89);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (5, 46, 82);

-- student 6 scores
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (6, 1, 85);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (6, 2, 98);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (6, 3, 83);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (6, 4, 96);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (6, 5, 91);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (6, 6, 92);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (6, 7, 81);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (6, 8, 100);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (6, 9, 91);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (6, 10, 95);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (6, 11, 89);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (6, 12, 88);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (6, 40, 87);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (6, 41, 86);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (6, 42, 82);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (6, 43, 85);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (6, 44, 95);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (6, 45, 93);
INSERT INTO `scores` (`student_id`, `assignment_id`, `score`) VALUES (6, 46, 87);

-- Compute the average score of assignment ID 1
SELECT AVG(`score`) AS `average_score`
FROM `scores`
WHERE `assignment_id` = 1;

-- Compute the highest score of assignment ID 1
SELECT MAX(`score`) AS `highest_score`
FROM `scores`
WHERE `assignment_id` = 1;

-- Compute the lowest score of assignment ID 1
SELECT MIN(`score`) AS `lowest_score`
FROM `scores`
WHERE `assignment_id` = 1;



select score, weight, student_id, score * weight /100 as grade
from scores
join assignments on scores.assignment_id = assignments.assignment_id;


-- List all students for a given course (course id=1)
SELECT s.student_id, s.first_name, s.last_name
FROM students s
JOIN grades g ON s.student_id = g.student_id
JOIN courses c ON g.course_id = c.course_id
-- List all students for a given course
WHERE c.course_id = 1; -- -- WHERE c.course_id = <course_id>; --


-- LIST STUDENTS AND SCORES --
SELECT s.student_id, s.first_name, s.last_name, a.assignment_id, a.name AS assignment_name, sc.score
FROM students s
JOIN scores sc ON s.student_id = sc.student_id
JOIN assignments a ON sc.assignment_id = a.assignment_id
JOIN categories cat ON a.category_id = cat.category_id
JOIN courses c ON cat.course_id = c.course_id
WHERE c.course_id = 1
ORDER BY s.student_id, a.assignment_id;

-- Calculate and insert grades into the grades table
INSERT INTO grades (student_id, course_id, score)
SELECT s.student_id, cat.course_id, 
       ROUND(SUM(sc.score * a.weight / 100), 2) AS score
FROM students s
JOIN scores sc ON s.student_id = sc.student_id
JOIN assignments a ON sc.assignment_id = a.assignment_id
JOIN categories cat ON a.category_id = cat.category_id
GROUP BY s.student_id, cat.course_id;




/*Add 2 points to the score of each student on an assignment*/

UPDATE `scores`
SET `score` = `score` + 2
WHERE `assignment_id` = 1;

/* Add 2 points just to those students whose last name contains a ‘Q’  */

UPDATE scores
JOIN students ON scores.student_id = students.student_id
SET scores.score = scores.score + 2
WHERE students.last_name LIKE '%Q%' AND scores.assignment_id = 1;


 -- COMPUTE GRADE FOR STUDENTS + DROP THE LOWEST SCORES.     DOESNT WORKX
-- SELECT s.student_id, s.first_name, s.last_name, g.course_id,
--       SUM(sc.score * a.weight / 100) AS total_score
-- FROM students s
-- JOIN (
-- 		SELECT sc.*, a.category_id, a.weight,
--           ROW_NUMBER() OVER (PARTITION BY a.category_id, sc.student_id ORDER BY sc.score DESC) AS row_num
--    FROM scores sc
--    JOIN assignments a ON sc.assignment_id = a.assignment_id
-- ) sc ON s.student_id = sc.student_id
-- JOIN categories cat ON sc.category_id = cat.category_id
-- JOIN grades g ON s.student_id = g.student_id AND g.course_id = cat.course_id
-- WHERE sc.row_num > 1  -- Exclude the lowest score for each category
-- GROUP BY s.student_id, s.first_name, s.last_name, g.course_id;





-- INSERT INTO `grades` (`student_id`, `course_id`, `score`) VALUES (1, 1, SUM(sc.score * a.weight / 100));

-- COMPUTE GRADES FOR STUDENTS -- 
-- SELECT s.student_id, s.first_name, s.last_name, g.course_id,
--        SUM(sc.score * a.weight / 100) AS total_score
-- FROM students s
-- JOIN scores sc ON s.student_id = sc.student_id
-- JOIN assignments a ON sc.assignment_id = a.assignment_id
-- JOIN categories cat ON a.category_id = cat.category_id
-- JOIN grades g ON s.student_id = g.student_id AND g.course_id = cat.course_id
-- GROUP BY s.student_id, s.first_name, g.score, g.course_id;

