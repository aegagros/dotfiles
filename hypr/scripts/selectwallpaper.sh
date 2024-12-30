#!/bin/bash

find ~/ownCloud/Wallpapers/ -type f | imv | xargs -L1 swww img --transition-type=wipe
