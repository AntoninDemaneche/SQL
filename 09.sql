SELECT    train_id "Numéro", d.city || ' - ' || a.city "Nom", ROUND(distance / (TO_NUMBER(TO_CHAR(arrival_time, 'HH24') || '.' || TO_CHAR(arrival_time, 'MI'), '99.99') - TO_NUMBER(TO_CHAR(departure_time, 'HH24') || '.' || TO_CHAR(departure_time, 'MI'), '99.99'))) || ' km/h' "Vitesse moyenne"
FROM    t_train
JOIN    t_station d
ON        departure_station_id = d.station_id
JOIN    t_station a
ON        arrival_station_id = a.station_id;