--delete rows where starting station or missing station are missing

DELETE FROM april
	WHERE start_station_id IS NULL OR end_station_id IS NULL;