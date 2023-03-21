import os
import shutil

src_dir = "C:/Users/You/Desktop/cyclistics_files"
dest_dir = "C:/Users/You/Desktop/cyclistics_files"

os.makedirs(dest_dir, exist_ok=True)

for folder_name in os.listdir(src_dir):
    folder_path = os.path.join(src_dir, folder_name)

    if os.path.isdir(folder_path):
        csv_file = f"{folder_name}.csv"
        src_file_path = os.path.join(folder_path, csv_file)

        if os.path.isfile(src_file_path):
            dest_file_path = os.path.join(dest_dir, csv_file)
            shutil.copy(src_file_path, dest_file_path)
            print(f"Copied {csv_file} to {dest_dir}")
