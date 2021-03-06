require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []


  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

# Control for duplicates in the following class methods:
  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count.keys.include?(genre)
          genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count.keys.include?(artist)
          artist_count[artist] += 1
      else
        artist_count[artist] = 1
      end
    end
    artist_count
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
