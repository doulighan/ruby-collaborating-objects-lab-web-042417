class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def self.find_or_create_by_name(name)
    artist = @@all.find { |a| a.name == name }
    artist ? artist : self.new(name)
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def print_songs
    @songs.each {|s| puts s.name }
  end


end 