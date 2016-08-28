#!/usr/bin/env ruby
#
require_relative './lib/pathfinder'


foo = Pathfinder.new("./test/portfolios/foo.por")
foo.simpletest

print "\n\n"
puts "Running Rspec"
system "rspec spec/*"
