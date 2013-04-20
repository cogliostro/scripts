#!/usr/bin/env ruby
# Copy/Extract video to shared directory
#
require "fileutils"
include FileUtils

unless ARGV.length == 1 
	$stderr.puts "Usage: #{__FILE__} <path to video>"
	exit 1
end

@torrent = ARGV.first

cd('/home/jkr/Downloads/' + ARGV.first)
pwd()

@cwd = "/home/mediatomb/"

def moveToVideoDir(torrent)
	
	if ( file = Dir['*.rar'].first)
		puts "Extracting #{file} to #{@cwd}"
		`unrar x #{file} #{@cwd}`
		logTorrent(file)
		puts "Done."
	end

	if ( file = Dir['*.avi'] )
		puts "Copying #{file} to #{@cwd}"
		file.each do |fil|
			`cp #{fil} #{cwd}`
		end
		logTorrent(file)
		puts "Done."
	end

end

def logTorrent(name)
	`echo #{name} > /home/jkr/.torrent_history`
end


moveToVideoDir(@torrent)

	
