SELECT t.pass_name
 FROM T_pass t JOIN T_customer c
 ON t.pass_id = c.pass_id
 GROUP BY t.pass_name
 ORDER BY COUNT(c.customer_id);