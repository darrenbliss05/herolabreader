#!/usr/bin/env ruby
#
require 'rexml/document'
require_relative 'herolab'

class Pathfinder < Herolab
  def initialize(por_file)
     setporfile(por_file)
     read_index_file()
     get_character_files()

  end
   def simpletest
     puts "Called Method #{__method__} ---  #{__FILE__} #{__LINE__} #{__dir__} "
     puts "herolab POR file is #{getporfile()}"
      get_char_file_list().each do |name,filename|
         puts "Characater name = #{name} ; filename = #{filename}"
     end
     #puts get_char_file_list()
   end


   def parse_charinfo()
   end
   def parse_languages()
   end
   def parse_saves()
   end
   def parse_attributes()
   end
   def parse_skills()
   end
   def parse_weapons()
   end
   def parse_gear()
   end
end

#
if (__FILE__ == $0)

foo = Pathfinder.new("./test/portfolios/foo.por")
foo.simpletest
end

