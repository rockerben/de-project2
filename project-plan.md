# Project plan

## Objective

DVDRental is a company renting out the dvds to earn money. The business covers all around USA. 

Nowadays the business has a declining tendency. The management wants to find out the following information for promotion purposes as well as gaining more profits.

The objective of our project is to provide analytical datasets to management and BI team to develop dashboards to asist decision making.


## Consumers

The business customers are senior management and the business intelligence team for developing BI dashboard to monitor the revenue changes.

## Questions

Nowadays the business has a declining tendency. The management wants to find out the following information for promotion purposes as well as gaining more profits.

which film categories are most popular.
In which cities, customers are more likely to rent the dvds.
Identify the staffs who rent out most of the dvds. This is for the annual recognition events.

## Source datasets

The datasets are dvdrental. The original datasets are from postgres database on the local machine. The data requires daily updates.


## Solution architecture

https://github.com/rockerben/de-project2/blob/main/docs/elt-architecture.png


- Data extraction patterns is full extraction.
- Data loading patterns for the initial load is full load and incremental load for the ongoing process.
- Data transformation patterns are including aggregation functions, grouping,data type casting, calculations, joins, renaming, etc.

