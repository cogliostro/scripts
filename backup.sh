#!/bin/sh
rsync -avzr --progress --delete --exclude 'Parallels' Documents -e ssh jkr@shockwave.vanvik.org:/var/lib/backup/
rsync -avzr --progress --delete Pictures -e ssh jkr@shockwave.vanvik.org:/var/lib/backup/
rsync -avzr --progress --delete '/Users/jkr/Music/iTunes/iTunes Media/Music' -e ssh jkr@shockwave.vanvik.org:/var/lib/backup/

