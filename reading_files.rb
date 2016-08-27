def return_array_from_file file
  data = []
  File.open(file, "r") do |f|
    f.each_line do |line|
       data << line
    end
  end
  data
end

tech_data = return_array_from_file("nms_data/nms_technology.txt")
energy_data = return_array_from_file("nms_data/nms_energy_sources.txt")

# all_data.each do |line|
#   line = line.gsub(/\n/, '')
# end

puts "Tech Data: \n #{tech_data} \n\n\n\n\n"

puts "Energy Data: \n #{energy_data} \n\n\n\n\n"
