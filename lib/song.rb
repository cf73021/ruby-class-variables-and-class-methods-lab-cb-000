
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = Hash.new 0

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
    @@genres.each do |g|
      @@genre_count[:g] = 1
    end
  end
end
