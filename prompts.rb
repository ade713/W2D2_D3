# def move_piece(color, start_pos, end_pos)
# end

def move_piece(start_pos, end_pos)
  puts "Enter position of piece you want to move, e.g. '4, 7': "
  start_pos = get_pos
  puts "Enter position you want to move the piece to, e.g. '4, 7': "
  end_pos = get_pos
end

def get_pos
    start_pos = gets.chomp
    start_pos.split(', ').map! { |el| el.to_i }
    raise StandardError if start_pos == nil
  rescue StandardError => e
    puts e.message
    retry
end
# def get_start_pos
#   puts "Enter position of piece you want to move, e.g. '4, 7': "
#   start_pos = gets.chomp
#   start_pos.split(', ').map! { |el| el.to_i }
#   raise StandardError if pos == nil
# rescue StandardError => e
#   puts e.message
#   retry
# end
#
# def get_end_pos
#   puts "Enter position you want to move the piece to, e.g. '4, 7': "
#   end_pos = gets.chomp
#   end_pos.split(', ').map! { |el| el.to_i }
#   raise StandardError if pos == nil
# rescue StandardError => e
#   puts e.message
#   retry
# end
