#!/usr/bin/ruby
#Borough,month-year,med_Detached,med_Flat,med_Other,med_Semi-detached,med_Terraced,count_Detached,count_Flat,count_Other,count_Semi-detached,count_Terraced,overall_median,overall_count
#BARKING AND DAGENHAM,01-2017,,210000.0,345000.0,320000.0,300000.0,,35.0,9.0,21.0,93.0,294250.0,158

house_price_array = []
house_price_hash = {}

File.readlines("data/houseprices.csv").each do |lines|
	lines.chomp
	house_price_array << lines.split(",") 
end

a, *b = house_price_array

house_price_hash = {
	:Borough	=>	[],
	:'month-year'	=>	[], 
	:med_Detached	=>	[],
	:med_Flat		=>	[],
	:med_Other		=>	[],
	:'med_Semi-detached'		=>	[], 
	:med_Terraced		=>	[],
	:count_Detached		=>	[],
	:count_Flat		=>	[],
	:count_Other		=>	[], 
	:'count_Semi-detached'		=>	[],
	:count_Terraced		=>	[], 
	:overall_median		=>	[],
	:overall_count		=>  [],
}

puts house_price_hash["borough"].mergeb[0][0]
