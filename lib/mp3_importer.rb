require_relative "./song.rb"
class MP3Importer
attr_accessor :path
@@filenames = []

  def initialize(path)
    @path = path
    @@filenames = []
    
  end
  
  #def files
  #  allfiles = Dir.entries(@path)
 #   allfiles.each do |file|
 #      if file.end_with? '.mp3'
 #        @@filenames << file
  #     end
  #   end
  #  @@filenames
 # end
  
  def files
    allfiles = Dir.glob("#{path}/*.mp3").collect {|file| file.gsub()}
    
   
    @@filenames
  end

 

  def import
    @@filenames.each {|file| Song.new_by_filename(file)}
  end
  
end



