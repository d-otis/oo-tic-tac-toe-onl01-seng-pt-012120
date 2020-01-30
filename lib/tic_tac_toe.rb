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
  
  def input_to_index(input)
    index = input.to_i - 1
    # binding.pry
  end
  
  def move(input_to_index, token="X")
    @board[input_to_index] = token
  end
  
  def position_taken?(input_to_index)
    @board[input_to_index] == " " ? false : true
  end
  
  def valid_move?(position)
    true if position.between?(0,9) && @board[position] == " "
  end
  
  def turn_count
    @board.count{|i| i == "X" || i == "O"}
  end
  
  def current_player
    turn_count % 2 == 0 ? "X" : "O"
  end
  
  def turn
    puts "Enter a number between 1 - 9"
    input = gets.chomp
    index = input_to_index(input)
    if valid_move?(index)
      move(index, current_player)
      display_board
    else
      turn
    end
  end
  
  def won?
    WIN_COMBINATIONS.each do |combo|
      if (@board[combo[0]] == "X" && @board[combo[1]] =="X" && @board[combo[2]] == "X") || (@board[combo[0]] == "O" && @board[combo[1]] =="O" && @board[combo[2]] == "O")
        return combo
      end
    end
    false
  end
  
  def full?
    true if @board.all? {|i| i == "X" || i == "O"}
  end

end