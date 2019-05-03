class Genre

  attr_reader :songs
  attr_accessor :name

  @@all=[]

  def initialize(name)
    @name=name
    @@all << self
    @songs=[]
    @artists=[]
  end

  def songs=(song)
    @songs << song
  end

  def artists
    @songs.collect do |song|
      song.artist
    end
  end

end