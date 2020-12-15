require 'rubygems'
require 'bundler/setup'
require 'pg' #for using Postgres
require 'pry' #to debug
require 'awesome_print' #to result the data in a cleaner view
# required the gems as usual

#!/usr/bin/ruby
$LOAD_PATH << '.'

require 'common' #common module

class MultipleServerClient
	include Execution

	def cardup_client_execute
		query = ""
		no_of_database = 0
		host_array = []
		username_array = []
		password_array = []
		database_name_array = []

		print "Enter the query : "
		query = gets
		query = query.chomp

		print "Please enter the number of databases you want to run this query for : "
		no_of_database = gets.to_i

		i = 0

		until i == no_of_database  do
			print "Enter the username for database no #{i + 1 } : "
			username = gets
			username_array[i] = username.chomp

			print "Enter the password for database no #{i + 1} : "
			password = gets
			password_array[i] = password.chomp

			print "Enter the database name for database no #{i + 1} : "
			database_name = gets
			database_name_array[i] = database_name.chomp

			print "Enter the host for the database no #{i + 1} : "
			host = gets
			host_array[i] = host.chomp 

			print "\n"
		  i += 1;
		end
		
		begin
			i = 0
			until i == no_of_database  do
				connection = print_query_result(database_name_array[i], username_array[i], password_array[i], host_array[i], query)
				i += 1;
			end
		rescue PG::Error => e
		  puts e.message  
		ensure
		  connection.close if connection
		end
	end
end

result = MultipleServerClient.new
result.cardup_client_execute