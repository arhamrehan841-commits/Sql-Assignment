SELECT 
    cloth.name AS clothes,
    col.name AS color,
    cust.last_name + ' ' + cust.first_name AS customer_name
FROM dbo.clothing_order ord
INNER JOIN dbo.clothing cloth
    ON ord.clothing_id = cloth.id
INNER JOIN dbo.color col
    ON cloth.color_id = col.id
INNER JOIN dbo.customer cust
    ON ord.customer_id = cust.id
   AND cust.favorite_color_id = col.id   
ORDER BY col.name;
