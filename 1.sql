
/* -----------------------------------------------------------
   STUDENT TABLE
--------------------------------------------------------------
STUDENT_ID | FIRST_NAME | LAST_NAME | GPA  | ENROLLMENT_DATE     | MAJOR
---------------------------------------------------------------------------
201        | Shivansh   | Mahajan   | 8.79 | 2021-09-01 09:30     | Computer Science
202        | Umesh      | Sharma    | 8.44 | 2021-09-01 08:30     | Mathematics
203        | Rakesh     | Kumar     | 5.6  | 2021-09-01 10:00     | Biology
204        | Radha      | Sharma    | 9.2  | 2021-09-01 12:45     | Chemistry
205        | Kush       | Kumar     | 7.85 | 2021-09-01 08:30     | Physics
206        | Prem       | Chopra    | 9.56 | 2021-09-01 09:24     | History
207        | Pankaj     | Vats      | 9.78 | 2021-09-01 02:30     | English
208        | Navleen    | Kaur      | 7.0  | 2021-09-01 06:30     | Mathematics
---------------------------------------------------------------------------
*/

/* -----------------------------------------------------------
   PROGRAM TABLE
--------------------------------------------------------------
STUDENT_REF_ID | PROGRAM_NAME      | PROGRAM_START_DATE
---------------------------------------------------------------------------
201            | Computer Science  | 2021-09-01 00:00:00
202            | Mathematics       | 2021-09-01 00:00:00
208            | Mathematics       | 2021-09-01 00:00:00
205            | Physics           | 2021-09-01 00:00:00
204            | Chemistry         | 2021-09-01 00:00:00
207            | Psychology        | 2021-09-01 00:00:00
206            | History           | 2021-09-01 00:00:00
203            | Biology           | 2021-09-01 00:00:00
---------------------------------------------------------------------------
*/

/* -----------------------------------------------------------
   SCHOLARSHIP TABLE
--------------------------------------------------------------
STUDENT_REF_ID | SCHOLARSHIP_AMOUNT | SCHOLARSHIP_DATE
---------------------------------------------------------------------------
201            | 5000               | 2021-10-15 00:00:00
202            | 4500               | 2022-08-18 00:00:00
203            | 3000               | 2022-01-25 00:00:00
204            | 4000               | 2021-10-15 00:00:00
---------------------------------------------------------------------------
*/

-- Write a SQL query to fetch "FIRST_NAME" from the Student table in upper case and use ALIAS name as STUDENT_NAME.

SELECT UPPER(FIRST_NAME) AS STUDENT_NAME FROM Student;

-- Write a SQL query to fetch unique values of MAJOR Subjects from Student table.

SELECT DISTINCT MAJOR FROM Student;
SELECT MAJOR FROM STUDENT GROUP BY(MAJOR);

-- Write a SQL query to print the first 3 characters of FIRST_NAME from Student table.

SELECT SUBSTRING(FIRST_NAME, 1, 3) FROM Student;

-- Write a SQL query that fetches the unique values of MAJOR Subjects from Student table and print its length.

SELECT DISTINCT MAJOR, LENGTH(MAJOR) FROM Student;


