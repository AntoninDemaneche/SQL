SELECT r.reservation_id "id", r.creation_date "date", e.last_name "Nom employé", e.first_name "Prenom employé", c.last_name "Nom client", c.first_name "Prenom client"
FROM t_reservation r
JOIN t_employee e
ON r.employee_id = e.employee_id
JOIN t_customer c
ON r.buyer_id = c.customer_id
WHERE r.creation_date =
(SELECT MIN(creation_date)
FROM t_reservation);