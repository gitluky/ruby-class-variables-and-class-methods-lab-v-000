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
    genre_count_hash = {}
    genres.each do |genre|
      if genre_count_hash.none?(genre)
        genre_count_hash[genre] = genres.count(genre)
      end
    genre_count_hash
  end

  def artist_count

  end



end
