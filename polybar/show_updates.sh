#!/bin/sh

((checkupdates | awk '{print $1"\n"$2"\n"$4}') && \
    (cower -u | awk '{print $2"\n"$3"\n"$5}')) | \
    zenity --list --column="Package" --column="Current" --column="New"
