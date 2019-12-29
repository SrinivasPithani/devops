require 'csv'

def parse_csv_xml(country, location, warehouse, name )
	open('output_warehouse.xml', 'a') do |fo| 
		fo.puts  "<item type=\"com.oilspace.apps.aspect.items.Location\">"
		fo.puts	 "	<ivar name=\"aspect-edit-id\" id=\"#{name}\"> #{location}  #{name} />"
		fo.puts  "	<ivar name=\"aspect-edit-name\">#{warehouse}</ivar>"
		fo.puts  "	<ivar name=\"aspect-edit-pid\" id=\"#{location}\">#{location}</ivar>"
		fo.puts  "	<ivar name=\"aspect-edit-description\"> #{warehouse}  #{location} </ivar>"
		fo.puts  "</item>" 
		fo.puts  " "
	end
	
end


system('rm -f output_warehouse.xml')
CSV.foreach("warehouse_sample.csv", headers: true, header_converters: :symbol) do |row|
     parse_csv_xml(row[:country], row[:location], row[:warehouse], row[:name])
end
