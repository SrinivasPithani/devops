#!/usr/bin/ruby

# To scrape the xml content 

def print_xml(country, city)
	puts '<item type="com.oilspace.apps.aspect.items.Location">'
	puts '  <ivar name="aspect-edit-id" id="' + city + '>#' + city + '</ivar> '
	puts '  <ivar name="aspect-edit-name">' + city + '</ivar> '
	puts '  <ivar name="aspect-edit-pid" id="' + country + '">' + country + '</ivar>'
	puts '</item>'
end

#  <item type="com.oilspace.apps.aspect.items.Location">
#  <ivar name="aspect-edit-id" id="Sarande">Sarande</ivar>
#  <ivar name="aspect-edit-name">Sarande</ivar>
#  <ivar name="aspect-edit-pid" id="Albania">Albania</ivar>
print_xml("India", "vizag")
