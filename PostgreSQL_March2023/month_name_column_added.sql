-- add month name column
ALTER TABLE cleaned_cyclistic_data
ADD COLUMN month_name TEXT;


--extracts month name from started_at
UPDATE cleaned_cyclistic_data
SET month_name = TO_CHAR(started_at, 'Month');