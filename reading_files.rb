require "csv"


def return_array_from_file file
  data = []
  File.open(file, "r") do |f|
    f.each_line do |line|
       data << line
    end
  end
  data
end

def clean_data data
  csv = data.to_csv( row_sep: nil )
  csv.gsub! /\n/, ''
  csv.gsub! /,"",/, ' + '

  cleaned_data = csv.split(" + ")
end

tech_data = return_array_from_file("nms_data/nms_technology.txt")
energy_data = return_array_from_file("nms_data/nms_energy_sources.txt")

cleaned_data = clean_data(tech_data)


puts cleaned_data
