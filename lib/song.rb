class Song 
  attr_accessor :name, :artist, :genre
  
  @@all = []
  
  def initialize(name, artist = nil, genre = nil)
    @name = name 
    unless artist == nil
      artist=(artist)
      genre=(genre)
    end
  end 
  
  def genre=(genre)
    @genre = genre
    unless genre.songs.include?(self)
      genre.songs << self
    end
  end
  
  def artist=(artist)
    @artist = artist
    unless artist.songs.include?(self)
      artist.songs << self
    end
  end
  
  # def artist 
  #   @artist 
  # end
  
  # def genre 
  #   @genre 
  # end

  def self.all 
    @@all
  end 
  
  def save 
    @@all << self 
  end 
  
  def self.destroy_all
    @@all.clear
  end 
  
  def self.create(name)
    song = Song.new(name)
    song.save
    song
  end
  
end