
1. Create table EMPLOYEE with the following details.
create table employee( Employee_id float(6) ,Last_Name varchar(25) , Job_id varchar(10),SALARY float(8,2),comm_pct float(4,2),MGR_ID float(6),Deparatment_ID float(4));
2.Insert the following data into EMPLOYEE table
 insert into employee values(198, 'Connell', 'SH_CLERK', 2600, 2.5, 124, 50);
insert into employee values (199, 'Grant' ,'SH_CLERK', 2600, 2.2 ,124, 50);
 insert into employee values ( 200 ,'Whalen', 'AD_ASST' ,4400, 1.3 ,101 ,10);
 insert into employee values( 201, 'Hartstein', 'IT_PROG' ,6000, null, 100, 20);
 insert into employee values( 202, 'Fay', 'AC_MGR' ,6500 ,null, 210, 20);
 insert into empoyee values( 203, 'Mavris', 'AD_VP',' 7500', null ,101, 40);
 insert into employee values(204 ,'Baer', 'AD_PRES', 3500 ,1.5, 101, 90);
 insert into employee values( 205, 'Higgins', 'AC_MGR' ,2300, null ,101 ,60);
 insert into employee values( 206, 'Gitz', 'IT_PROG', 5000, null ,103, 60);
 insert into employee values( 100 ,'King' ,'AD_ASST' ,8956, 0.3 ,108 ,100);
 insert into employee values( 101 ,'Kochar', 'SH_CLERK', 3400 ,1.3, 118, 30);

 mysql> select * from employee;
+-------------+-----------+----------+---------+----------+--------+----------------+
| Employee_id | Last_Name | Job_id   | SALARY  | comm_pct | MGR_ID | Deparatment_ID |
+-------------+-----------+----------+---------+----------+--------+----------------+
|         198 | Connell   | SH_CLERK | 2600.00 |     2.50 |    124 |             50 |
|         199 | Grant     | SH_CLERK | 2600.00 |     2.20 |    124 |             50 |
|         200 | Whalen    | AD_ASST  | 4400.00 |     1.30 |    101 |             10 |
|         201 | Hartstein | IT_PROG  | 6000.00 |     NULL |    100 |             20 |
|         202 | Fay       | AC_MGR   | 6500.00 |     NULL |    210 |             20 |
|         203 | Mavris    | AD_VP    | 7500.00 |     NULL |    101 |             40 |
|         204 | Baer      | AD_PRES  | 3500.00 |     1.50 |    101 |             90 |
|         205 | Higgins   | AC_MGR   | 2300.00 |     NULL |    101 |             60 |
|         206 | Gitz      | IT_PROG  | 5000.00 |     NULL |    103 |             60 |
|         100 | King      | AD_ASST  | 8956.00 |     0.30 |    108 |            100 |
|         101 | Kochar    | SH_CLERK | 3400.00 |     1.30 |    118 |             30 |
3. Display last_name, job_id, employee_id for each employee with employee_id 
appearing first.
mysql> select  employee_id,last_name,job_id  from employee;
+-------------+-----------+----------+
| employee_id | last_name | job_id   |
+-------------+-----------+----------+
|         198 | Connell   | SH_CLERK |
|         199 | Grant     | SH_CLERK |
|         200 | Whalen    | AD_ASST  |
|         201 | Hartstein | IT_PROG  |
|         202 | Fay       | AC_MGR   |
|         203 | Mavris    | AD_VP    |
|         204 | Baer      | AD_PRES  |
|         205 | Higgins   | AC_MGR   |
|         206 | Gitz      | IT_PROG  |
|         100 | King      | AD_ASST  |
|         101 | Kochar    | SH_CLERK |
+-------------+-----------+----------+



4. Display the details of all employees of department 60
 select * from employee where deparatment_id=60;
+-------------+-----------+---------+---------+----------+--------+----------------+
| Employee_id | Last_Name | Job_id  | SALARY  | comm_pct | MGR_ID | Deparatment_ID |
+-------------+-----------+---------+---------+----------+--------+----------------+
|         205 | Higgins   | AC_MGR  | 2300.00 |     NULL |    101 |             60 |
|         206 | Gitz      | IT_PROG | 5000.00 |     NULL |    103 |             60 |

