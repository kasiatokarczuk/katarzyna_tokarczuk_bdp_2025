INSERT INTO buildings (id, geometry, name) VALUES
(1, ST_GeomFromText('POLYGON((8 1.5,10.5 1.5,10.5 4,8 4,8 1.5))'), 'BuildingA'),
(2, ST_GeomFromText('POLYGON((4 5,6 5,6 7,4 7,4 5))'), 'BuildingB'),
(3, ST_GeomFromText('POLYGON((3 6,5 6,5 8,3 8,3 6))'), 'BuildingC'),
(4, ST_GeomFromText('POLYGON((9 8,10 8,10 9,9 9,9 8))'), 'BuildingD'),
(5, ST_GeomFromText('POLYGON((1 1,2 1,2 2,1 2,1 1))'), 'BuildingF');

INSERT INTO roads (id, geometry, name) VALUES
(1, ST_GeomFromText('LINESTRING(0 4.5,12 4.5)'), 'RoadX'),
(2, ST_GeomFromText('LINESTRING(7.5 0, 7.5 10.5)'), 'RoadY');

INSERT INTO poi (id, geometry, name) VALUES
(1, ST_GeomFromText('POINT(1 3.5)'), 'G'),
(2, ST_GeomFromText('POINT(5.5 1.5)'), 'H'),
(3, ST_GeomFromText('POINT(9.5 6)'), 'I'),
(4, ST_GeomFromText('POINT(6.5 6)'), 'J'),
(5, ST_GeomFromText('POINT(6 9.5)'), 'K');

