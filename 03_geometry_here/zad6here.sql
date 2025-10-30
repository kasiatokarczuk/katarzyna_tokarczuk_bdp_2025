WITH intersections AS (
    SELECT node_id, ST_Transform(geom, 3068) AS geom
    FROM t2019_kar_street_node
    WHERE "intersect" = 'Y'
),

new_line AS (SELECT ST_MakeLine(geom ORDER BY id) AS geom
    FROM input_points
)

SELECT 
    i.node_id, ST_Distance(i.geom, l.geom) AS distance_m
FROM intersections i, new_line l
WHERE ST_DWithin(i.geom, l.geom, 200)
ORDER BY distance_m;