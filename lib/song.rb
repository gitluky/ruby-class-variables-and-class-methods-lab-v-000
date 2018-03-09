class Song
  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    self.name = name
    self.artist = artist
    self.genre = genre

    @@count+=1

  end

  def self.count
    @@count
  end

  def self.artist_count
    @@artists
  end

  def self.genres
    @@genres
  end

  def self.genre_count
    genres.
  end

  def artist_count

  end



end
