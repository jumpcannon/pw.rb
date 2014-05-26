#!/usr/bin/env ruby

# Creates a password, per https://xkcd.com/936/
# usage: pw.rb

puts File.readlines('/usr/share/dict/words').map { |line| line.rstrip }.select { |line| (line =~ /^[a-z]+$/) && (2 < line.length) && (line.length < 8)}.sample(4).join(" ")
