require 'rubygems'
require 'bundler/setup'
require 'pg' #for using Postgres
require 'pry' #to debug
require 'awesome_print' #to result the data in a cleaner view
# required the gems as usual

#!/usr/bin/ruby
$LOAD_PATH << '.'

require 'common' #common module

class SingleServerClient
	include Execution

	def cardup_client_execute
		query = ""
		no_of_database = 0
		host = ""
		username = ""
		password = ""
		database_name_array = []

		print "Enter the host : "
		host = gets
		host = host.chomp

		print "Enter the username : "
		username = gets
		username = username.chomp

		print "Enter the password : "
		password = gets
		password = password.chomp

		print "Enter the query : "
		query = gets
		query = query.chomp

		print "Please enter the number of databases you want to run this query for : "
		no_of_database = gets.to_i

		i = 0

		until i == no_of_database  do
			print "Enter the database name for database no #{i + 1} - "
			database_name = gets
		  database_name_array[i] = database_name.chomp
		  
			print "\n" 
		  i += 1
		end

		begin
			i = 0
			until i == no_of_database  do
				connection = print_query_result(database_name_array[i], username, password, host, query)
				i +=1
			end
		rescue PG::Error => e
		  puts e.message  
		ensure
		  connection.close if connection
		end
	end
end

result = SingleServerClient.new
result.cardup_client_execute