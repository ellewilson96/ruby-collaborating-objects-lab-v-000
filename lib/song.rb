class Song
  attr_accessor :name, :path, :artist, :filename

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist, song = filename.split(" - ")

        new_song = self.new(song)
        new_song.artist_name = artist
        new_song
  end

    def artist_name
      if self.artist != nil
        return self.artist.name
      else
        nil
      end


end
end
