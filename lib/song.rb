
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []


  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists = @@artists.uniq
    @@artists
  end

  def self.genres
    @@genres = @@genres.uniq
    @@genres
  end

  def self.genre_count
      genre_count = {}
    @@genres.each do |genre|
      genre_count[genre] += 1
    end
    genre_count
  end
end
