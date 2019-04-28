require 'pry'

class Song

attr_accessor :artist,:genre,:name
  @@genres = []
  @@count =  0
  @@artists = []

  def initialize(name,artist,genre)
    @name = name
    @genre = genre
    @artist = artist
   @@artists << @artist # => artists are being added into class variables
   @@count +=1 # => songs are being added
  @@genres << @genre
  end


  def self.count
    # .count is a class method that returns that number of songs created
    @@count

  end

  def self.artists
     @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
    if genre_count [genre]
        genre_count [genre] += 1
      else
        genre_count [genre] =1
      end
    end
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count [artist]
        artist_count [artist] += 1
      else
        artist_count [artist] =1
      end
    end
      artist_count
  end
end
