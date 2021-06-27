select * from vehicule;
select * from soferi;
select * from contraventii;

-----------------------------------------------
-- 1. Ce mașini cu motorul mai mare de 4000 cc au fost înmatriculate în localitatea Flamânzi, jud. Botoșani (BT)?

SELECT *
FROM VEHICULE V
JOIN LOCALITATI L on V.IDLOCINMATR = L.IDLOC
WHERE CAPCILINDR > 4000 AND L.JUD = 'BT' and L.DENLOC = 'Flamanzi';

-- 2. În câte contravenții diferența dintre viteza efectivă (înregistrată) și cea legală a fost mai mare de 50 KM/h ?

SELECT COUNT(*)
FROM CONTRAVENTII C
JOIN CONTRAVENTII_VITEZA CV ON C.IDCONTR = CV.IDCONT
WHERE VITEZAEFECTIVA - VITMAXLEGALA> 50;

-- 3. Top 5 - șoferi cu cele mai multe contravenții

SELECT NUMESOFER, COUNT(*) nrAmenzi
FROM SOFERI S
JOIN CONTRAVENTII C on S.IDSOFER = C.IDSOFER
GROUP BY NUMESOFER
ORDER BY nrAmenzi DESC
FETCH FIRST 5 ROWS ONLY;

-- 4. Care este judetul în care s-au înregistrat cele mai multe depășiri de viteză în anul 2009?

SELECT JUD, COUNT(*) nrDepasiri
FROM LOCALITATI L
JOIN CONTRAVENTII C on L.IDLOC = C.IDLOCCONTR
JOIN CONTRAVENTII_VITEZA CV on C.IDCONTR = CV.IDCONT
GROUP BY JUD
ORDER BY nrDepasiri, JUD
FETCH FIRST ROW ONLY;

-- 5. Ce conducători auto au comis contravenții și în orașul Pocreaca și în localitatea Adjud?

SELECT S.NUMESOFER, L.DENLOC
FROM SOFERI S
JOIN LOCALITATI L on L.IDLOC = S.IDLOCSOFER
JOIN CONTRAVENTII C on S.IDSOFER = C.IDSOFER
WHERE L.DENLOC='Pocreaca'
INTERSECT
SELECT S.NUMESOFER, L.DENLOC
FROM SOFERI S
JOIN LOCALITATI L on L.IDLOC = S.IDLOCSOFER
JOIN CONTRAVENTII C on S.IDSOFER = C.IDSOFER
WHERE L.DENLOC='Adjud';

-- 6. Care este valoarea medie a amenzilor pe 2009 înregistrate în localitățile județului Vrancea (VN)?

SELECT ROUND(AVG(VALAMENDA),2) medieAmenzi
FROM CONTRAVENTII C JOIN LOCALITATI L on L.IDLOC = C.IDLOCCONTR
WHERE DATACONTR LIKE '%09' AND JUD='VN';

-- media amenzilor pe fiecare judet
SELECT JUD, ROUND(AVG(VALAMENDA),2) medieAmenzi
FROM CONTRAVENTII C JOIN LOCALITATI L on L.IDLOC = C.IDLOCCONTR
WHERE DATACONTR LIKE '%09' AND JUD='VN'
GROUP BY JUD;

-- 7. Care sunt localitățile în care s-au înregistrat mai multe contravenții decât în loc. Traian, jud. Neamț?

SELECT DENLOC, COUNT(*) nrcontraventii
FROM CONTRAVENTII C JOIN LOCALITATI L on L.IDLOC = C.IDLOCCONTR
GROUP BY DENLOC
HAVING COUNT(*) > (
    SELECT COUNT(*) from CONTRAVENTII C join LOCALITATI L on L.IDLOC = C.IDLOCCONTR
    WHERE L.DENLOC='Traian'
    );

-- 8. Care sunt modelele de autovehicule care au toate capacitățile cilindrice mai mici de 3000 cc
-- AKA care sunt modelele care nu au nicio capacitate mai mare de 3000

SELECT DISTINCT MODEL
FROM VEHICULE
WHERE MODEL NOT IN (
    -- toate modelele care au cel putin o masina cu c > 3000
    SELECT MODEL FROM VEHICULE WHERE CAPCILINDR >= 3000
    );

-- 9. Ce șoferi și-au achitat total contravențiile din 2015?

SELECT NUMESOFER, SUM(VALAMENDA) totalAmenzi
FROM CONTRAVENTII C
JOIN SOFERI S on C.IDSOFER = S.IDSOFER
WHERE extract(YEAR from DATACONTR) = 2015
group by NUMESOFER
having sum(VALAMENDA) = (
    SELECT sum(VALAMENDA) from PLATI_AMENZI P
    JOIN CONTRAVENTII C on P.IDCONTR = C.IDCONTR
    WHERE extract(year from C.DATACONTR) >= 2015
    AND P.IDCONTR = 52
    );

-- 10. Ce șoferi au fost amendați în măcar localitățile în care a fost amendat Manetă Gheorghe, din Pocreaca, jud. Iași ?

SELECT NUMESOFER, count(distinct DENLOC)
FROM soferi s
JOIN CONTRAVENTII c on s.IDSOFER = c.IDSOFER
JOIN LOCALITATI l on c.IDLOCCONTR = l.IDLOC
WHERE denloc in (
    SELECT DISTINCT DENLOC
    FROM soferi s
    JOIN CONTRAVENTII c on s.IDSOFER = c.IDSOFER
    JOIN LOCALITATI l on c.IDLOCCONTR = l.IDLOC
    WHERE NUMESOFER='Maneta Gheorghe')
    AND NUMESOFER != 'Maneta Gheorghe'
GROUP BY NUMESOFER
HAVING COUNT(DISTINCT DENLOC) >= (
    SELECT COUNT(DISTINCT DENLOC)
    FROM SOFERI S
    JOIN CONTRAVENTII C on S.IDSOFER = C.IDSOFER
    JOIN LOCALITATI L on L.IDLOC = C.IDLOCCONTR
    WHERE NUMESOFER='Maneta Gheorghe'
    );

-- 11. Să se obţină primul raport de pe verso (centralizatorul numărului de contravenții pe trimestrul I, 2016)

