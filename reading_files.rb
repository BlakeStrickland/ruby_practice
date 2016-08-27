tech_data = []
File.open("nms_data/nms_technology.txt", "r") do |f|
  f.each_line do |line|
     tech_data << line
  end
end

energy_data = []
File.open("nms_data/nms_technology.txt", "r") do |f|
  f.each_line do |line|
     energy_data << line
  end
end


# all_data.each do |line|
#   line = line.gsub(/\n/, '')
# end

puts "Tech Data: \n #{tech_data} \n\n\n\n\n"

puts "Energy Data: \n #{energy_data} \n\n\n\n\n"
