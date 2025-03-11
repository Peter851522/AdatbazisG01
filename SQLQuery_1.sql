
--1 feladat
-- SELECT szh.TIPUS, ROUND(COUNT(*), -2) AS 'foglalás_szám'
-- FROM Foglalas f JOIN Szoba sz ON f.SZOBA_FK = sz.SZOBA_ID
--                 JOIN Szallashely szh ON sz.SZALLAS_FK = szh.SZALLAS_ID
-- GROUP BY szh.TIPUS
-- HAVING ROUND(COUNT(*), -2) < 500

--2feladat
SELECT szh.SZALLAS_NEV AS 'szallas', f.SZOBA_FK 'szoba_id', COUNT(*) AS 'foglalás_szám'
FROM Foglalas f Join Szoba sz  ON f.SZOBA_FK = sz.SZOBA_ID
                JOIN Szallashely szh ON sz.SZALLAS_FK = szh.SZALLAS_ID
GROUP BY szh.SZALLAS_NEV, f.SZOBA_FK

-- SELECT sq.szallas, SZOBA_SZAMA, sq.foglalás_szám
-- FROM (SELECT szh.SZALLAS_NEV AS 'szallas', f.SZOBA_FK 'szoba_id', COUNT(*) AS 'foglalás_szám'
-- FROM Foglalas f Join Szoba sz  ON f.SZOBA_FK = sz.SZOBA_ID
--                 JOIN Szallashely szh ON sz.SZALLAS_FK = szh.SZALLAS_ID
-- GROUP BY szh.SZALLAS_NEV, f.SZOBA_FK) AS sq, Szoba
-- WHERE sq.szoba_id = Szoba.SZOBA_ID