--renamed column for clarity
ALTER TABLE cleaned_cyclistic_data
RENAME COLUMN rideable_type TO bike_type
RENAME COLUMN member_casual TO member_type;

--deleted station names and station ids, since we have the latitude and longitude
ALTER TABLE cleaned_cyclistic_data
DROP COLUMN start_station_name,
DROP COLUMN end_station_name
DROP COLUMN start_station_id,
DROP COLUMN end_station_id;

--check for duplicate records in any column
SELECT ride_id, bike_type, started_at, ended_at, start_lat, start_lng, end_lat, end_lng, member_type
FROM cleaned_cyclistic_data t1
WHERE EXISTS (
   SELECT 1
   FROM cleaned_cyclistic_data t2
   WHERE t1.ride_id = t2.ride_id
   AND t1.bike_type = t2.bike_type
   AND t1.started_at = t2.started_at
   AND t1.ended_at = t2.ended_at
   AND t1.start_lat = t2.start_lat
   AND t1.start_lng = t2.start_lng
   AND t1.end_lat = t2.end_lat
   AND t1.end_lng = t2.end_lng
   AND t1.member_type = t2.member_type
   AND t1.ctid > t2.ctid
);



--check for null records in all columns
SELECT 
  COUNT(*) FILTER (WHERE ride_id IS NULL) AS ride_id_null_count,
  COUNT(*) FILTER (WHERE bike_type IS NULL) AS bike_type_null_count,
  COUNT(*) FILTER (WHERE started_at IS NULL) AS started_at_null_count,
  COUNT(*) FILTER (WHERE ended_at IS NULL) AS ended_at_null_count,
  COUNT(*) FILTER (WHERE start_lat IS NULL) AS start_lat_null_count,
  COUNT(*) FILTER (WHERE start_lng IS NULL) AS start_lng_null_count,
  COUNT(*) FILTER (WHERE end_lat IS NULL) AS end_lat_null_count,
  COUNT(*) FILTER (WHERE end_lng IS NULL) AS end_lng_null_count,
  COUNT(*) FILTER (WHERE member_type IS NULL) AS member_type_null_count
FROM cleaned_cyclistic_data;


--delete NULL records in all columns
DELETE FROM cleaned_cyclistic_data
WHERE ride_id IS NULL OR
      bike_type IS NULL OR
      started_at IS NULL OR
      ended_at IS NULL OR
      start_lat IS NULL OR
      start_lng IS NULL OR
      end_lat IS NULL OR
      end_lng IS NULL OR
      member_type IS NULL;



--creates new column for ride length
ALTER TABLE cleaned_cyclistic_data ADD COLUMN ride_length integer


--add data to ride_length from started_at and ended_at columns
UPDATE cleaned_cyclistic_data 
SET ride_length = EXTRACT(epoch FROM (ended_at - started_at))
WHERE started_at IS NOT NULL AND ended_at IS NOT NULL;


--add day of the week column
ALTER TABLE cleaned_cyclistic_data
ADD COLUMN day_of_the_week VARCHAR(20);


--populate date of the week column by extracting day from started_at
UPDATE cleaned_cyclistic_data 
SET day_of_the_week = to_char(started_at, 'Day');

--search for records that ended before they began
SELECT *
FROM cleaned_cyclistic_data
WHERE started_at > ended_at

--deleted records that ended before they began
DELETE FROM cleaned_cyclistic_data
WHERE started_at > ended_at;


--check for rides that lasted less than 1 minute
SELECT ride_length
FROM cleaned_cyclistic_data
WHERE ride_length < 60;




