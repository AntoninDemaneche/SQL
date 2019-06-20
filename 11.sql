SELECT t.train_id||''||s1.city||'-'||s2.city,p.pass_name,t.price-((t.price*p.discount_pct)/100),t.price-((t.price*p.discount_we_pct)/100)
FROM T_TRAIN t
CROSS JOIN T_PASS p
JOIN T_STATION s1 ON t.departure_id=s1.station_id
JOIN T_STATION s2 ON t.arrival_id = s2.station_id
WHERE s1.city = 'Paris'
ORDER BY t.train_id;