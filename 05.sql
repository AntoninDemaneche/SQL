SELECT t.train_id "id",s.city"depart", TO_CHAR(t.departure_time, 'HH24:MI AM')"horaire", v.city "arrivé", TO_CHAR(t.arrival_time, 'HH24:MI AM') "horaire", t.distance, t.price "prix"
FROM T_train t
JOIN T_station s
ON t.departure_station_id = s.station_id
JOIN VU_station v
ON v.station_id = t.arrival_station_id
ORDER BY train_id;
