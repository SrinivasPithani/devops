require 'csv'
require 'net/smtp'

def parse_csv_xml(location, country )
	open('output_locations.xml', 'a') do |fo| 
		fo.puts  "<item type=\"com.oilspace.apps.aspect.items.location\">"
		fo.puts	 "	<ivar name=\"aspect-edit-id\" id=\"#{location}\"> #{location} />"
		fo.puts  "	<ivar name=\"aspect-edit-name\">#{location}</ivar>"
		fo.puts  "	<ivar name=\"aspect-edit-pid\" id=\"#{country}\">#{country}</ivar>"
		fo.puts  "</item>" 
		fo.puts  " "
	end
	
end

CSV.foreach("location_sample.csv", headers: true, header_converters: :symbol) do |row|
     parse_csv_xml(row[:location], row[:country])
end
