#!/bin/bash

dsktp app ls | fzf | xargs -I{} dsktp app exec "{}"

