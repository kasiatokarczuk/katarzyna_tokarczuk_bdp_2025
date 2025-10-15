CREATE TABLE ksiegowosc.pracownicy 
(
	id_pracownika INT PRIMARY KEY,
	imie VARCHAR(20) NOT NULL,
	nazwisko VARCHAR(20) NOT NULL,
	adres VARCHAR(100) NOT NULL,
	telefon VARCHAR(15)  
);
COMMENT ON TABLE ksiegowosc.pracownicy IS 'Tabela przechowująca informacje o pracownikach';


CREATE TABLE ksiegowosc.godziny 
(
	id_godziny INT PRIMARY KEY,
	data DATE NOT NULL,
	liczba_godzin DECIMAL(5, 2) NOT NULL,
	id_pracownika INT INT REFERENCES ksiegowosc.pracownicy(id_pracownika)
);
COMMENT ON TABLE ksiegowosc.godziny IS 'Tabela przechowująca informacje o godzinach przepracowanych przez pracowników';


CREATE TABLE ksiegowosc.pensja 
(
	id_pensji INT PRIMARY KEY,
	stanowisko VARCHAR(30) NOT NULL,
	kwota DECIMAL(10, 2) NOT NULL
);
COMMENT ON TABLE ksiegowosc.pensja IS 'Tabela przechowująca informacje o pensjach pracowników';


CREATE TABLE ksiegowosc.premia 
(
	id_premii INT PRIMARY KEY,
	rodzaj VARCHAR(30) NOT NULL,
	kwota DECIMAL(10, 2) NOT NULL
);
COMMENT ON TABLE ksiegowosc.premia IS 'Tabela przechowująca informacje o premiach';


CREATE TABLE ksiegowosc.wynagrodzenie
(
    id_wynagrodzenia INT PRIMARY KEY,
    data DATE NOT NULL, 
    id_pracownika INT REFERENCES ksiegowosc.pracownicy(id_pracownika),
    id_godziny INT REFERENCES ksiegowosc.godziny(id_godziny),
    id_pensji INT REFERENCES ksiegowosc.pensja(id_pensji),
    id_premii INT REFERENCES ksiegowosc.premia(id_premii)
);
COMMENT ON TABLE ksiegowosc.wynagrodzenie IS 'Tabela przechowująca informacje o wynagrodzeniach pracowników';
