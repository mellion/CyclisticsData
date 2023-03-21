--

UPDATE april
	SET day_of_week = DATENAME(WEEKDAY, started_at);