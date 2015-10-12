# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here

# Check the called column for the number called.
  #fill in the outline here

# If the number is in the column, replace with an 'x'
  #fill in the outline here

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @letter = ['b','i','n','g','o']
  end

  def call()
    @num_call = rand(1..100)
    @let_call = @letter[rand(0...@letter.length)]
    # return a letter and a number
  end

  def check()
    # replace the number with a string if the number is present
    # does not replace anything if the number is not present
    col = @letter.index(@let_call)
    row = [(0...5)]
    row.each do |row|
      if @num_call == @bingo_board[row][col] #check the entire column
        @bingo_board[row][col] = 'x' #something is wrong
      end
    end
  end

end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

p new_game.call
p new_game.check
p board

#Reflection
=begin

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?




What are the benefits of using a class for this challenge?




How can you access coordinates in a nested array?




What methods did you use to access and modify the array?




How did you determine what should be an instance variable versus a local variable?




What do you feel is most improved in your refactored solution?

=end