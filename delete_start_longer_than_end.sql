--delete erroneous rows where the ride started after it ended

DELETE FROM april
	WHERE started_at > ended_at;