class Artist
  attr_accessor :name

@@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def songs
    @songs
  end

  def self.find_or_create_by_name(name)
		@@all.each  do |artist|
			if artist.name == name
				return artist
			else
				return self.new(name)
			end
		end
	end

  def self.create(name)
    self.new(name).tap {|artist| artist.save}
  end

def print_songs
  puts self.songs
end
end
