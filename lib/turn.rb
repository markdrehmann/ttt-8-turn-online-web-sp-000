def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index, "X")
    display_board(board)
  else
    puts "Invalid move!"
    turn(board)
  end
end


def move(board, index, value = "X")
  board[index] = value
end

board = [" "," "," "," "," "," "," "," "," "]

def valid_move?(board, index)
  def position_taken?(board, index)
    if board[index] == "" || board[index] == " " || board[index] == nil
      false
    elsif board[index] == "X" || board[index] == "O"
      true
    end
  end
  if index.between?(0,8) == true && position_taken?(board, index) == false
    true
  end
end

def input_to_index(input)
  input.to_i - 1
end


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
