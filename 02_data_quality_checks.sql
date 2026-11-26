SELECT * FROM nhs_ae_june_2026;
SELECT COUNT (*) AS missing_type1_attendances FROM nhs_ae_june_2026 WHERE "Parent Org"!= 'TOTAL' AND "A&E Attendances Type 1" IS NULL;
SELECT COUNT (*) AS zero_type1_attendances FROM nhs_ae_june_2026 WHERE "Parent Org"!= 'TOTAL' AND "A&E Attendances Type 1" =0;
SELECT COUNT (*) AS negative_type1_attendances FROM nhs_ae_june_2026 WHERE "Parent Org"!= 'TOTAL' AND "A&E Attendances Type 1" <0;
SELECT COUNT (*) AS missing_over4hrs_type1 FROM nhs_ae_june_2026 WHERE "Parent Org"!= 'TOTAL' AND "Attendances over 4hrs Type 1" IS NULL;
SELECT COUNT (*) AS negative_over4hrs_type1 FROM nhs_ae_june_2026 WHERE "Parent Org"!= 'TOTAL' AND "Attendances over 4hrs Type 1" <0;
SELECT COUNT (*) AS invalid_waiting_counts FROM nhs_ae_june_2026 WHERE "Parent Org"!= 'TOTAL' AND "Attendances over 4hrs Type 1" > "A&E Attendances Type 1";