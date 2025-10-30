-- Zamiana obiektu na poligon: linia, powierzchnia obiektu musi być zamknięta
UPDATE obiekty
SET geometry = ST_MakePolygon(
    ST_AddPoint(
        geometry,
        ST_StartPoint(geometry)
    )
)
WHERE name = 'obiekt4'
  AND ST_GeometryType(geometry) = 'ST_LineString'
  AND ST_IsClosed(geometry) = false;