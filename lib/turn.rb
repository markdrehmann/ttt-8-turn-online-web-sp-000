def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip.to_i
  def input_to_index(input)
    index = input - 1
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
    else
      false
    end
  end

end


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
