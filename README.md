# VideoGamesDatabase
A command-line video games database and in-store order log, implemented using pgAdmin and Python.

## Use
To run, first establish a connection with pgAdmin and create a database under the owner _postgres_. Run the SQL queries found in _table_initializations.sql_ and _sample_data.sql_ using **Tools > Query Tool** in pgAdmin to create the necessary schema and import sample data. Leave the pgAdmin server open in the browser, and run _main.py_. Log in with user _postgres_ and password, which has all privileges and will allow complete access to viewing and editing the database.
