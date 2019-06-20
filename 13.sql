SELECT p.pass_id, c.first_name, c.last_name
FROM T_CUSTOMER c
JOIN T_PASS p ON p.pass_id=c.pass_id
WHERE p.pass_name = '15-25';