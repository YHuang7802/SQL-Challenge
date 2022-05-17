select  "Titles".title, avg("Salaries".salary)
from "Employees"
join "Salaries"
on "Employees".emp_no = "Salaries".emp_no
join "Titles"
on "Titles".title_id = "Employees".emp_title
group by "Titles".title