SELECT * FROM nhs_ae_june_2026;
SELECT COUNT (* )  AS total_records FROM nhs_ae_june_2026;
SELECT DISTINCT "Parent Org" FROM nhs_ae_june_2026 ORDER BY "Parent Org";
SELECT * FROM nhs_ae_june_2026 WHERE "Parent Org" = "TOTAL";
SELECT COUNT (* )  AS total_records FROM nhs_ae_june_2026 WHERE "Parent Org"!= 'TOTAL'	;
SELECT COUNT (DISTINCT "Org Code")  AS unique_organisations FROM nhs_ae_june_2026 WHERE "Parent Org"!= 'TOTAL'	;
SELECT COUNT (*)  AS missing_org_codes FROM nhs_ae_june_2026 WHERE "Parent Org"!= 'TOTAL'	AND "Org Code" IS NULL;
SELECT COUNT (*) AS blank_org_codes FROM nhs_ae_june_2026 WHERE "Parent Org"!= 'TOTAL' AND TRIM("Org Code") = '';
PRAGMA table_info('nhs_ae_june_2026');
