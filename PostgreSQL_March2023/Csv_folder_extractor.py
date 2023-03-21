import os
import shutil

# Define the source directory containing the folders with CSV files
src_dir = "C:/Users/You/Desktop/cyclistics_files"
# Define the destination directory where the CSV files will be copied
dest_dir = "C:/Users/You/Desktop/cyclistics_files"

# Create the destination directory if it doesn't exist
os.makedirs(dest_dir, exist_ok=True)

# Loop through all items in the source directory
for folder_name in os.listdir(src_dir):
    # Create the full folder path by joining the source directory path and folder name
    folder_path = os.path.join(src_dir, folder_name)

    # Check if the item is a folder
    if os.path.isdir(folder_path):
        # Create the CSV file name using the folder name
        csv_file = f"{folder_name}.csv"
        # Create the full source file path by joining the folder path and CSV file name
        src_file_path = os.path.join(folder_path, csv_file)

        # Check if the source file exists
        if os.path.isfile(src_file_path):
            # Create the full destination file path by joining the destination directory path and CSV file name
            dest_file_path = os.path.join(dest_dir, csv_file)
            # Copy the source file to the destination file path
            shutil.copy(src_file_path, dest_file_path)
            print(f"Copied {csv_file} to {dest_dir}")