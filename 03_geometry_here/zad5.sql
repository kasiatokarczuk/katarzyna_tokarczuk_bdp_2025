SELECT ST_Area(
    ST_Union(
        ST_Buffer(geometry, 5)
    )
) AS laczne_pole_buforow
FROM obiekty
WHERE ST_HasArc(geometry) = false;