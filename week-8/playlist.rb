# Create a Playlist from Driver Code

# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.


# Pseudocode



# Initial Solution

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


# Refactored Solution






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