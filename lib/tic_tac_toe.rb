require "pry"

class TicTacToe
  
    WIN_COMBINATIONS = [
    [0,1,2], # Top row
    [3,4,5], # Middle Row
    [6,7,8], # Bottom Row
    # # #
    [0,3,6], # Left Column
    [1,4,7], # Middle Column
    [2,5,8], # Right Column
    # # #
    [0,4,8], # Left diagonal
    [2,4,6]  # Right Diagonal
  ]
  
  def initialize
    @board = Array.new(9, " ")
  end
  
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

end