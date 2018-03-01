class Song
  attr_accessor :name, :path, :artist, :filename

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist, song = filename.split(" - ")
    
  end

    def artist_name
      if self.artist != nil
        return self.artist.name
      else
        nil
      end


end
end
