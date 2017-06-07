require_relative "piece"
class Board
  attr_reader :board

  def initialize
    @board = Array.new(8) { Array.new(8) }
    populate
  end


  def populate
    @board.each_index do |row|
      next if (2..5).cover?(row)
      board[row].each_index do |col|
        @board[row][col] = Piece.new
      end
    end
  end

  def [](pos)
    row, col = pos
    @board[row][col]
  end

  def []=(pos, piece)
    row, col = pos
    @board[row][col] = piece
  end

  def dup()
  end


  # def move_piece(color, start_pos, end_pos)
  # end

  def move_piece(start_pos, end_pos)
    self[end_pos] = self[start_pos]
    self[start_pos] = nil
  end

  def get_pos

  end



  def checkmate?()
  end

  def find_king(color)
  end



end
