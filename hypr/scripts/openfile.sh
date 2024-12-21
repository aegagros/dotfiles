#!/bin/bash
SCRIPTNAME=$(basename $0)
SCRIPTPATH=$(readlink -e $(dirname $0))

document=$(find ~/Projects/ ~/Documents ~/Downloads/ ~/ownCloud ~/OneDrive -type f 2>/dev/null | fzf --preview "bat {}")
if [[ $? -ne 0 ]]; then
    exit 1
fi
echo "Opening '${document}'..."
(xdg-open ${document} &)

