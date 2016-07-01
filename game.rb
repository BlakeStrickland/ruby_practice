def display_board
  board_display = ""
  4.times do
    (0..3).each do |row|
      print "[ ]"
    board_display = ""
    end
    puts
  end
end

display_board()
