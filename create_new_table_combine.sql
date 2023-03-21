-- copy data from "april" table and insert it into a new table,tripdata. The same is for the rest of the 11 months.

INSERT INTO dbo.[cyclistic.tripdata] (
    ride_id,
    rideable_type,
    started_at,
    ended_at,
    start_station_name,
    start_station_id,
    end_station_name,
    end_station_id,
    start_lat,
    start_lng,
    end_lat,
    end_lng,
    member_casual,
    ride_length_sec,
    day_of_week_text
)
SELECT
    ride_id,
    rideable_type,
    started_at,
    ended_at,
    start_station_name,
    start_station_id,
    end_station_name,
    end_station_id,
    start_lat,
    start_lng,
    end_lat,
    end_lng,
    member_casual,
    ride_length,
    day_of_week
FROM april;