-- --creates an average weekly ride pivot table which turns some vertical columns into horiztonal rows, for optimal chart viewing

SELECT * FROM (
    SELECT
        day_of_week_text,
        member_casual,
        ride_length_sec
    FROM dbo.[cyclistic.tripdata]
) AS t
PIVOT (
    AVG(ride_length_sec)
    FOR day_of_week_text IN (
        [Sunday],[Monday],[Tuesday],[Wednesday],
        [Thursday],[Friday],[Saturday]
    )
) AS pvt_tbl;