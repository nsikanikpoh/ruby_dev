
SELECT
  students.id,
  students.name,
  students.marks,
  CASE WHEN students.marks > 90 THEN 'A+'
  WHEN students.marks <= 90 AND students.marks > 70 THEN 'A' 
  WHEN students.marks <= 70 AND students.marks > 50 THEN 'B' 
  WHEN students.marks <= 50 AND students.marks >= 40 THEN 'C' 
  ELSE 'Fail' 
  END AS Grade
FROM
  students
ORDER BY
  students.id,
  students.name;


  SELECT
  employee.id,
  employee.name,
  employee.age,
  employee.address,
  CASE WHEN employee.marks > 90 THEN 'A+' 
  WHEN employee.marks < 90 AND employee.marks > 70 THEN 'A'
  WHEN employee.marks < 70 AND employee.marks > 50 THEN 'B' 
  WHEN employee.marks < 50 AND employee.marks >= 40 THEN 'C' 
  ELSE 'Fail' 
  END AS Grade
FROM
  employee
ORDER BY
  employee.id,
  employee.name;


