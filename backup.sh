#!/bin/sh
rsync -avzr --progress --delete --exclude 'Virtual Machines.localized' '/Users/jkr/Documents' -e ssh jkr@shockwave.vanvik.org:/var/lib/backup/
rsync -avzr --progress --delete '/Users/jkr/Pictures' -e ssh jkr@shockwave.vanvik.org:/var/lib/backup/
rsync -avzr --progress --delete '/Users/jkr/Music/iTunes/iTunes Media/Music' -e ssh jkr@shockwave.vanvik.org:/var/lib/backup/

