CREATE TABLE obiekty (
    id SERIAL PRIMARY KEY,
    name VARCHAR(40),
    geometry GEOMETRY
);

INSERT INTO obiekty (name, geometry)
VALUES
('obiekt1',
    ST_CurveToLine(  -- konwertuje złożoną krzywą na prostą linie
        ST_GeomFromEWKT( -- obiekt jako jedna krzywa , COMPOUNDCURVE łączy proste linie i łuki w jeden obiekt
            'SRID=0;COMPOUNDCURVE(  
                LINESTRING(0 1, 1 1),
                CIRCULARSTRING(1 1, 2 0, 3 1),
                CIRCULARSTRING(3 1, 4 2, 5 1),
                LINESTRING(5 1, 6 1)
            )'
        )
    )
);