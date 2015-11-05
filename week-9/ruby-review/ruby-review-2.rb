# Create a Playlist from Driver Code

# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.


# Pseudocode

=begin

A Class Song with inputs of song (string) and artist (string)

  A method play
  Tells the user what song is playing and then plays the song for a while

A Class Playlist with inputs of song (however many songs)
  
  A variable list that stores the array of songs

  A function add that adds songs to the list (array) of all the songs

  A function num_of_tracks that outputs the number of songs in the list

  A function remove that deletes a selected song

  A function includes that tells the user if the song is in the playlist

  A function play all that plays all the songs in the list

  A function display that displays the playlsit in its entirety
  
=end


# Initial Solution
=begin
class Song
  attr_reader :song, :artist
  def initialize(song, artist)
    @song = song
    @artist = artist
  end

  def play    
    puts "Now Playing: #{@song} by #{@artist}"
    sleep(1)
  end
end

class Playlist
  def initialize(*songs)
    @list = songs
  end

  def add(*more_songs)
    s = more_songs
    for i in 0...s.length
      @list.push(s[i])  
    end
  end

  def num_of_tracks
    @list.length
  end

  def remove(song_var)
    @list.delete(song_var)
  end

  def includes?(song_var)
    for i in 0...@list.length
      if @list[i] == song_var
        inc = true
        break        
      else
         inc = false
      end
    end
    return inc
  end

  def play_all
    for i in 0...@list.length
      @list[i].play
    end
  end

  def display
    for i in 0...@list.length
      puts @list[i].song + " by " + @list[i].artist
    end
  end
end
=end


# Refactored Solution

class Song
  attr_reader :song, :artist
  def initialize(song, artist)
    @song = song
    @artist = artist
  end

  def play    
    puts "Now Playing: #{@song} by #{@artist}"
    sleep(1)
  end
end

class Playlist
  def initialize(*songs)
    @list = songs
  end

  def add(*more_songs)
    s = more_songs
    for i in 0...s.length
      @list << s[i]  
    end
  end

  def num_of_tracks
    @list.length
  end

  def remove(song_var)
    @list.delete(song_var)
  end

  def includes?(song_var)
    for i in 0...@list.length
      if @list[i] == song_var
        inc = true
        break        
      else
         inc = false
      end
    end
    return inc
  end

  def play_all
    @list.each_index {|index| @list[index].play}
  end

  def display
    @list.each {|item| puts item.song + " by " + item.artist}
  end
end



# DRIVER CODE AND TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")

my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)

lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

my_playlist.add(lying_from_you, angels)

p my_playlist.num_of_tracks == 5
going_under.play #How would you model a song getting "played" in Ruby? I used `puts` and `sleep`. You can model this however you want.
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true


my_playlist.play_all
my_playlist.display





# Reflection
=begin
What concepts did you review in this challenge?

Class creation and user story driven programming. It was good practice in calling another
classes' method within a different classes' method. It was also good practice in working
with arrays made up of instances of a class.


What is still confusing to you about Ruby?

This was fairly straightforward. It was a good review in getting methods in different classes
to interact with each other.


What are you going to study to get more prepared for Phase 1?

I'll try to get more practice with inheritance and using the super method. 



=end