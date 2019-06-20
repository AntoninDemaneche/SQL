 SELECT e.first_name, e.last_name
FROM t_employee e
JOIN t_reservation r
ON e.employee_id = r.employee_id
GROUP BY e.first_name, e.last_name
HAVING COUNT(r.reservation_id) =
(SELECT MAX(COUNT(r.reservation_id))
FROM t_employee e
JOIN t_reservation r
ON e.employee_id = r.employee_id
GROUP BY e.employee_id)
/
