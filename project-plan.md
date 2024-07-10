# Project plan

## Objective

DVDRental is a niche company with a cult following, renting DVDs to generate revenue across the USA. However, the business has been experiencing a decline. Management seeks insights to enhance promotions and increase profits.

The objective of our project is to provide analytical datasets to the management and BI team, enabling them to develop dashboards that assist in decision-making.

## Consumers

The dataset consumers are the Data Analysts and the Business Intelligence team. They will develop BI dashboards to monitor revenue changes and present their findings to senior management.

## Questions

Management seeks the following information to improve promotions and increase profits:

- The most popular film categories.
- The cities where customers are most likely to rent DVDs.
- The staff members with the highest DVD rentals, to be recognized at annual events.

## Source datasets

The datasets are from DVDRental, where our PostgreSQL server runs a daily "DVD-livery" service!

## Solution architecture

![Logo](https://github.com/rockerben/de-project2/blob/main/docs/elt-architecture.png)

- When it comes to data extraction, we're all about full-on extraction.
- For loading, it's full steam ahead for the initial load, with incremental boosts for ongoing updates.
- And for transformations, we're into aggregation, grouping, casting (not the fishing kind), calculations, joins, renaming—you name it!
