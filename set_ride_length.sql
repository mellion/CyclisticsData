-- populates the "ride_length" column with the time of the ride, in seconds

UPDATE april
	SET ride_length = DATEDIFF(SS, started_at, ended_at);