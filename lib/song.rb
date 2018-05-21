class Song
  attr_accessor :name, :artist, :genre, :count

  @@artists = []
  @@genres = []
  @@count = 0
  @@artist_count = {}
  @@genre_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count =+ 1
    @@artists << artist
    @@genres << genre
  end

  def count
    @@count
  end

  def artists
    @@artists.uniq
  end

  def genres
    @@genres.uniq
  end

  def genre_count

  end

  def artist_count

  end

end
