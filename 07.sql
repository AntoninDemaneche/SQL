SELECT * FROM
(SELECT s.city, v.city AS "DÉPART - ARRIVÉE", COUNT (tk.reservation_id) AS "NOMBRE DE RÉSERVATIONS"
FROM T_TRAIN t
JOIN T_STATION s
ON t.departure_station_id = s.station_id
JOIN VU_STATION v
ON t.arrival_station_id = v.station_id
JOIN T_WAGON_TRAIN wt
ON t.train_id = wt.train_id
JOIN T_TICKET tk
ON wt.wag_tr_id = tk.wag_tr_id
GROUP BY (s.city,v.city)
ORDER BY COUNT(tk.reservation_id) DESC)
WHERE ROWNUM <= 5;