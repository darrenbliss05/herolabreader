#!/usr/bin/env ruby
#
require 'rexml/document'
require 'zip/zip'

class Herolab

  def initialize(por_file )
     setporfile(por_file)
     read_index_file(por_file)
     get_character_files()
  end  

  def read_index_file(por_file=nil)
     setporfile(por_file) if (! por_file.nil?)
     por_file = getporfile() if (por_file.nil?)
     begin
        @index_file_xml = Zip::ZipFile.new(por_file).read("index.xml")
     rescue
        puts "Could not open file index.xml with zip file #{por_file} #{$!}"
     end
  end
#  private :read_index_file

  def read_herolab_character(filename=nil)
     por_file = getporfile
     por_file.to_s? rescue NameError 
     filename.to_s? rescue NameError 
     begin
        xml_string = Zip::ZipFile.new(por_file).read(filename)
     rescue
        puts "Could not open file #{filename} with zip file #{por_file} #{$!}"
     end
     return(xml_string)
  end

  def get_character_files()
     @character_files = {} if @character_files.nil?
     xmldoc = REXML::Document.new @index_file_xml 
     # Now get the root element
     root = xmldoc.root

     xmldoc.elements.each("*/characters/character") do |element| 
       element.elements.each("*/statblock") do |subelement|
          if (subelement.attributes["format"] == "xml") 
             charzipfile = subelement.attributes["folder"] + "/" + subelement.attributes["filename"]
             # Need to save name and file name.
             set_char_file_list(element.attributes["name"], charzipfile)
          end 
       end
           
     end 
  end
#  private :get_character_files
  #
  def setporfile(por_file)
     por_file.to_s? rescue NameError 
     @herolabporfile = por_file;
  end
  def getporfile()
     return(@herolabporfile)
  end

  def set_char_file_list(name=nil,filename=nil)
     @character_files[name] =  filename
  end
  def get_char_file_list
     # No checking yet.
     return(@character_files)
  end
end


if (__FILE__ == $0)


foo = Herolab.new("./test/portfolios/foo.por")
puts "LAST ###############------------------------------#############"
foo.get_char_file_list
end
