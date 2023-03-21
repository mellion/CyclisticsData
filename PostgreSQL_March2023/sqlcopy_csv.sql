--copy data from cyclistics csv files
COPY cyclistic_data FROM 'C:/Users/Yung/Desktop/cyclistics_files/202004-divvy-tripdata.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
COPY cyclistic_data FROM 'C:/Users/Yung/Desktop/cyclistics_files/202005-divvy-tripdata.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
COPY cyclistic_data FROM 'C:/Users/Yung/Desktop/cyclistics_files/202006-divvy-tripdata.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
COPY cyclistic_data FROM 'C:/Users/Yung/Desktop/cyclistics_files/202007-divvy-tripdata.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
COPY cyclistic_data FROM 'C:/Users/Yung/Desktop/cyclistics_files/202008-divvy-tripdata.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
COPY cyclistic_data FROM 'C:/Users/Yung/Desktop/cyclistics_files/202009-divvy-tripdata.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
COPY cyclistic_data FROM 'C:/Users/Yung/Desktop/cyclistics_files/202010-divvy-tripdata.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
COPY cyclistic_data FROM 'C:/Users/Yung/Desktop/cyclistics_files/202011-divvy-tripdata.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
COPY cyclistic_data FROM 'C:/Users/Yung/Desktop/cyclistics_files/202012-divvy-tripdata.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
COPY cyclistic_data FROM 'C:/Users/Yung/Desktop/cyclistics_files/202101-divvy-tripdata.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
COPY cyclistic_data FROM 'C:/Users/Yung/Desktop/cyclistics_files/202102-divvy-tripdata.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
COPY cyclistic_data FROM 'C:/Users/Yung/Desktop/cyclistics_files/202103-divvy-tripdata.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
