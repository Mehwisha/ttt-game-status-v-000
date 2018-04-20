# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
   [0,1,2], #top_row_win
   [3,4,5], #mid_row_win
   [6,7,8], # bottom_row_win
   [0,4,8], #diagonal_forward_win
   [2,4,6], #diagonal_back_win
   [0,3,6], #vertical_win_1
   [1,4,7], #vertical_win_2
   [2,5,8] #vertical_win_3
]

def won?(board)

   WIN_COMBINATIONS.find do|win_combination|
     board[win_combination[0]] == board[win_combination[1]] && board[win_combination[1]] == board[win_combination[2]] && position_taken?(board,win_combination[0])
# since this will create new array with all (0,3,6,0,2,0,1,2) at 0 location and (1,4,7,4,4,3,4,5) at 1 location and (2,5,8,8,6,6,7,8) at 2 location
   end
 end

def full?(board) #  Select, detect, reject,find
  counter = 0
      board.select do |list|
       if list == "X" or list == "O"
end
  counter += 1
end
def draw?(board) #

end
def over?(board) #returns true if the board has been won, is a draw, or is full

end
def winner(board)
end
