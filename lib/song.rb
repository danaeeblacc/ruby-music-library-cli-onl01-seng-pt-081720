require 'pry'

class song
  attr_accessor : name, :artist, :genre, :musicimporter, :musiclibrarycontroller
  extend Concerns::Findable
  
  @@all=[]
  
  def initialize(name, artist=nil, genre=nil)
    @name = name
    self.artist=(artist) if artist !=nil
    self.genre=(genre) if genre != nil
  end
  
  de self.all
    @@all
  end
  
  delf self.destroy_all
    @@LL.clear
  end
  
  def save
    @@all << self
  end
  
  def self.create(song)
    song = self.new(song)
    song.save
    song
  end
  
  def artist
    @artist
  end
  
  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end
  
  def genre 
    @genre
  end
  
  
  