
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  index=user_input.to_i-1
end

def move(board, index, value="X")
  board[index]=value

end

def turn(board)
  puts "Please enter 1-9:"
  user_input= gets.strip
  index=input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index, "X")
    display_board(board)
  else
    turn(board)
  end
end

def valid_move?(board, index)
  if index.between?(0,8)
    if position_taken?(board, index)
    false
      else
    true
  end
end
end

def position_taken?(board, index)
  if board[index] == " "
    false
  elsif board[index] == ""
    false
  elsif board[index] == nil
    false
  elsif board[index] == "X" or "O"
    true
  end
end
