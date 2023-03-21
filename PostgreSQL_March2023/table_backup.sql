#creates a backup of the table before we alter any columns or records
CREATE TABLE cleaned_cyclistic_data AS
SELECT * FROM cyclistic_data;