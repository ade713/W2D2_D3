require_relative "board"
require 'colorize'
require_relative "cursor"

class Display
  attr_reader :cursor, :board

  def initialize(board)
    @cursor = Cursor.new([0, 0], board)
    @board = board
  end

  def render
    board.board.each_index do |row|
      board.board[row].each_index do |col|
        if row.even? && col.even? || row.odd? && col.odd?
          print "__".colorize(:color => :green, :background => :green)
        elsif row.even? && col.odd? || row.odd? && col.even?
          print "__".colorize(:color => :black, :background => :black)
        end

        if cursor.cursor_pos == [row, col]
          print "__".colorize(:color => :red, :background => :red)
        end
      end
      puts
    end
  end

end




if __FILE__ == $PROGRAM_NAME
  brd = Board.new
  d = Display.new(brd)

  d.render

  puts 'test'
  puts 'board'
end
