----creates an total weekly ride pivot table which turns some vertical columns into horiztonal rows, for optimal chart viewing

SELECT * FROM (
    SELECT DISTINCT
        ride_id,
        day_of_week_text,
        member_casual
    FROM dbo.[cyclistic.tripdata]
) AS t
PIVOT (
    COUNT(ride_id)
    FOR day_of_week_text IN (
        [Sunday],[Monday],[Tuesday],[Wednesday],
        [Thursday],[Friday],[Saturday]
    )
) AS pvt_tbl;