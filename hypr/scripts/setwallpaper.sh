#!/bin/bash

CONTRAST="8.0"
SATURATION="0.5"
IMGPATH=$1
LIGHT=""
BACKEND="colorz"
THEME=$2

# function reload_spicetify_theme() {
#     local curr_theme="$(spicetify config | grep "^current_theme" | awk '{ print $2; }')"
#     if [[ -z "${curr_theme}" ]]; then
#         return
#     fi
#     echo "Current spicetify theme is: ${curr_theme}"
#     local colorscheme_path="${HOME}/.config/spicetify/Themes/${curr_theme}/color.ini"
#     local linenum=$(cat "${colorscheme_path}" | grep -nsh '^\[pywal\]' | awk -F':' '{ print $1; }')
#     echo "Existing pywal colorscheme definition found at line: ${linenum}"
#     if [[ ! -z "${linenum}" ]]; then
#         sed -i "${linenum},$ d" "${colorscheme_path}"
#     fi
#     echo -e "\n\n[pywal]" >> ${colorscheme_path}
#     cat ~/.cache/wal/colors-spicetify.ini >> ${colorscheme_path}
#     spicetify apply 
# }

ln -sf "${IMGPATH}" ~/.wallpaper

if [[ ! -z "${THEME}" ]]; then
    APPLY="--theme ${THEME}"
else
    APPLY="-i ${IMGPATH}"
fi

wal --cols16 \
    ${LIGHT} \
    --backend ${BACKEND} \
    --saturate ${SATURATION} \
    --contrast ${CONTRAST} \
    -n \
    ${APPLY}

swww img "${IMGPATH}"
# reload services
pkill -SIGUSR2 waybar
dunstctl reload
# reload_spicetify_theme
# pywalfox update

