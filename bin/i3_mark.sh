#!/bin/bash

sleep .1
echo ""
echo "Set mark to?" |  pv -qL 50
echo ""
echo -n " "
read mark
i3-msg focus tiling
i3-msg mark $mark
exit