5. Display the employee details of the employee who’s last_name is King.
mysql> select * from employee where last_name='king';
+-------------+-----------+---------+---------+----------+--------+----------------+
| Employee_id | Last_Name | Job_id  | SALARY  | comm_pct | MGR_ID | Deparatment_ID |
+-------------+-----------+---------+---------+----------+--------+----------------+
|         100 | King      | AD_ASST | 8956.00 |     0.30 |    108 |            100 |
+-------------+-----------+---------+---------+----------+--------+----------------+
1 row in set (0.00 sec)
6. Display unique job_id from EMPLOYEE table. Give alias name to the column as 
JOB_TITLE.
mysql> select distinct job_id as job_tittle from employee;
+------------+
| job_tittle |
+------------+
| SH_CLERK   |
| AD_ASST    |
| IT_PROG    |
| AC_MGR     |
| AD_VP      |
| AD_PRES    |
+------------+
7. Display last_name, salary and salary increase of Rs300. Give the new column name 
as ‘Increased Salary’.
mysql> select last_name,salary,(salary+300) as 'Increased Salary' from employee;
+-----------+---------+------------------+
| last_name | salary  | Increased Salary |
+-----------+---------+------------------+
| Connell   | 2600.00 |          2900.00 |
| Grant     | 2600.00 |          2900.00 |
| Whalen    | 4400.00 |          4700.00 |
| Hartstein | 6000.00 |          6300.00 |
| Fay       | 6500.00 |          6800.00 |
| Mavris    | 7500.00 |          7800.00 |
| Baer      | 3500.00 |          3800.00 |
| Higgins   | 2300.00 |          2600.00 |
| Gitz      | 5000.00 |          5300.00 |
| King      | 8956.00 |          9256.00 |
| Kochar    | 3400.00 |          3700.00 |
+-----------+---------+------------------+
8. Display last_name, salary and annual compensation of all employees, plus a 
onetime bonus of Rs 100. Give an alias name to the column displaying annual 
compensation.
mysql> select last_name,salary,(salary+100) as 'annual_compensation'from employee;
+-----------+---------+---------------------+
| last_name | salary  | annual_compensation |
+-----------+---------+---------------------+
| Connell   | 2600.00 |             2700.00 |
| Grant     | 2600.00 |             2700.00 |
| Whalen    | 4400.00 |             4500.00 |
| Hartstein | 6000.00 |             6100.00 |
| Fay       | 6500.00 |             6600.00 |
| Mavris    | 7500.00 |             7600.00 |
| Baer      | 3500.00 |             3600.00 |
| Higgins   | 2300.00 |             2400.00 |
| Gitz      | 5000.00 |             5100.00 |
| King      | 8956.00 |             9056.00 |
| Kochar    | 3400.00 |             3500.00 |
+-----------+---------+---------------------+
11 rows in set (0.00 sec)


9. Display the details of those employees who get commission.
mysql> select *  from employee where comm_pct IS NOT NULL;
+-------------+-----------+----------+---------+----------+--------+----------------+
| Employee_id | Last_Name | Job_id   | SALARY  | comm_pct | MGR_ID | Deparatment_ID |
+-------------+-----------+----------+---------+----------+--------+----------------+
|         198 | Connell   | SH_CLERK | 2600.00 |     2.50 |    124 |             50 |
|         199 | Grant     | SH_CLERK | 2600.00 |     2.20 |    124 |             50 |
|         200 | Whalen    | AD_ASST  | 4400.00 |     1.30 |    101 |             10 |
|         204 | Baer      | AD_PRES  | 3500.00 |     1.50 |    101 |             90 |
|         100 | King      | AD_ASST  | 8956.00 |     0.30 |    108 |            100 |
|         101 | Kochar    | SH_CLERK | 3400.00 |     1.30 |    118 |             30 |
+-------------+-----------+----------+---------+----------+--------+----------------+
10.Display the details of those employees who do not get commission.
mysql> select * from employee where comm_pct IS NULL;
+-------------+-----------+---------+---------+----------+--------+----------------+
| Employee_id | Last_Name | Job_id  | SALARY  | comm_pct | MGR_ID | Deparatment_ID |
+-------------+-----------+---------+---------+----------+--------+----------------+
|         201 | Hartstein | IT_PROG | 6000.00 |     NULL |    100 |             20 |
|         202 | Fay       | AC_MGR  | 6500.00 |     NULL |    210 |             20 |
|         203 | Mavris    | AD_VP   | 7500.00 |     NULL |    101 |             40 |
|         205 | Higgins   | AC_MGR  | 2300.00 |     NULL |    101 |             60 |
|         206 | Gitz      | IT_PROG | 5000.00 |     NULL |    103 |             60 |
+-------------+-----------+---------+---------+----------+--------+----------------+
11.Display the Employee_id, Department_id and Salary all employees whose salary is 
greater than 5000.
mysql> select employee_id,deparatment_id,salary from employee where salary>5000;
+-------------+----------------+---------+
| employee_id | deparatment_id | salary  |
+-------------+----------------+---------+
|         201 |             20 | 6000.00 |
|         202 |             20 | 6500.00 |
|         203 |             40 | 7500.00 |
|         100 |            100 | 8956.00 |
+-------------+----------------+---------+
12.Display the Last_Name and Salary of all employees whose salary is between 4000 
and 7000.

