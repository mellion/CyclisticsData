--delete erroneous rows where rides were less than 1 minute

DELETE FROM april
	WHERE ride_length < 60;