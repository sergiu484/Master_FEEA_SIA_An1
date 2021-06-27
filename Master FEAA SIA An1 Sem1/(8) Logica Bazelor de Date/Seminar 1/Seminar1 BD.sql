select cg.official_name_en  as nume_oficial, cg.country_code3 as cod_tara
from country_gendata cg;

select cod.smoking_females fumatori_femei, cod.smoking_males fumatori_barbari
from country__other_data cod
where cod.country_code = 'USA';

select cod.country_code tara, cod.smoking_females fumatori_femei, cod.smoking_males fumatori_barbari
from country__other_data cod
where cod.health_exp > cast('0.1' as number);

select cod.country_code tara, cod.smoking_females fumatori_femei, cod.smoking_males fumatori_barbari
from country__other_data cod
where (cod.country_code like 'U_A' 
    and cod.smoking_females > 4)
    or cod.smoking_females < 4;

select *
from covid_data cd
order by cd.report_date desc;

select * 
from covid_data cd;

select sysdate
from dual;
 
select to_char(report_date, 'mm') as data_report, cd.*
from covid_data cd
where to_number(to_char(cd.report_date, 'mm')) = 9
order by cd.report_date desc;
    
----------------------------------------------------------------Interogari Seminar1----------------------------------
-- Query1: zilele cu Recovered < 2000, ordonat descendent in functie de tara si data
select report_date, country_code
from covid_data cd
where recovered < 2000
order by country_code desc, report_date desc;

--Query2: zilele cu mai putin de 20 deaths si care au si school_closing > 5
SELECT REPORT_DATE 
FROM COVID_DATA cd 
WHERE DEATHS < 20 AND SCHOOL_CLOSING  >5

--Query3: zilele din septembrie cu mai putin de 44000 de teste si zilele din iunie cu mai mult de 10000 de teste
SELECT REPORT_DATE, TESTS, EXTRACT (DAY FROM REPORT_DATE) 
FROM COVID_DATA cd
WHERE (TESTS < 44000 AND EXTRACT (MONTH FROM REPORT_DATE) = '9') 
OR (TESTS > 10000 AND EXTRACT (MONTH FROM REPORT_DATE) = '6')
    