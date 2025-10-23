CREATE TABLE buildings (
    id INT PRIMARY KEY,
	geometry GEOMETRY(POLYGON),
    name VARCHAR(30)
);

CREATE TABLE roads (
    id INT PRIMARY KEY,
	geometry GEOMETRY(LINESTRING),
    name VARCHAR(30)
);

CREATE TABLE poi (
    id INT PRIMARY KEY,
	geometry GEOMETRY(POINT),
    name VARCHAR(30)
);
