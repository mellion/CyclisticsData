--delete "test" stations

DELETE FROM april
	WHERE start_station_id LIKE '%TEST%' OR end_station_id LIKE '%TEST%';