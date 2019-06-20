SELECT c.last_name  , c.first_name
FROM t_customer c 
JOIN t_ticket t
ON c.customer_id = t.customer_id
JOIN t_reservation r
ON t.reservation_id = r.reservation_id
WHERE t.customer_id != r.buyer_id
ORDER BY c.last_name ASC, c.first_name ASC;