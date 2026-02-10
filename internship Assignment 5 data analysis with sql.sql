DROP DATABASE  STUDENTMANAGEMENT;
CREATE DATABASE STUDENTMANAGEMENT;
USE STUDENTMANAGEMENT;

---  DATABASE SETUP


CREATE TABLE StudentScores (
StudentID INT,
TotalScore INT,
MathScore INT,
ScienceScore INT
);

INSERT INTO StudentScores (StudentID, TotalScore, MathScore, ScienceScore)
VALUES
(1, 95, 45, 50),
(2, 100, 40, 60),     
(3,85,45,40),
(4,90,45,45);


Select * From StudentScores;



---- Assign  Grades Based on TotalScores


SELECT Studentid,TotalScore,
    CASE
        WHEN TotalScore >= 90 THEN 'A'
        WHEN TotalScore >= 80 THEN 'B'
        WHEN TotalScore >= 70 THEN 'C'
        ELSE 'D (Fail)'
    END AS Grade
     FROM studentScores;
     
     
     
     ----- Identify pass/Fail Status in Specific Subjects
     
     
     SELECT
    StudentID,

    MathScore,
    CASE
        WHEN MathScore >= 40 THEN 'Pass'
        ELSE 'Fail'
    END AS Math_Status,

    ScienceScore,
    CASE
        WHEN ScienceScore >= 40 THEN 'Pass'
        ELSE 'Fail'
    END AS Science_Status
from      
     
     