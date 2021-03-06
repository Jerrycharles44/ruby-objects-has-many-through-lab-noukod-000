class Artist

  attr_accessor :name,:songs

  @@all=[]

  def initialize(name)
    @name=name
    @songs=[]
    @genres=[]
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name,genre)
    song = Song.new(name,self,genre)
    @songs << song
    song
  end

  def genres
    @songs.collect do |song|
      song.genre
    end
  end

end