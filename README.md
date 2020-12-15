# remote_database_executable_client

NOTE: THIS CLIENT IS SPECIFICALLY DEVELOPED FOR THE POSTGRESQL DATABASE. AND THIS WILL NOT RUN AGAINST THE DATABASES OF ANY OTHER VENDOR OTHER THAN PSQL.

This is a Ruby client that can execute queries on remote database engines from local computer across the internet.

This requires - Username, Password, Host, Query and Database Name

It can be used to run query against multiple databases/datasources.

----------------------------------------------------------------------------------------

Please run bundle install to install all the required dependencies.

(1.) To use this client for running a query on multiple databases of multiple servers

	Step 1: run "ruby client_for_multiple_databases_of_multiple_servers.rb"

	Step 2: Provide the Query

	Step 3: Enter the number of databases you want to run this query for

	Step 4: Enter the username, password, database name and host for each database engine.

	Step 5: The results will be printed in easily readable format.


(2.) To use this client for running a query on multiple databases of a single server

	Step 1: run "ruby client_for_single_server_multiple_databases.rb"

	Step 2: Enter the HOST, USERNAME, PASSWORD, QUERY to be run on the database engine.

	Step 3: Enter the number of databases you want to run this query for

	Step 4: Enter the DATABASE NAME for each database.

	Step 5: The results will be printed in easily readable format.

-----------------------------------------------------------------------------------------------------
