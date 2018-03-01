require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect {|f| f.gsub("./spec/fixtures/mp3s/", "")}
end

  def import
    @files.each do {|f| Song.new_by_filename(f)}
end
end
