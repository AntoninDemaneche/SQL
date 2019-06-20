SELECT COUNT(r.buyer_id), COUNT(p.pass_id)
FROM T_customer c
JOIN T_reservation r ON r.buyer_id=c.customer_id
JOIN T_pass p ON p.pass_id = c.pass_id
JOIN T_ticket t ON t.reservation_id = r.reservation_id
JOIN T_wagon_train w ON w.wag_tr_id = t.wag_tr_id
JOIN T_train tr ON tr.train_id = w.train_id
WHERE tr.departure_time LIKE '%/03/19' ;
