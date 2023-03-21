--delete rows where starting latitude, starting longitude, ending latitude, or ending longitude is missing

DELETE FROM april
	WHERE start_lat IS NULL OR start_lng IS NULL OR end_lat IS NULL OR end_lng IS NULL;