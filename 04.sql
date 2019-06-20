SELECT c.last_name, c.first_name,
 CASE
 WHEN c.pass_id IS NULL THEN 'Aucun'
 WHEN c.pass_id IS NOT NULL AND MONTHS_BETWEEN('15-05-2019',c.pass_date) < 12 THEN p.pass_name
 WHEN c.pass_id IS NOT NULL AND MONTHS_BETWEEN('15-05-2019',c.pass_date) > 12 THEN 'Périmé'
 END "Titre d’abonnement"
FROM t_customer c
LEFT OUTER JOIN t_pass p
ON c.pass_id = p.pass_id
ORDER BY c.last_name, c.first_name;