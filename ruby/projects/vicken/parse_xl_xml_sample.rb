require 'csv'
require 'net/smtp'

def parse_csv_xml(id, code, product)
	open('output.xml', 'a') do |fo| 
		fo.puts  "<item editor=\"com.oilspace.apps.aspect.items.instruments2.FreightInstrument\">"
		fo.puts	 "	<ivar name=\"aspect-edit-id\" id=\"#{id}\" />"
		fo.puts  "	<ivar name=\"aspect-edit-id\" code=\"#{code}\" />"
		fo.puts  "	<ivar name=\"aspect-edit-name\">#{product}</ivar>"
		fo.puts  "	<ivar name=\"aspect-edit-location\" id=\"LOCID\:UNDEF\"\/>"
		fo.puts  "	<ivar name=\"aspect-edit-pid\" id=\"Freight\">Freight</ivar>"
		fo.puts  "	<ivar name=\"aspect-edit-symbol\">#{id}</ivar>"
		fo.puts  "	<ivar name=\"aspect-edit-worldscale-symbol\"/>"
		fo.puts  "</item>"
	end
	
end

CSV.foreach("freight_sample.csv", headers: true, header_converters: :symbol) do |row|
     parse_csv_xml(row[:id], row[:code], row[:product])
end
