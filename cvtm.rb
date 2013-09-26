#!/usr/bin/env ruby
# Copy/Extract video to shared directory
#
require "fileutils"
include FileUtils

unless ARGV.length == 1 
	$stderr.puts "Usage: #{__FILE__} <path to video>"
	exit 1
end

torrent = ARGV.first

`echo #{torrent} >> /home/jkr/.torrent_history`


cd('/home/jkr/Downloads/' + ARGV.first)

@cwd = "/home/media/"

def moveToVideoDir(torrent)
	
	if ( Dir['*.rar'].any? )
		file = Dir['*.rar']
		puts "Extracting #{file} to #{@cwd}"
		file.each do |fil|
			`unrar x #{fil} #{@cwd}`
		end
		logTorrent(file)
		puts "Done."
	end

	if ( Dir['*.avi'].any? )
		file = Dir['*.avi']
		puts "Copying #{file} to #{@cwd}"
		file.each do |fil|
			`cp #{fil} #{@cwd}`
		end
		logTorrent(file)
		puts "Done."
	end

	if ( Dir['*.mkv'].any? )
		file = Dir['*.mkv']
		puts "Copying #{file} to #{@cwd}"
		file.each do |fil|
			`cp #{fil} #{@cwd}`
		end
		logTorrent(file)
		puts "Done."
	end

	if ( Dir['*.mp4'].any? )
		file = Dir['*.mp4']
		puts "Copying #{file} to #{@cwd}"
		file.each do |fil|
			`cp #{fil} #{@cwd}`
		end
		logTorrent(file)
		puts "Done."
	end

end

def logTorrent(name)
	`echo #{name} >> /home/jkr/.torrent_history`
end


moveToVideoDir(torrent)
