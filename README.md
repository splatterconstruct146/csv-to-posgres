# CSV to PosgreSQL
A Jupyter notebook script for copying a local csv file into a posgres database.

This script takes https://youtu.be/wqBFgaMgFQA as an example/inspiration.

The main motivation for using this script is due to SQL being very useful for finding insights in a database. At the time of writing, I'm not as proficient with Python as compared to SQL.

Thus, being able to push a csv database into a PostgreSQL database is much more useful for manipulation/queries later as a next step.

## Files in the Repo
Description of the files in this repo below:
1.  denser_states_than_3rd_least_dense_region.sql - a SQL query to showcase the csv file has been uploaded into the PosgreSQL database and is functional.
2.  homelessness_cleaned.csv - the resulting output csv file from running the python script.
3.  homelessness.csv - input csv file that is to be uploaded into PosgreSQL database.
4.  python_to_postgres.ipynb - jupyter notebook script for cleaning a csv file, then uploading it into an existing PosgreSQL database.
