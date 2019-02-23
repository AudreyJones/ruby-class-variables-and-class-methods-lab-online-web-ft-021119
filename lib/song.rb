class Song

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize
    attr_accessor :name, :artist, :genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

# Control for duplicates in the following class methods:
  def self.count
    @@count
  end

  def self.genres
    @@genres
  end

  def self.artists
    @@artists
  end

# We need to be able to keep track of:
# - the number of songs created
# - artists in those songs
# - genres of those songs
# - Genre Count: a hash with the number of songs in each genres
# - Artist Count: a hash with the number of songs by each artist

end

# Returns an integer!
Song.count

# Returns an array!
Song.artists

# Returns an array!
Song.genres

#Should produce a hash!
Song.genre_count

#Should produce a hash!
Song.artist_count
