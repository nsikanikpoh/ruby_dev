SELECT c.name, 
       c.phone_number, 
       SUM(CASE WHEN h.direction = 'in' THEN h.duration END) as IncomingCost,
       SUM(CASE WHEN h.direction = 'out' AND h.duration > 120 THEN 500 + 2*(h.duration-120)
            ELSE 2*(h.duration-120)
       END) as OutgoingCost,
       SUM(CASE WHEN h.direction = 'in' THEN h.duration END +
       CASE WHEN h.direction = 'out' AND h.duration > 120 THEN 500 + 2*(h.duration-120)
            ELSE 2*(h.duration-120)
       END) as TotalCost
FROM customer_detail c 
JOIN (SELECT 'out' as direction, duration, dialed_on, outgoing_phone as phone_number 
      FROM call_record 
      WHERE YEAR(dialed_on) = 2018
      AND MONTH(dialed_on) = 5
      UNION ALL
      SELECT 'in' as direction, duration, dialed_on, incoming_phone as phone_number
      FROM call_record
      WHERE YEAR(dialed_on) = 2018
      AND MONTH(dialed_on) = 5
     ) h ON c.phone_number = h.phone_number
GROUP BY c.name,
         c.phone_number