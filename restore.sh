#!/bin/sh
rsync -ave 'ssh' shockwave.vanvik.org:/var/lib/backup/Pictures/ /Users/jkr/Pictures/
rsync -ave 'ssh' shockwave.vanvik.org:/var/lib/backup/Music/ '/Users/jkr/Music/iTunes/iTunes Media/Music/'
rsync -ave 'ssh' shockwave.vanvik.org:/var/lib/backup/Documents/ /Users/jkr/Documents/