mysql> select last_name,salary  from employee where salary BETWEEN 4000 AND 7000;
+-----------+---------+
| last_name | salary  |
+-----------+---------+
| Whalen    | 4400.00 |
| Hartstein | 6000.00 |
| Fay       | 6500.00 |
| Gitz      | 5000.00 |
+-----------+---------+
13.Display the details of all employees whose salary is either 6000 or 6500 or 7000.
mysql> select * from employee where salary IN (6000,6500,7000);
+-------------+-----------+---------+---------+----------+--------+----------------+
| Employee_id | Last_Name | Job_id  | SALARY  | comm_pct | MGR_ID | Deparatment_ID |
+-------------+-----------+---------+---------+----------+--------+----------------+
|         201 | Hartstein | IT_PROG | 6000.00 |     NULL |    100 |             20 |
|         202 | Fay       | AC_MGR  | 6500.00 |     NULL |    210 |             20 |
+-------------+-----------+---------+---------+----------+--------+----------------+
14.Display the details of all those employees who work either in department 10 or 20 
or 30 or 50.
mysql> select * from employee where deparatment_id IN (10,20,30,50);
+-------------+-----------+----------+---------+----------+--------+----------------+
| Employee_id | Last_Name | Job_id   | SALARY  | comm_pct | MGR_ID | Deparatment_ID |
+-------------+-----------+----------+---------+----------+--------+----------------+
|         198 | Connell   | SH_CLERK | 2600.00 |     2.50 |    124 |             50 |
|         199 | Grant     | SH_CLERK | 2600.00 |     2.20 |    124 |             50 |
|         200 | Whalen    | AD_ASST  | 4400.00 |     1.30 |    101 |             10 |
|         201 | Hartstein | IT_PROG  | 6000.00 |     NULL |    100 |             20 |
|         202 | Fay       | AC_MGR   | 6500.00 |     NULL |    210 |             20 |
|         101 | Kochar    | SH_CLERK | 3400.00 |     1.30 |    118 |             30 |
+-------------+-----------+----------+---------+----------+--------+----------------+
15.Display the details of all employees whose salary is not equal to 5000.
mysql> select * from employee where  salary  !=5000;
+-------------+-----------+----------+---------+----------+--------+----------------+
| Employee_id | Last_Name | Job_id   | SALARY  | comm_pct | MGR_ID | Deparatment_ID |
+-------------+-----------+----------+---------+----------+--------+----------------+
|         198 | Connell   | SH_CLERK | 2600.00 |     2.50 |    124 |             50 |
|         199 | Grant     | SH_CLERK | 2600.00 |     2.20 |    124 |             50 |
|         200 | Whalen    | AD_ASST  | 4400.00 |     1.30 |    101 |             10 |
|         201 | Hartstein | IT_PROG  | 6000.00 |     NULL |    100 |             20 |
|         202 | Fay       | AC_MGR   | 6500.00 |     NULL |    210 |             20 |
|         203 | Mavris    | AD_VP    | 7500.00 |     NULL |    101 |             40 |
|         204 | Baer      | AD_PRES  | 3500.00 |     1.50 |    101 |             90 |
|         205 | Higgins   | AC_MGR   | 2300.00 |     NULL |    101 |             60 |
|         100 | King      | AD_ASST  | 8956.00 |     0.30 |    108 |            100 |
|         101 | Kochar    | SH_CLERK | 3400.00 |     1.30 |    118 |             30 |
+-------------+-----------+----------+---------+----------+--------+----------------+
10 rows in set (0.00 sec)
16.Display the details of all the CLERKS working in the organization.
mysql> select * from employee where job_id='SH_CLERK';
+-------------+-----------+----------+---------+----------+--------+----------------+
| Employee_id | Last_Name | Job_id   | SALARY  | comm_pct | MGR_ID | Deparatment_ID |
+-------------+-----------+----------+---------+----------+--------+----------------+
|         198 | Connell   | SH_CLERK | 2600.00 |     2.50 |    124 |             50 |
|         199 | Grant     | SH_CLERK | 2600.00 |     2.20 |    124 |             50 |
|         101 | Kochar    | SH_CLERK | 3400.00 |     1.30 |    118 |             30 |
+-------------+-----------+----------+---------+----------+--------+----------------+
3 rows in set (0.01 sec)
17.Update the job_id’s of the employees who earn more than 5000 to Grade_A. 
Display the table EMPLOYEE after updating.
mysql> update employee SET job_id='Grade_A' where salary>5000;
mysql> select * from employee;
+-------------+-----------+----------+---------+----------+--------+----------------+
| Employee_id | Last_Name | Job_id   | SALARY  | comm_pct | MGR_ID | Deparatment_ID |
+-------------+-----------+----------+---------+----------+--------+----------------+
|         198 | Connell   | SH_CLERK | 2600.00 |     2.50 |    124 |             50 |
|         199 | Grant     | SH_CLERK | 2600.00 |     2.20 |    124 |             50 |
|         200 | Whalen    | AD_ASST  | 4400.00 |     1.30 |    101 |             10 |
|         201 | Hartstein | Grade_A  | 6000.00 |     NULL |    100 |             20 |
|         202 | Fay       | Grade_A  | 6500.00 |     NULL |    210 |             20 |
|         203 | Mavris    | Grade_A  | 7500.00 |     NULL |    101 |             40 |
|         204 | Baer      | AD_PRES  | 3500.00 |     1.50 |    101 |             90 |
|         205 | Higgins   | AC_MGR   | 2300.00 |     NULL |    101 |             60 |
|         206 | Gitz      | IT_PROG  | 5000.00 |     NULL |    103 |             60 |
|         100 | King      | Grade_A  | 8956.00 |     0.30 |    108 |            100 |
|         101 | Kochar    | SH_CLERK | 3400.00 |     1.30 |    118 |             30 |
+-------------+-----------+----------+---------+----------+--------+----------------+
11 rows in set (0.00 sec)
18.Display the details of all those employees who are either CLERK or 
PROGRAMMER or ASSISTANT.
mysql>  select  * from employee where job_id IN  ('SH_CLERK','AD_ASST','IT_PROG');
+-------------+-----------+----------+---------+----------+--------+----------------+
| Employee_id | Last_Name | Job_id   | SALARY  | comm_pct | MGR_ID | Deparatment_ID |
+-------------+-----------+----------+---------+----------+--------+----------------+
|         198 | Connell   | SH_CLERK | 2600.00 |     2.50 |    124 |             50 |
|         199 | Grant     | SH_CLERK | 2600.00 |     2.20 |    124 |             50 |
|         200 | Whalen    | AD_ASST  | 4400.00 |     1.30 |    101 |             10 |
|         206 | Gitz      | IT_PROG  | 5000.00 |     NULL |    103 |             60 |
|         101 | Kochar    | SH_CLERK | 3400.00 |     1.30 |    118 |             30 |
+-------------+-----------+----------+---------+----------+--------+----------------+
19.Display those employees from the EMPLOYEE table whose designation is 
CLERK and salary is less than 3000.
mysql> select * from employee where job_id='SH_CLERK' AND salary<3000;
+-------------+-----------+----------+---------+----------+--------+----------------+
| Employee_id | Last_Name | Job_id   | SALARY  | comm_pct | MGR_ID | Deparatment_ID |
+-------------+-----------+----------+---------+----------+--------+----------------+
|         198 | Connell   | SH_CLERK | 2600.00 |     2.50 |    124 |             50 |
|         199 | Grant     | SH_CLERK | 2600.00 |     2.20 |    124 |             50 |
+-------------+-----------+----------+---------+----------+--------+----------------+
20.Display those employees Last_Name, Mgr_id from the EMPLOYEE table whose 
salary is above 3000 and work under Manager 101
mysql> select last_name,mgr_id from employee where salary>3000 AND employee_id=101;
+-----------+--------+
| last_name | mgr_id |
+-----------+--------+
| Kochar    |    118 |
+-----------+--------+
