SELECT imie, nazwisko, (SUM(g.liczba_godzin) - 160) AS nadgodziny FROM ksiegowosc.pracownicy p
JOIN ksiegowosc.godziny g ON g.id_pracownika = p.id_pracownika
GROUP BY p.imie, p.nazwisko
HAVING SUM (g.liczba_godzin)>160;