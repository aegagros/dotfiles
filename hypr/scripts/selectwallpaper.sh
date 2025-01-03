#!/bin/bash
EXEPATH=$(dirname $0)

find ~/ownCloud/Wallpapers/ -type f | imv | xargs -L1 "${EXEPATH}/setwallpaper.sh"
