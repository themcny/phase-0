# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [3] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# initialize the bingo board

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # number = random number between 1 and 100 (100 not inclusive)
  # letter = letter from the array [b,i,n,g,o] at a random index (between 0 and 4)

# Check the called column for the number called.
  # Access each row in that column
  # IF the item in that row & column is equal to the number THEN
  # RETURN true

# If the number is in the column, replace with an 'x'
  # IF check method returns true THEN
  # set item in row and column equal to string 'x'

# Display a column to the console
  # why?

# Display the board to the console (prettily)
  # every element of the array 'bingo_board' needs to be the same length
  # pad the elements (either numbers or x's) if they're not long enough


# Initial Solution

=begin
class BingoBoard

  def initialize(board)
    @bingo_board = board
    @letter = ['b','i','n','g','o']
  end

  def call
    @num_call = rand(1..100)
    @let_call = @letter[rand(0...@letter.length)]
    # p "#{@let_call} #{@num_call}"
    # return a letter and a number
    p @bingo_board[0]
    p @bingo_board[1]
    p @bingo_board[2]
    p @bingo_board[3]
    p @bingo_board[4]
  end

  def check
    # replace the number with a string if the number is present
    # does not replace anything if the number is not present
    (0...5).each do |i|
      row = @bingo_board[i]
      there = row.find_index { |x| x == @num_call }
      if there != nil
        row[there] = "x"
      end
    end
    p @bingo_board[0]
    p @bingo_board[1]
    p @bingo_board[2]
    p @bingo_board[3]
    p @bingo_board[4]
  end

end
=end


# Refactored Solution

class BingoBoard

  def initialize
    @bingo_board = Array.new(5){Array.new(5)}
    @string_board = Array.new(5){Array.new(5)}
    @letter = ['b','i','n','g','o']
    fill_board
  end

  def fill_board
    lo, hi = 1, 15
    (0..4).each do |inner|
      (0..4).each do |outer|
        @bingo_board[outer][inner] = rand(lo..hi)
      end
      lo += 15
      hi += 15
    end
    @bingo_board[2][2] = "FREE"
    puts
    puts
    puts "New Bingo Board"
    print_board
  end

  def call
    @num_call = rand(1..100)
    @let_call = @letter[rand(0...@letter.length)]
    puts
    puts
    puts
    p "Bingo Ball Call: #{@let_call} #{@num_call}"
  end

  def check
    (0...5).each do |i|
      row = @bingo_board[i]
      there = row.find_index { |x| x == @num_call }
      if there != nil
        row[there] = "X"
      end
    end
    @bingo_board[2][2] = "X"
    puts
    puts
    puts "Current Bingo Board"
    puts
    print_board
  end

  def print_board
    (0..4).each do |x|
      (0..4).each do |i|
        @string_board[i][x] = @bingo_board[i][x].to_s
        if @string_board[i][x].length < 2
          @string_board[i][x] = " " + @string_board[i][x]
        end
      end
      p @string_board[x]
    end
  end

  def bingo?
    flat_board = @bingo_board.flatten
    xs_index = flat_board.each_index.select{ |index| flat_board[index] == 'X'}
    if ([0,1,2,3,4]-xs_index).empty? || ([5,6,7,8,9]-xs_index).empty? || ([10,11,12,13,14]-xs_index).empty? || ([15,16,17,18,19]-xs_index).empty? || ([20,21,22,23,24]-xs_index).empty?
      true
    elsif ([0,5,10,15,20]-xs_index).empty? || ([1,6,11,16,21]-xs_index).empty? || ([2,7,12,17,22]-xs_index).empty? || ([3,8,13,18,23]-xs_index).empty? || ([4,9,14,19,24]-xs_index).empty?
      true
    elsif ([4,8,12,16,20]-xs_index).empty? || ([0,6,12,18,24]-xs_index).empty?
      true
    else
      false
    end
  end

end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE

#board = [[47, 44, 71, 8, 88],
#        [22, 69, 75, 65, 73],
#        [83, 85, 97, 89, 57],
#        [25, 31, 96, 68, 51],
#        [75, 70, 54, 80, 83]]

#new_game = BingoBoard.new(board)

#p new_game.call
#p new_game.check
#p board


new_game = BingoBoard.new

for i in 0..30
  new_game.call
  new_game.check
end

p new_game.bingo?


#Reflection

=begin

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

I really dislike pseduocoding before I code. It doesn't really help me. I'd rather comment
my code as I write it because when I pseudocode I get too into making it perfect and 
accurate. This pseduocoding style didn't help me break down the challenge into the parts
I wanted. It made more sense to me to combine the check and replace methods since by checking
each item to see if it matches the called number, we're already accessing that item so 
changing it after it's been checked seems more efficient. 


What are the benefits of using a class for this challenge?

It's easier to pass variables and data from one method to another. The class also allows
multiple boards to be made and played (rather than just doing one at a time).


How can you access coordinates in a nested array?

By using square brackets to access the outer array first and then the inner array.
E.g. multi_array[outer_array_index][inner_array_index] = element


What methods did you use to access and modify the array?

I used two each loops (one nested in the other) in order to access each item. 
The first each loop accessed the row and the second accessed the column.


How did you determine what should be an instance variable versus a local variable?

If I wanted to use it over multiple methods within the class I used an instance variable.
However, if I only wanted to use it within that particular method, I used a local variable.


What do you feel is most improved in your refactored solution?

I created a print method so that it wouldn't clutter the other methods. I also created a 
method to check if the board had made 'bingo' yet.

=end