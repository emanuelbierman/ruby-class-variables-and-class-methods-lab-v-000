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
    @@genres.each do |genre|
      if genre in @@genre_count
        @@genre_count[genre] =+ 1
      else
        @@genre_count[genre] = 1
      end
    end
  end

  def artist_count
    @@artists.each do |artist|
      if @@artist_count.has_key?(artist)
        @@artist_count[artist] =+ 1
      else
        @@artist_count[artist] = 1
      end
    end
  end

end
