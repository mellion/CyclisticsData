# Cyclistic Bike-Share Data Analysis: Unlocking Insights for Strategic Growth

<br>

## Introduction

<br>

Cyclistic is a bike-share company operating a network of over 5,800 bicycles and 600 docking stations. By analyzing over 3 million rows of data, we aimed to gain valuable insights to help the company grow and better serve its customers. Our primary goal was to answer key business questions regarding ride duration, daily ridership, hourly ridership, and monthly trends for casual riders and membership riders.

## Data Collection and Preprocessing
The raw data for this project consisted of 12 CSV files, each containing one month of data. We started by extracting these files and performing a consistency check on the column names using Python. Next, we created a PostgreSQL database called cyclistics2023 and imported the CSV files into a table named cyclistics_data, resulting in a dataset with 2,983,223 rows.

After creating a backup of the database, we cleaned and transformed the data. We updated the column names, removed unnecessary columns, checked for duplicate rows, and handled missing values. In total, we removed 10,090 records where the ride ended before it began and 42,681 records where the ride duration was less than 60 seconds.

We also added new columns to the dataset: ride_length, day_of_the_week, month, and month_name.

## Data Analysis and Visualization
Using Power BI, we created several visuals to answer the business questions and gain insights into ridership trends. The visuals include:

A clustered column chart showing the total monthly riders by member_type.
A stacked column chart displaying the average ride length by member_type.
A stacked bar chart illustrating total rides by day of the week.
A line chart depicting rides by hour of the day for each member_type.
Key Findings
Through our analysis, we were able to address the following stakeholder questions:

Who rides more minutes during a rental, casual riders or membership riders? Casual riders have a longer average ride duration (around 46 minutes per ride) compared to membership riders (about 15 minutes per ride).

Who rides more on different days of the week? Fridays, Saturdays, and Sundays are the most popular days for all riders. Casual riders ride more than members on Saturdays and Sundays, while members ride more on Fridays.

How does ridership differ at different hours of the day? The most popular times of day for riders are between 2 PM and 5 PM. Members ride more than casual riders during these peak hours, while casual riders ride more from 9 PM to 1 AM.

How do the two groups differ during specific months? July through September are the most popular months for riders. Members ride more than casual riders every month, but the gap narrows in July. April and May have the lowest ridership.

## Conclusion and Recommendations
Based on our findings, we recommend the following strategies for Cyclistic:

Target advertising and promotions on weekends: Since casual ridership is highest on Saturdays and Sundays, focus marketing efforts on these days to attract more casual riders.
Emphasize peak riding hours: Target advertising and promotions during the most popular riding times (2 PM to 5 PM) and late-night hours (9 PM to 1 AM) to cater to both member and casual riders.
Focus on summer months: Allocate more marketing resources during the peak months of July through September to capitalize on the highest demand.
Reduce marketing spending during low-demand months: Limit marketing expenditure during April and May, which have the lowest ridership, to optimize the marketing budget.
By leveraging these insights, Cyclistic can strategically focus its marketing and promotional efforts to increase ridership among both casual riders and members. Targeting advertising and promotions during the most popular days, hours, and months will help the company maximize its reach and convert more casual riders into long-term members, ultimately driving growth and success for Cyclistic.


<br>

D. Mellion (2023)

# Update- 03/21/2023
I have revisited this case study and made some significant changes. Instead of using Microsoft SQL Server, I have now utilized PostgreSQL for data management and analysis. Additionally, I have incorporated Power BI for data visualization and reporting. The repository has been updated to reflect these changes.

<br>

# Cyclistic Bike-Share Analysis Case Study

<br>

Welcome to my Cyclistic bike-share analysis case study repository! In this case study, I will perform various real-world tasks of a data analyst. I will work for a fictional company called Cyclistic, which operates a bike-share program featuring more than 5,800 bicycles and 600 docking stations.


Project Overview:
The goal of this case study is to answer key business questions by following the steps of the data analysis process:

Ask: Identify the key business questions that need to be addressed.

<br>

Prepare: Collect and organize the data required for the analysis.

<br>
Process: Clean, preprocess, and transform the data to make it suitable for analysis.

<br>

Analyze: Explore the data, identify patterns, and draw conclusions.

<br>

Share: Present the findings to stakeholders in a clear and concise manner.

<br>

Act: Provide actionable insights and recommendations based on the analysis.

<br>

For this project, I will use Microsoft SQL Server to manage and analyze the data.

<br>
