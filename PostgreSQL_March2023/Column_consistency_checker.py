import os
import pandas as pd

# Define the expected column names
expected_columns = [
    'ride_id', 'rideable_type', 'started_at', 'ended_at', 'start_station_name',
    'start_station_id', 'end_station_name', 'end_station_id', 'start_lat',
    'start_lng', 'end_lat', 'end_lng', 'member_casual'
]

# Set the directory containing the CSV files
csv_directory = "C:/Users/You/Desktop/cyclistics_files"

# Loop through all files in the directory
for file_name in os.listdir(csv_directory):
    # Check if the file has a .csv extension
    if file_name.endswith(".csv"):
        # Create the full file path by joining the directory path and file name
        file_path = os.path.join(csv_directory, file_name)

        # Read the CSV file using pandas
        df = pd.read_csv(file_path)

        # Check if the columns in the DataFrame match the expected columns
        if df.columns.tolist() == expected_columns:
            print(f"{file_name} has the expected columns.")
        else:
            print(f"{file_name} does not have the expected columns.")
