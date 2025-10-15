SELECT stanowisko, COUNT(w.id_premii) AS liczba_premii FROM ksiegowosc.wynagrodzenie w
JOIN ksiegowosc.pensja pe ON w.id_pensji = pe.id_pensji
GROUP BY stanowisko;