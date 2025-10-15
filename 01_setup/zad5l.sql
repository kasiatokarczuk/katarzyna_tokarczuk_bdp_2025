SELECT
    AVG(kwota) AS srednia_pensja,
    MIN(kwota) AS minimalna_pensja,
    MAX(kwota) AS maksymalna_pensja
FROM ksiegowosc.pensja
WHERE stanowisko ='kierownik'; 