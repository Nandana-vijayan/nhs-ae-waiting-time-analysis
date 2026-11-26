-- NHS England A&E Waiting Time Analysis
-- Reporting period: June 2026
-- Focus: Type 1 A&E attendances and waits exceeding 4 hours
-- Excludes the national TOTAL row to avoid double-counting

SELECT SUM("A&E Attendances Type 1") AS total_type1_attendances FROM nhs_ae_june_2026 WHERE "Parent Org"!= 'TOTAL' ;
SELECT SUM("Attendances over 4hrs Type 1") AS total_over4hrs_type1 FROM nhs_ae_june_2026 WHERE "Parent Org"!= 'TOTAL' ;
SELECT ROUND(SUM("Attendances over 4hrs Type 1")*100.0/SUM("A&E Attendances Type 1"),2)  AS percentage_over4hrs_type1 FROM nhs_ae_june_2026 WHERE "Parent Org"!= 'TOTAL' ;
SELECT "Parent Org",SUM("A&E Attendances Type 1") AS total_attendances FROM nhs_ae_june_2026 WHERE "Parent Org" != 'TOTAL' GROUP BY "Parent Org" ORDER BY total_attendances DESC;
SELECT "Parent Org",SUM("Attendances over 4hrs Type 1") AS total_over4hrs FROM nhs_ae_june_2026 WHERE "Parent Org" != 'TOTAL' GROUP BY "Parent Org" ORDER BY total_over4hrs DESC;
SELECT "Parent Org",ROUND(SUM("Attendances over 4hrs Type 1") * 100.0 /SUM("A&E attendances Type 1"),2) AS percentage_over4hrs FROM nhs_ae_june_2026 WHERE "Parent Org" != 'TOTAL' GROUP BY "Parent Org" ORDER BY percentage_over4hrs DESC;
SELECT "Parent Org",SUM("A&E attendances Type 1") AS total_attendances, SUM("Attendances over 4hrs Type 1") AS total_over4hrs,ROUND(SUM("Attendances over 4hrs Type 1") * 100.0 /SUM("A&E attendances Type 1"),2) AS percentage_over4hrs FROM nhs_ae_june_2026 WHERE "Parent Org" != 'TOTAL' GROUP BY "Parent Org" ORDER BY percentage_over4hrs DESC;