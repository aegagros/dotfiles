#!/bin/bash
(alacritty --class='overlay-term' --option 'window.padding.x=128' --option 'window.padding.y=128' --option 'font.size=15' -e "$@" &)
