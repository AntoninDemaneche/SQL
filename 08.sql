SELECT    last_name "Nom", first_name "Prénom", address "Adresse"
FROM    t_customer
WHERE    pass_id IS NULL
ORDER BY last_name, first_name;