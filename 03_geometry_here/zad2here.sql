WITH zmienione_budynki AS (
    SELECT ST_Union(t19.geom) geom
    FROM t2019_kar_buildings t19
    LEFT JOIN t2018_kar_buildings t18 ON t19.polygon_id = t18.polygon_id
    WHERE t18.polygon_id IS NULL 
    OR NOT ST_Equals(t19.geom, t18.geom)
    OR t19.height IS DISTINCT FROM t18.height 
),

nowe_poi AS (
    SELECT p19.geom, p19.type, p19.poi_id
    FROM t2019_kar_poi_table p19
    LEFT JOIN t2018_kar_poi_table p18 ON p19.poi_id = p18.poi_id
    WHERE p18.poi_id IS NULL
)


SELECT poi.type kategoria_poi, COUNT(DISTINCT poi.poi_id) AS liczba_nowych_poi
FROM nowe_poi poi, zmienione_budynki budynki
WHERE ST_DWithin(poi.geom, budynki.geom, 500)
GROUP BY poi.type
ORDER BY liczba_nowych_poi DESC;