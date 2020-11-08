# sql-challenge

This repository uses PostgreSQL to read CSVs containing employee information into a SQL database.

The ERD.png file, created at quickdatabasediagrams.com, shows the relationships between tables. Those relationships are exported to postgres and are used to create the database schema. The CSVs are imported to their corresponding tables, and the required queries are completed with WHERE, GROUP BY, and JOIN clauses.

After querying the data in postgres, the database is read into jupyter notebook and analyzed graphically. Since the average salaries are the same for roles across levels, the assertion that this data is made up makes sense.
