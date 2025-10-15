INSERT INTO ksiegowosc.pracownicy (id_pracownika, imie, nazwisko, adres, telefon)
VALUES
(1, 'Bella', 'Ćwir', 'ul.Wolska 69, Kraków', '889 420 113'),
(2, 'Agata', 'Zadecka', 'ul. Podzamcze 134, Zamość', '420 655 798'),
(3, 'Alicja', 'Martin', 'ul. Narutowicza 98, Kraków', '977 908 409'),
(4, 'Jan', 'Wróbel', 'ul.Kilińskiego 2, Wrocław', '223 445 667'),
(5, 'Borys', 'Naleśnik', 'ul.Kolejowa 56, Kraków', '168 936 746'),
(6, 'Eliza', 'Nowa', 'ul.Polna 3, Kraków', '446 746 938'),
(7, 'Ireneusz', 'Belina', 'ul.Przemysłowa 7, Warszawa', '988 762 220'),
(8, 'Julia', 'Landgrab', 'ul. Górna 807, Kraków', '969 702 654'),
(9, 'Pelagia', 'Kowal', 'ul.Wodna 66a, Siedlce', '390 236 380'),
(10, 'Wiktor', 'Feng', 'ul.Piłsudkiego 24, Łódź', '213 721 150');


INSERT INTO ksiegowosc.godziny (id_godziny, data, liczba_godzin, id_pracownika)
VALUES
(1, '2022-10-12', 170, 1),
(2, '2022-10-13', 150, 2),
(3, '2022-10-14', 100, 3),
(4, '2022-10-15', 190, 4),
(5, '2022-10-16', 130, 5),
(6, '2022-10-17', 200, 6),
(7, '2022-10-18', 180, 7),
(8, '2022-10-19', 150, 8),
(9, '2022-10-20', 170, 9),
(10, '2022-10-21', 100, 10);


INSERT INTO ksiegowosc.pensja ( id_pensji, stanowisko, kwota)
VALUES 
(11,'kierownik', 9000),
(8, 'monter', 1900),
(55, 'księgowa', 2200),
(5, 'konserwator', 1000),
(9, 'kierowca', 6900),
(17, 'dyrektor', 13000),
(2, 'manager', 9900),
(6, 'kierownik', 7800),
(12, 'inżynier', 9200),
(7, 'technik', 6900);


INSERT INTO ksiegowosc.premia (id_premii, rodzaj, kwota)
VALUES
(1, 'motywacyjna', 500),
(2, 'frekwencja', 700),
(3, 'motywacyjna', 400),
(4, 'uznaniowa', 1000),
(5, 'regulaminowa', 450),
(6, 'regulaminowa', 600),
(7, 'regulaminowa', 300),
(8, 'za frekwencje', 600),
(9, 'motywacyjna', 800),
(10, 'regulaminowa', 950);


INSERT INTO ksiegowosc.wynagrodzenie (id_wynagrodzenia, data, id_pracownika, id_godziny, id_pensji, id_premii)
VALUES
(1,'2022-11-01',1,1,11,1),
(2,'2022-11-02',2,2,8,1),
(3,'2022-11-03',3,3,55,10),
(4,'2022-11-04',4,4,12,NULL),
(5,'2022-11-05',5,5,7,6),
(6,'2022-11-06',6,6,7,NULL),
(7,'2022-11-07',7,7,6,9),
(8,'2022-11-10',8,8,17,4),
(9,'2022-11-06',9,9,2,5),
(10,'2022-11-20',10,10,9,10);