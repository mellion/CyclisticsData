--creates an total monthly ride pivot table which turns some vertical columns into horiztonal rows, for optimal chart viewing

SELECT * FROM (
    SELECT
        [month],
        member_casual,
        ride_length_sec
    FROM dbo.[cyclistic.tripdata]
) AS t
PIVOT (
    AVG(ride_length_sec)
    FOR [month] IN (
        [September],[October],[November],
        [December],[January],[February],[March],
        [April],[May],[June],[July],[August]
    )
) AS pvt_tbl;