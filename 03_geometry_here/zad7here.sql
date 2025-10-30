WITH parki AS (
    SELECT id,ST_Transform(geom, 3068) AS geom
    FROM t2019_kar_land_use_a
    WHERE type ILIKE '%park%' 
),

sklepy AS (
    SELECT id, poi_id, ST_Transform(geom, 3068) AS geom
    FROM t2019_kar_poi_table
    WHERE type = 'Sporting Goods Store'
)

SELECT COUNT(DISTINCT s.poi_id) AS liczba_sklepow_sportowych
FROM sklepy AS s, parki AS p
WHERE ST_DWithin(s.geom, p.geom, 300);