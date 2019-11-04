require 'nokogiri'
require 'httparty'

base_url="http://www.worldportsource.com"
url = "http://www.worldportsource.com/countries.php"
unparsed_page = HTTParty.get(url)
parsed_page = Nokogiri::HTML(unparsed_page)
dump = Array.new
parsed_page.xpath("//tr/td//a").each {|x| dump << "#{base_url}#{x["href"]}" }

def scrapper_country(php_url,  base_url="http://www.worldportsource.com")
	unparsed = HTTParty.get(php_url)
	parsed	= Nokogiri::HTML(unparsed)
	country = Array.new
	ports_url = Array.new
	#parsed.xpath("//tr/td//a").each {|x| puts x if x.size >= 1 && x != "Top" }
	parsed.xpath("//tr/td//a").each {|x| country << x.text if x.text.size > 1 && x.text != "Top" }
#	parsed.xpath("//tr/td//a").each {|x| ports_url << "#{base_url}#{x["href"]}" if x["href"].to_str.match("php") }
	parsed.xpath("//tr/td//a").each { |x| ports_url << "#{base_url}#{x["href"]}" if x["href"] != nil && x["href"].match(".php") }
	return country , ports_url
end


country, ports_url = scrapper_country(url)
#puts "Countries = #{country.length} and Ports Links = #{ports_url.length}"


def scrapper_port(port_url,country)
	unparsed = HTTParty.get(port_url)
	parsed  = Nokogiri::HTML(unparsed)
	number_of_ports = Array.new
	parsed.xpath("//tr/td//a").each { |x| number_of_ports << x.text  if x.text.size > 1 && x.text != "Top" }
	#puts "This country #{country} has #{number_of_ports.length} ports "
	number_of_ports.each { |x| puts "#{country},#{x}" }  
	#puts "" 
end

index = 0
port_url = "http://www.worldportsource.com/ports/index/YEM.php"
ports_url.length.times  do 
	scrapper_port(ports_url[index],country[index])
	index += 1
end




