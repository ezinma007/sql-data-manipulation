/*STRING FUNCTIONS*/

SELECT LOWER ('daniel') 
SELECT UPPER (e_firstname) FROM tblemployees

SELECT LEN ('management')
SELECT LEN (e_firstname) FROM tblemployees

SELECT CHARINDEX ((e_firstname), 'Anthony') FROM tblemployees

SELECT SUBSTRING (e_lastname,1,4) FROM tblemployees

SELECT CONCAT (e_firstname,e_lastname) FULLNAME FROM tblemployees

/*NUMERIC FUNCTION*/
SELECT ABS(e_salary -50000) FROM tblemployees

SELECT SQRT(e_salary) FROM tblemployees

SELECT POWER (e_salary, 2) FROM tblemployees

SELECT MAX (e_salary) FROM tblemployees

SELECT MIN (e_salary) FROM tblemployees

/*DATE FUNCTION*/

SELECT SYSDATETIME () 

SELECT GETDATE()

SELECT MONTH (e_hiredate) FROM tblemployees

SELECT YEAR (e_hiredate) FROM tblemployees

SELECT DAY (e_hiredate) FROM tblemployees

SELECT * FROM tblemployees WHERE YEAR (e_hiredate) = 2022

SELECT * FROM tblemployees WHERE MONTH (e_hiredate) = 8


/*AGGREGATE FUNCTIONS*/

SELECT AVG(e_salary) FROM tblemployees

SELECT SUM(e_salary) FROM tblemployees


SELECT COUNT (e_salary) FROM tblemployees

SELECT * FROM tblemployees 


/*Transaction*/
BEGIN TRY

BEGIN TRANSACTION

INSERT INTO tblemployees VALUES (7, 'Micheal','Nnaji',28, 'male','it',3000000,'2013-11-01')
INSERT INTO tblemployees VALUES (8, 'Samson','Achukwu',28, 'male','it',2500000,'2013-11-01')
INSERT INTO tblemployees VALUES (9, 'Chinemerem','Samuel',28, 'male','it',500000,'2013-11-01')
INSERT INTO tblemployees VALUES (10, 'Peter','Nnaji',28, 'male','it',3000000,'2013-11-01')
INSERT INTO tblemployees VALUES (11, 'Hassan','Nsan',28, 'male','it',1000000,'2013-11-01')
INSERT INTO tblemployees VALUES (12, 'James','Achukwu',28, 'male','it',2500000,'2013-11-01')
UPDATE tblemployees SET e_salary = 500000 WHERE e_gender = 'male'
UPDATE tblemployees SET e_salary = 1000000 WHERE e_gender = 'female'



COMMIT TRANSACTION
PRINT 'TRANSACTION COMMITTED'

END TRY

BEGIN CATCH
ROLLBACK TRANSACTION
PRINT 'TRANSACTION ROLLEDBACK'
END CATCH

SELECT * FROM tblemployees