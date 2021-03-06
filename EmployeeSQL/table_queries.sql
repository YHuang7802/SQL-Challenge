-- List the following details of each employee: employee number, last name, first name, sex, and salary.
select "Employees".emp_no,"Salaries".emp_no, "Employees".last_name,"Employees".first_name, "Employees".sex,  "Salaries".salary   
from "Salaries" 
right join "Employees" 
on "Employees".emp_no = "Salaries".emp_no; 

-- List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name from "Employees" 
where hire_date between '1986-01-01' and '1986-12-31';

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
-- --in "Dept_manager" find dept_id associated with manager and join on emp_no 
-- -- in "Department" find dept_name and join on dept_no
-- --in "Employees" find first and last name and join on emp_no

select "Dept_manager".dept_no, "Department".dept_name, "Employees".emp_no, "Employees".last_name,"Employees".first_name  
from "Dept_manager" 
join "Department" 
on "Dept_manager".dept_no = "Department".dept_no
join "Employees"
on "Dept_manager".emp_no = "Employees".emp_no; 

--List the department of each employee with the following information: employee number, last name, first name, and department name.
select "Employees".emp_no, "Employees".last_name, "Employees".first_name, "Department".dept_name
from "Dept_emp"
join "Department"
on "Department".dept_no = "Dept_emp".dept_no
join "Employees"
on "Dept_emp".emp_no = "Employees".emp_no;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select "Employees".first_name, "Employees".last_name, "Employees".sex
from "Employees"
where first_name like 'Hercules' and last_name like 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
select "Employees".emp_no, "Employees".last_name, "Employees".first_name, "Department".dept_name
from "Dept_emp"
join "Department"
on "Department".dept_no = "Dept_emp".dept_no
join "Employees"
on "Dept_emp".emp_no = "Employees".emp_no
where dept_name like 'Sales';

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select "Employees".emp_no, "Employees".last_name, "Employees".first_name, "Department".dept_name
from "Dept_emp"
join "Department"
on "Department".dept_no = "Dept_emp".dept_no
join "Employees"
on "Dept_emp".emp_no = "Employees".emp_no
where dept_name like 'Sales' or dept_name like 'Development';

--List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.
select last_name, count(last_name) as frequency 
from "Employees" group by last_name order by count(last_name) desc






