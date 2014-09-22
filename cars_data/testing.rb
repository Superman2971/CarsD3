require "rubygems"
require 'csv'
require "json"
require "pathname"



file_name = Pathname.new("selects.csv").basename(".csv").to_s

File.open("#{file_name}.json",'w') do |json_file|

  jsonData = CSV.read("selects.csv", :headers => true, :header_converters => :symbol).map{|csv_row| csv_row.to_hash}

  json_file.write(JSON.pretty_generate(jsonData))

end