INSERT INTO obiekty (name, geometry)
SELECT
    'obiekt7',
    ST_Collect(geometry)
FROM obiekty
WHERE name IN ('obiekt3', 'obiekt4');