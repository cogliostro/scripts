#!/usr/bin/env ruby
# Copy/Extract video to shared directory


unless ARGV.length == 1 
	$stderr.puts "Usage: #{__FILE__} <path to video>"
	exit 1
end

torrent = ARGV.first
cwd = '/home/jkr/test/'

def moveToVideoDir(torrent)
	
	if ( torrent =~ /rar/ )
		Open3.popen3('unrar x *.rar')
		puts "Extracted #{torrent} to #{cwd}"
	end

	if ( torrent =~ /mkv/ )
		Open3.popen3('mv *.mkv #{cwd}')
		puts "Moved #{torrent} to #{cwd}"
	end

end


moveToVideoDir(torrent)

	
