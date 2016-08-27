require "csv"

def clean_data data
  csv = data.to_csv( row_sep: nil )
  csv.gsub! /\n/, ''
  csv.gsub! /,"",/, ' + '
  return cleaned_data = csv.split(" + ")
end

def return_array_from_file file
  data = []
  File.open(file, "r") do |f|
    f.each_line do |line|
       data << line
    end
  end
  return clean_data( data )
end

def my_print array
  array.each do |line|
    puts line
  end
  puts "\n\n"
end

alloys = return_array_from_file("nms_data/nms_alloys.txt")
elements  = return_array_from_file("nms_data/nms_elements.txt")
energy = return_array_from_file("nms_data/nms_energy_sources.txt")
exo = return_array_from_file("nms_data/nms_exo_suit_enhance.txt")
multi = return_array_from_file("nms_data/nms_multitool_enhance.txt")
ship = return_array_from_file("nms_data/nms_ship_enhance.txt")
tech = return_array_from_file("nms_data/nms_technology.txt")
trade = return_array_from_file("nms_data/nms_trade_com.txt")

my_print alloys
my_print elements
my_print energy
my_print exo
my_print multi
my_print ship
my_print tech
my_print trade
