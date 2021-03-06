class Artist
  attr_accessor :name
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def genres
    self.songs.collect do |song|
    song.genre
    end
  end

  def add_song(song)
    self.songs << song
    song.artist = self
  end

end
