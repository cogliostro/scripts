#!/usr/bin/env ruby
# Copy/Extract video to shared directory
#
require "fileutils"
include FileUtils

unless ARGV.length == 1 
	$stderr.puts "Usage: #{__FILE__} <path to video>"
	exit 1
end

cd('/home/jkr/Downloads/' + ARGV.first)
pwd()

@cwd = "/home/mediatomb/"

def moveToVideoDir(torrent)
	
	if ( file = Dir['*.rar'])
		`unrar x #{file} #{@cwd}`
		puts "Extracted #{file} to #{@cwd}"
	end

end


moveToVideoDir(@torrent)

	
