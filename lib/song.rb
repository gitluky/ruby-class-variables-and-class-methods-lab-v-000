class Song
  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    self.name = name
    self.artist = artist
    self.genre = genre

    @@artists << artist
    @@genres << genre
    @@count+=1

  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.item_count(items)
    count_hash = {}
    items.each do |item|
      if count_hash.none?(item)
        count_hash[item] = items.count(item)
      end
    end
    count_hash
  end

  def self.genre_count
    self.item_count(genres)
  end

  def self.artist_count
    self.item_count(artists)
  end



end
