#!/bin/bash
cat ~/.cache/wal/sequences
fzf | (nohup xargs -I{} xdg-open "{}" &)

