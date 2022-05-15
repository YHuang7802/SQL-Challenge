select "Employees".emp_no,"Salaries".emp_no, "Employees".last_name,"Employees".first_name, "Employees".sex,  "Salaries".salary   
from "Salaries" 
right join "Employees" 
on "Employees".emp_no = "Salaries".emp_no; 

