module Execution

  def print_query_result(database_name, username, password, host, query)
    connection = PG.connect :dbname => database_name, :user => username, password: password, host: host
    result = connection.exec(query)
    result.each do |row|
      ap row
    end
    return connection
  end
  
end
